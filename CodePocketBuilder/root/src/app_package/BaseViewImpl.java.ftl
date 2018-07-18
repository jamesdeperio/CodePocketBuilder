/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
 package ${packageName}.appmodule.${packageFolderName};

import android.content.Context;
import android.support.v4.app.Fragment;

 public class ${viewImplClass} implements ${contractClass}.ViewMethod {
  <#if scope== "ActivityScope">
        private Context context;
     private ${viewClass} view;

     public ${viewImplClass} (Context context, ${viewClass} view) {
            this.context=context;
            this.view=view;
        }
        <#elseif scope== "FragmentScope">
           private Fragment fragment;
              private ${viewClass} view;
              public ${viewImplClass} (Fragment fragment, ${viewClass} view) {
                       this.fragment=fragment;
                       this.view=view;
                   }
           </#if>


}