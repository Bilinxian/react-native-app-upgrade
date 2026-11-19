import {TurboModule, TurboModuleRegistry} from 'react-native';

type LATER_VERSION_EXIST = 1
type LATER_VERSION_NOT_EXIST = 0
type updateAvailable = LATER_VERSION_NOT_EXIST | LATER_VERSION_EXIST
type SHOW_DIALOG_SUCCESS = 0
type SHOW_DIALOG_FAILURE = 1
type CheckUpdateResult = {
  updateAvailable: updateAvailable
  versionName: string
  versionCode: number
}

export interface Spec extends TurboModule {
  checkUpgrade(): Promise<CheckUpdateResult>

  startUpgrade(): Promise<SHOW_DIALOG_SUCCESS | SHOW_DIALOG_FAILURE>
}

export default TurboModuleRegistry.getEnforcing<Spec>('upgrade');