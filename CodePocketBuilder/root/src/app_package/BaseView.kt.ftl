package ${packageName}.presentation.${packageFolderName}

import ${packageName}.R
import ${packageName}.presentation.base.${baseType}
import ${packageName}.business.module.${packageFolderName}.${contractClass}
<#if  baseType== "DIBasePagerFragment">
 import android.support.v4.view.ViewPager
<#elseif  baseType== "DIBaseSwipeBackPagerFragment">
 import android.support.v4.view.ViewPager
       <#elseif  baseType== "DIBaseDrawerActivity">
 import android.support.design.widget.NavigationView
 import android.support.v4.widget.DrawerLayout
 import android.support.v7.widget.Toolbar
</#if>
/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
abstract class ${viewClass}: ${baseType}(), ${contractClass}.ViewMethod {
     override fun initContentView(): Int = R.layout.${layoutName}

      <#if  baseType== "DIBasePagerFragment">
              override fun initViewPager(): ViewPager = null
            <#elseif  baseType== "DIBaseSwipeBackPagerFragment">
                    override fun initViewPager(): ViewPager = null
            <#elseif  baseType== "DIBaseDrawerActivity">
     override fun initDrawerLayout(): DrawerLayout =null
         override fun initNavigationView(): NavigationView = null
         override fun initSupportingActionBar(): Toolbar = null

                            </#if>
}