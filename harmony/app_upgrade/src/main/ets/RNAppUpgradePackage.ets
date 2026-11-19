import { RNPackage, TurboModulesFactory, } from "@rnoh/react-native-openharmony/ts";
import type { TurboModule, TurboModuleContext, } from "@rnoh/react-native-openharmony/ts";
import { RNAppUpgradeTurboModule } from "./RNAppUpgradeTurboModule";

class RNAppUpgradePackageFactory extends TurboModulesFactory {
  createTurboModule(name: string): TurboModule | null {
    if (name === "RNUpgrade") {
      return new RNAppUpgradeTurboModule(this.ctx);
    }
    return null;
  }

  hasTurboModule(name: string): boolean {
    return name === "RNUpgrade";
  }
}

export class RNAppUpgradePackage extends RNPackage {
  createTurboModulesFactory(ctx: TurboModuleContext): TurboModulesFactory {
    return new RNAppUpgradePackageFactory(ctx);
  }
}
