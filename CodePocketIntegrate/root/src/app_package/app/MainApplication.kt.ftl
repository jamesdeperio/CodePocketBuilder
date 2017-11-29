package ${packageName}.business.app

import dagger.android.AndroidInjector
import dagger.android.support.DaggerApplication
import ${packageName}.business.component.DaggerAppComponent

/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
class MainApplication: DaggerApplication() {
    override fun applicationInjector(): AndroidInjector<out DaggerApplication>
            =DaggerAppComponent.builder().application(this).build()
}
