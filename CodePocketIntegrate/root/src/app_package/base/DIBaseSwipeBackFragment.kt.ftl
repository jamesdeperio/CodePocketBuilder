package ${packageName}.presentation.base

import android.content.Context
import android.support.v4.app.Fragment
import dagger.android.AndroidInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.support.AndroidSupportInjection
import dagger.android.support.HasSupportFragmentInjector
import jamesdeperio.github.com.codepocket.base.SwipeBackBaseFragment
import javax.inject.Inject


abstract class DIBaseSwipeBackFragment : SwipeBackBaseFragment(), HasSupportFragmentInjector {

    @Inject internal lateinit var childFragmentInjector: DispatchingAndroidInjector<Fragment>

    override fun onAttach(context: Context?) {
        AndroidSupportInjection.inject(this)
        super.onAttach(context)
    }

    override fun supportFragmentInjector(): AndroidInjector<Fragment> = childFragmentInjector
}