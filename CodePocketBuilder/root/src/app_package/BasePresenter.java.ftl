package ${packageName}.business.module.${packageFolderName};

/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
public class ${presenterClass} implements ${contractClass}.Presenter {
    private ${contractClass}.ViewMethod viewMethod;
    public ${presenterClass}(${contractClass}.ViewMethod viewMethod) {
        this.viewMethod=viewMethod;
    }
}