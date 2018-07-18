/**
 * @version codepocket template builder v1.0
 * @author github.com/jamesdeperio
 **/
package ${packageName}.appmodule.${packageFolderName};

 import android.os.Handler;
      import android.os.Looper;
      import java.util.ArrayList;
      import java.util.List;
      import jdp.pocketlib.base.PocketAdapter;

public class ${prefixName}Adapter extends PocketAdapter implements ${contractClass}.Adapter {
    public List<Object> objectList= new ArrayList<>();
    public List<Object> objectFilteredList= new ArrayList<>();

    @Override
    public int getItemCount() {
        return objectFilteredList.size();
    }


    @Override
    public boolean refreshAll() {
        return new Handler(Looper.getMainLooper()).post(this::notifyDataSetChanged);
    }

    @Override
    public boolean refreshLastInserted() {
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
