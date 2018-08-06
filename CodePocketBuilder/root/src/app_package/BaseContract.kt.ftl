/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName}
import kotlinx.coroutines.experimental.Job
interface ${contractClass} {
    interface Event

    interface ViewMethod

    interface Presenter
<#if withAdapter== "YES">
  interface Adapter {
        fun refreshAll(): Job
        fun refreshLastInserted(): Job
         fun filter(query: String): List<Any>
    }
    </#if>
}