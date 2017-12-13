package ${packageName}.presentation.${packageFolderName};

import android.os.Bundle;
import ${packageName}.business.module.${packageFolderName}.${contractClass};
import javax.inject.Inject;
<#if  baseType== "DIBaseDrawerActivity">
import android.view.MenuItem;
</#if>
/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
public class ${controllerClass} extends ${viewClass} implements ${contractClass}.Event {
    @Inject ${contractClass}.Presenter presenter;
<#if  baseType== "DIBasePagerFragment">
           @Override
            public void setupPage() {
                //todo   addPage(pageName,fragment);
                 }
<#elseif baseType== "DIBaseSwipeBackPagerFragment">
            @Override
            public void setupPage() {
              //todo   addPage(pageName,fragment);
              }
                 <#elseif  baseType== "DIBaseDrawerActivity">
                  @Override
                   public boolean onNavigationItemSelected(MenuItem item) {
                        return true;
                     }
  </#if>

    @Override
    public void initialization(Bundle savedInstanceState) {

   }

    @Override
    public void onLoadEvent(Bundle savedInstanceState) {

    }
}