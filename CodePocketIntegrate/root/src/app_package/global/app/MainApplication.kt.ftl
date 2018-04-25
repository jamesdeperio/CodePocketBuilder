/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */

package ${packageName}.global.app

import dagger.android.AndroidInjector
import dagger.android.support.DaggerApplication
import android.content.Context
import android.support.multidex.MultiDex

class MainApplication: DaggerApplication() {
    override fun applicationInjector(): AndroidInjector<out DaggerApplication>
            =DaggerAppComponent.builder().application(this).build()

    override fun attachBaseContext(base: Context?) {
        super.attachBaseContext(base)
        MultiDex.install(base)
    }

}
