/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName}

import android.content.Context
import android.support.v4.app.Fragment
 class ${viewImplClass}(
        <#if scope== "ActivityScope">
        private val context: Context,
        <#elseif scope== "FragmentScope">
        private val fragment: Fragment,
         <#/if>
        private val view: ${viewClass}
): ${contractClass}.ViewMethod