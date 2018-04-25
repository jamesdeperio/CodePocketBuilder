/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.base

import android.annotation.SuppressLint
import android.os.Bundle
import butterknife.Unbinder
import dagger.android.AndroidInjection
import dagger.android.AndroidInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasFragmentInjector
import dagger.android.support.HasSupportFragmentInjector
import jdp.pocketlib.base.BaseActivity
import javax.inject.Inject
import android.app.Fragment
import android.support.v4.app.Fragment as SupportFragment

abstract class DIBaseActivity : BaseActivity(), HasFragmentInjector, HasSupportFragmentInjector {
    @field:[Inject] internal lateinit var supportFragmentInjector: DispatchingAndroidInjector<SupportFragment>
    @field:[Inject] internal lateinit var frameworkFragmentInjector: DispatchingAndroidInjector<Fragment>
    val binder = HashSet<Unbinder>()

    @SuppressLint("MissingSuperCall")
    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
    }

    override fun onDestroy() {
        super.onDestroy()
        binder.forEach {  it.unbind() }
    }

    override fun supportFragmentInjector(): AndroidInjector<SupportFragment> = supportFragmentInjector
    override fun fragmentInjector(): AndroidInjector<Fragment> = frameworkFragmentInjector
}