/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName}

import android.view.View
import android.content.Context
import jdp.pocketlib.base.PocketAdapter
 class ${viewClass}(
          view: View,
            event:${contractClass}.Event,
            context:Context<#if withAdapter== "YES">,
            adapter:PocketAdapter
            </#if>
            )