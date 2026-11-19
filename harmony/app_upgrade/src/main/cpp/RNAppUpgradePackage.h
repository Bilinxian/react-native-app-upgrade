#pragma once

#include "RNOH/Package.h"
namespace rnoh {
    class RNAppUpgradePackage : public Package {
    public:
        RNAppUpgradePackage(Package::Context ctx) : Package(ctx) {}
        std::unique_ptr<TurboModuleFactoryDelegate> createTurboModuleFactoryDelegate()
        override;
    };
} // namespace rnoh
