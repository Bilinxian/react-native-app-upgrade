import { TurboModule, TurboModuleContext, } from "@rnoh/react-native-openharmony/ts";
import { updateManager } from "@kit.AppGalleryKit";
import { common } from "@kit.AbilityKit";

export class RNAppUpgradeTurboModule extends TurboModule {
  protected ctx: TurboModuleContext;

  constructor(ctx: TurboModuleContext) {
    super(ctx);
    this.ctx = ctx;
  }

  async checkUpgrade(): Promise<boolean> {
    try {
      const checkResult: updateManager.CheckUpdateResult =
        await updateManager.checkAppUpdate(this.ctx.getUIContext()?.getHostContext() as common.UIAbilityContext)
      return checkResult.updateAvailable === updateManager.UpdateAvailableCode.LATER_VERSION_EXIST
    } catch (e) {
      return false
    }
  }

  async startUpgrade(): Promise<boolean> {
    try {
      const resultCode: updateManager.ShowUpdateResultCode =
        await updateManager.showUpdateDialog(this.ctx.getUIContext()?.getHostContext() as common.UIAbilityContext)
      return resultCode === updateManager.ShowUpdateResultCode.SHOW_DIALOG_SUCCESS
    } catch (e) {
      return false
    }
  }
}