/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.Priority;
import com.bumptech.glide.annotation.GlideModule;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.request.RequestOptions;
import android.support.annotation.NonNull;

@SuppressLint("CheckResult")
@GlideModule
public class GlideAppModule extends AppGlideModule {
    private int applyLogLevel() {
           return Log.VERBOSE;
       }
       private MemorySizeCalculator buildMemorySizeCalculator(Context context) {
            return new MemorySizeCalculator.Builder(context).build();
       }

       private LruResourceCache applyMemoryCacheSize(MemorySizeCalculator memorySizeCalculator) {
           return new LruResourceCache((long) (memorySizeCalculator.getMemoryCacheSize() * 1.2));
       }

       private LruBitmapPool applyMemoryBitmapPoolSize(MemorySizeCalculator memorySizeCalculator) {
            return new LruBitmapPool((long) (memorySizeCalculator.getBitmapPoolSize()  * 1.2));
       }

       private long applyDiskCacheSize() {
           return 1024 * 1024 * 100;
       }
       private InternalCacheDiskCacheFactory applyDiskCache(Context context) {
              return new InternalCacheDiskCacheFactory(context, applyDiskCacheSize());
       }

       private RequestOptions applyDefaultSetting() {
            return new RequestOptions().priority(Priority.HIGH)
                    .diskCacheStrategy(DiskCacheStrategy.RESOURCE)
                    .fitCenter();
       }


       @Override
       public void applyOptions(@NonNull Context context, @NonNull GlideBuilder builder) {
           MemorySizeCalculator memorySizeCalculator=buildMemorySizeCalculator(context);
           builder.setLogLevel(applyLogLevel())
                   .setDefaultRequestOptions(applyDefaultSetting());
       }
   }