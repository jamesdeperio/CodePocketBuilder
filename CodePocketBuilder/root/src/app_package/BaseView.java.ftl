package ${packageName}.presentation.${packageFolderName};

import ${packageName}.R;
import ${packageName}.presentation.base.${baseType};
import ${packageName}.business.module.${packageFolderName}.${contractClass};
<#if  baseType== "DIBasePagerFragment">
       import android.support.v4.view.ViewPager;
      <#elseif  baseType== "DIBaseSwipeBackPagerFragment">
             import android.support.v4.view.ViewPager;
             <#elseif  baseType== "DIBaseDrawerActivity">
import android.support.design.widget.NavigationView;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.widget.Toolbar;
      </#if>
/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
public abstract class ${viewClass} extends ${baseType} implements ${contractClass}.ViewMethod {
    @Override
      public int initContentView() {
          return R.layout.${layoutName};
      }
      <#if  baseType== "DIBasePagerFragment">
               @Override
                public ViewPager initViewPager(){
                  return null;
                }
            <#elseif  baseType== "DIBaseSwipeBackPagerFragment">
                     @Override
                      public ViewPager initViewPager(){
                        return null;
                      }
            <#elseif  baseType== "DIBaseDrawerActivity">
                      @Override
                       public DrawerLayout initDrawerLayout() {
                       return null;
                        }
                       @Override
                      public NavigationView initNavigationView() {
                     return null;
                      }
                       @Override
                      public Toolbar initSupportingActionBar() {
                     return null;
                      }
                         </#if>
}