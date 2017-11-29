package ${packageName}.business.module.app

import dagger.Module
import dagger.android.support.AndroidSupportInjectionModule

/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
@Module(includes = arrayOf(AndroidSupportInjectionModule::class))
abstract class ActivityBindingModule {
//todo
  /*
    @ActivityScope
    @ContributesAndroidInjector(modules = arrayOf(SampleModule::class))
    internal abstract fun sampleInjector(): SampleController
*/
}