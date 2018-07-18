/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.base

import android.os.Bundle
import android.support.v4.app.Fragment as SupportFragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import dagger.android.AndroidInjector
import dagger.android.DispatchingAndroidInjector
import dagger.android.support.AndroidSupportInjection
import dagger.android.support.HasSupportFragmentInjector
import jdp.pocketlib.base.BaseFragment
import javax.inject.Inject


abstract class DIBaseFragment : BaseFragment(), HasSupportFragmentInjector {
    @field:[Inject] internal lateinit var childFragmentInjector: DispatchingAndroidInjector<SupportFragment>
    lateinit var container: ViewGroup

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        this.container= container!!
        AndroidSupportInjection.inject(this)
        return super.onCreateView(inflater, container, savedInstanceState)
    }

    override fun supportFragmentInjector(): AndroidInjector<SupportFragment> = childFragmentInjector
}