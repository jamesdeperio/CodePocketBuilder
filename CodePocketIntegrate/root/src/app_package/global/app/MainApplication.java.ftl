/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */

package ${packageName}.global.app;

import dagger.android.AndroidInjector;
import dagger.android.support.DaggerApplication;
import android.content.Context;
import android.support.multidex.MultiDex;

public class MainApplication extends DaggerApplication  {
    @Override
    protected AndroidInjector<? extends DaggerApplication> applicationInjector() {
        return DaggerAppComponent.builder().application(this).build();
    }
  @Override
    protected void attachBaseContext(Context base) {
        super.attachBaseContext(base);
        MultiDex.install(base);
    }
}
