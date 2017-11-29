package ${packageName}.presentation.base

import android.annotation.SuppressLint
import android.os.Bundle
import android.support.v4.app.Fragment
import dagger.android.AndroidInjection
import dagger.android.AndroidInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.HasFragmentInjector
import dagger.android.support.HasSupportFragmentInjector
import jamesdeperio.github.com.codepocket.base.BaseActivity
import javax.inject.Inject

abstract class DIBaseActivity : BaseActivity(), HasFragmentInjector, HasSupportFragmentInjector {
    @Inject
    internal lateinit var supportFragmentInjector: DispatchingAndroidInjector<Fragment>
    @Inject
    internal lateinit var frameworkFragmentInjector: DispatchingAndroidInjector<android.app.Fragment>

    @SuppressLint("MissingSuperCall")
    override fun onCreate(savedInstanceState: Bundle?) {
        AndroidInjection.inject(this)
        super.onCreate(savedInstanceState)
    }

    override fun supportFragmentInjector(): AndroidInjector<Fragment> = supportFragmentInjector
    override fun fragmentInjector(): AndroidInjector<android.app.Fragment> = frameworkFragmentInjector

}