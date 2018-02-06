package ${packageName}.presentation.${packageFolderName}

import android.os.Bundle
import ${packageName}.business.module.${packageFolderName}.${contractClass}
import javax.inject.Inject
import io.reactivex.disposables.CompositeDisposable
<#if  baseType== "DIBaseDrawerActivity">
import android.view.MenuItem
</#if>
/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
class ${controllerClass} : ${viewClass}(), ${contractClass}.Event {
    @Inject internal lateinit var presenter: ${contractClass}.Presenter
    @Inject internal lateinit var viewMethod: ${contractClass}.ViewMethod
    @Inject internal lateinit var subscription: CompositeDisposable
  <#if  baseType== "DIBasePagerFragment">
         override fun setupPage() {
           //todo   addPage(pageName,fragment)
          }
  <#elseif  baseType== "DIBaseSwipeBackPagerFragment">
         override fun setupPage() {
          //todo   addPage(pageName,fragment)
          }
  <#elseif  baseType== "DIBaseDrawerActivity">
    override fun onNavigationItemSelected(item: MenuItem): Boolean {
        return true
    }
  </#if>
    override fun initialization(savedInstanceState: Bundle?) {

    }

    override fun onLoadEvent(savedInstanceState: Bundle?) {

    }
  }