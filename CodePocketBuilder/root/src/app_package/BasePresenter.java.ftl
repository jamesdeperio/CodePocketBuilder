/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

public class ${presenterClass} implements ${contractClass}.Presenter {

<#if withAdapter== "YES">
    private ${contractClass}.Adapter adapter;
        private ${contractClass}.ViewMethod viewMethod;
        public ${presenterClass}(${contractClass}.ViewMethod viewMethod,${contractClass}.Adapter adapter) {
            this.viewMethod=viewMethod;
            this.adapter=adapter;
        }
<#elseif withAdapter== "NO">
     private ${contractClass}.ViewMethod viewMethod;
     public ${presenterClass}(${contractClass}.ViewMethod viewMethod) {
         this.viewMethod=viewMethod;
     }
 </#if>
}