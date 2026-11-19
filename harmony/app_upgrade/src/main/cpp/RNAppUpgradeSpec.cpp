//
// Created on 2024/11/12.
//
// Node APIs are not fully supported. To solve the compilation error of the interface cannot be found,
// please include "napi/native_api.h".

// NOTE: This entire file should be codegen'ed.

#include "RNAppUpgradeSpec.h"

using namespace rnoh;
using namespace facebook;

static jsi::Value __hostFunction_RNAppUpgradeCxxModuleSpecJSI_checkUpgrade(jsi::Runtime &rt,
                                                                              react::TurboModule &turboModule,
                                                                              const jsi::Value *args, size_t count) {
    return jsi::Value(static_cast<ArkTSTurboModule &>(turboModule).callAsync(rt, "checkUpgrade", args, count));
}

static jsi::Value __hostFunction_RNAppUpgradeCxxModuleSpecJSI_startUpgrade(jsi::Runtime &rt,
                                                                               react::TurboModule &turboModule,
                                                                               const jsi::Value *args, size_t count) {
    return jsi::Value(static_cast<ArkTSTurboModule &>(turboModule).callAsync(rt, "startUpgrade", args, count));
}


RNAppUpgradePackageSpecJSI::RNAppUpgradePackageSpecJSI(const ArkTSTurboModule::Context ctx, const std::string name)
    : ArkTSTurboModule(ctx, name) {
    methodMap_["checkUpgrade"] = MethodMetadata{0, __hostFunction_RNAppUpgradeCxxModuleSpecJSI_checkUpgrade};
    methodMap_["startUpgrade"] = MethodMetadata{0, __hostFunction_RNAppUpgradeCxxModuleSpecJSI_startUpgrade};
   

}