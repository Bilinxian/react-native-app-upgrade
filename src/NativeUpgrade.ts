import {TurboModule, TurboModuleRegistry} from 'react-native';

type LATER_VERSION_EXIST = 1
type LATER_VERSION_NOT_EXIST = 0
type updateAvailable = LATER_VERSION_NOT_EXIST | LATER_VERSION_EXIST

type CheckUpdateResult = {
  updateAvailable: updateAvailable
  versionName: string
  versionCode: number
}

export interface Spec extends TurboModule {
  checkUpgrade(): Promise<CheckUpdateResult>

  startUpgrade(): Promise<boolean>
}

export default TurboModuleRegistry.getEnforcing<Spec>('RNUpgrade');