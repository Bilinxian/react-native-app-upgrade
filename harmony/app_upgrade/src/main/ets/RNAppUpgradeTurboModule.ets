import { TurboModule, TurboModuleContext, } from "@rnoh/react-native-openharmony/ts";
import { updateManager } from "@kit.AppGalleryKit";
import { common } from "@kit.AbilityKit";

export class RNAppUpgradeTurboModule extends TurboModule {
  protected ctx: TurboModuleContext;

  constructor(ctx: TurboModuleContext) {
    super(ctx);
    this.ctx = ctx;
  }

  async checkUpgrade(): Promise<updateManager.CheckUpdateResult> {
    try {
      const checkResult: updateManager.CheckUpdateResult =
        await updateManager.checkAppUpdate(this.ctx.getUIContext()?.getHostContext() as common.UIAbilityContext)
      return checkResult
    } catch (e) {
      return {updateAvailable: updateManager.UpdateAvailableCode.LATER_VERSION_EXIST, versionName: '', versionCode: 0}
    }
  }

  async startUpgrade(): Promise<updateManager.ShowUpdateResultCode> {
    try {
      const resultCode: updateManager.ShowUpdateResultCode =
        await updateManager.showUpdateDialog(this.ctx.getUIContext()?.getHostContext() as common.UIAbilityContext)
      return resultCode
    } catch (e) {
      return updateManager.ShowUpdateResultCode.SHOW_DIALOG_FAILURE
    }
  }
}