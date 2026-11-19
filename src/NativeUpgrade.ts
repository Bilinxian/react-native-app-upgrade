import {TurboModule, TurboModuleRegistry} from 'react-native';

export interface Spec extends TurboModule {
  checkUpgrade(): Promise<boolean>
  startUpgrade(): Promise<boolean>
}

export default TurboModuleRegistry.getEnforcing<Spec>('RNUpgrade');