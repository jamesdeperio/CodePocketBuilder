/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.base;

import android.annotation.SuppressLint;
import android.os.Bundle;
import dagger.android.AndroidInjection;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasFragmentInjector;
import dagger.android.support.HasSupportFragmentInjector;
import jdp.pocketlib.base.BaseActivity;
import javax.inject.Inject;
import android.support.v4.app.Fragment;

public abstract class DIBaseActivity extends BaseActivity implements HasSupportFragmentInjector {
    @Inject  DispatchingAndroidInjector<Fragment> supportFragmentInjector;

    @Override
     protected void onCreate(Bundle savedInstanceState) {
        AndroidInjection.inject(this);
        super.onCreate(savedInstanceState);
    }


    @Override
    public  AndroidInjector<android.support.v4.app.Fragment> supportFragmentInjector() {
        return supportFragmentInjector;
    }

}