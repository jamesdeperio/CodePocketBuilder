/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName}

class ${presenterClass}(
    private val viewMethod: ${contractClass}.ViewMethod <#if withAdapter== "YES">,
    private val adapter:${contractClass}.Adapter
                </#if>
): ${contractClass}.Presenter