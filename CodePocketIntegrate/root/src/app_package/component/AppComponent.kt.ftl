package ${packageName}.business.component

import android.app.Application
import dagger.BindsInstance
import dagger.Component
import dagger.android.AndroidInjector
import dagger.android.support.AndroidSupportInjectionModule
import dagger.android.support.DaggerApplication
import ${packageName}.business.module.app.ActivityBindingModule
import ${packageName}.business.module.app.ApplicationBindingModule
import ${packageName}.business.module.app.FragmentBindingModule
import ${packageName}.business.scope.ApplicationScope
/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
@ApplicationScope
@Component(modules = arrayOf(
        AndroidSupportInjectionModule::class,
        ApplicationBindingModule::class,
        ActivityBindingModule::class,
        FragmentBindingModule::class))
interface AppComponent : AndroidInjector<DaggerApplication> {
    override fun inject(instance: DaggerApplication?)
     @Component.Builder
       interface Builder {
           @BindsInstance
           fun application(application: Application): AppComponent.Builder
           fun build(): AppComponent
       }
}
