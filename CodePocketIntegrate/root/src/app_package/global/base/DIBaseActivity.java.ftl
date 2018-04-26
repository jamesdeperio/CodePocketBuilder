/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.base;

import android.annotation.SuppressLint;
import android.os.Bundle;
import butterknife.Unbinder;
import dagger.android.AndroidInjection;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasFragmentInjector;
import dagger.android.support.HasSupportFragmentInjector;
import jdp.pocketlib.base.BaseActivity;
import javax.inject.Inject;
import android.app.Fragment;
import java.util.HashSet;

public abstract class DIBaseActivity extends BaseActivity implements HasFragmentInjector, HasSupportFragmentInjector {
    @Inject  DispatchingAndroidInjector<android.support.v4.app.Fragment> supportFragmentInjector;
    @Inject  DispatchingAndroidInjector<Fragment> frameworkFragmentInjector;
    public HashSet<Unbinder> binder= new HashSet<>();

    @SuppressLint("MissingSuperCall")
    @Override
     protected void onCreate(Bundle savedInstanceState) {
        AndroidInjection.inject(this);
        super.onCreate(savedInstanceState);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
           for (Unbinder unbinder : binder)
                unbinder.unbind();

    }

    @Override
    public  AndroidInjector<android.support.v4.app.Fragment> supportFragmentInjector() {
        return supportFragmentInjector;
    }
    @Override
     public AndroidInjector<Fragment> fragmentInjector() {
        return frameworkFragmentInjector;
     }
}