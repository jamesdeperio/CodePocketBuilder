/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.module.appconfig

import dagger.Module
import dagger.android.support.AndroidSupportInjectionModule

@Module(includes = [AndroidSupportInjectionModule::class])
abstract class BroadcastReceiverBindingModule {
//todo
  /*
    @BroadcastReceiverScope
    @ContributesAndroidInjector(modules = [SampleModule::class])
    internal abstract fun sampleInjector(): SampleController
*/
}