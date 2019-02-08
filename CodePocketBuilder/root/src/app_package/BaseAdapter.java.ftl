/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

 import android.os.Handler;
      import android.os.Looper;
      import java.util.ArrayList;
      import java.util.List;
      import jdp.pocketlib.base.Adapter;

public class ${prefixName}Adapter extends Adapter implements ${contractClass}.Adapter {
    List<Object> objectList= new ArrayList<>();
    List<Object> objectFilteredList= new ArrayList<>();

    @Override
    public int getItemCount() {
        return objectFilteredList.size();
    }


    @Override
    public boolean refreshList() {
        return new Handler(Looper.getMainLooper()).post(this::notifyDataSetChanged);
    }

    @Override
    public boolean addNewItem() {
        return new Handler(Looper.getMainLooper()).post(() -> notifyItemChanged(getItemCount()));
    }

    @Override
    public List<Object> filter(String query) {
        List<Object> filteredList=new ArrayList<>();
        for(Object item:objectList){
            if (true) filteredList.add(item);
        }
        return filteredList;
    }
}
