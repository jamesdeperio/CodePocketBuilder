package ${packageName}.business.app;

import dagger.android.AndroidInjector;
import dagger.android.support.DaggerApplication;
import ${packageName}.business.component.DaggerAppComponent;

/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
public class MainApplication extends DaggerApplication  {

    @Override
    protected AndroidInjector<? extends DaggerApplication> applicationInjector() {
        return DaggerAppComponent.builder().application(this).build();
    }

}
