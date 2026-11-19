#include "RNAppUpgradePackage.h"
#include "RNAppUpgradeSpec.h"

using namespace rnoh;
using namespace facebook;

class RNAppUpgradePackageFactoryDelegate : public TurboModuleFactoryDelegate {
    
    public:
    SharedTurboModule createTurboModule(Context ctx, const std::string &name) const override {
        if (name == "upgrade") {
            return std::make_shared<RNAppUpgradePackageSpecJSI>(ctx, name);
        }
        return nullptr;
    };
};

std::unique_ptr<TurboModuleFactoryDelegate> RNAppUpgradePackage::createTurboModuleFactoryDelegate() {
    return std::make_unique<RNAppUpgradePackageFactoryDelegate>();
}


