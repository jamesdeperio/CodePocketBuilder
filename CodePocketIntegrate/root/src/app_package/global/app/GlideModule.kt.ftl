/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.global.app

import android.annotation.SuppressLint
import android.content.Context
import android.util.Log
import com.bumptech.glide.GlideBuilder
import com.bumptech.glide.Priority
import com.bumptech.glide.annotation.GlideModule
import com.bumptech.glide.load.engine.DiskCacheStrategy
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory
import com.bumptech.glide.load.engine.cache.LruResourceCache
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator
import com.bumptech.glide.module.AppGlideModule
import com.bumptech.glide.request.RequestOptions


@SuppressLint("CheckResult")
@GlideModule
class GlideModule : AppGlideModule() {
    private fun applyLogLevel()
            = Log.VERBOSE
    private fun buildMemorySizeCalculator(context: Context)
            = MemorySizeCalculator.Builder(context).build()
    private fun applyMemoryCacheSize(memorySizeCalculator: MemorySizeCalculator)
            = LruResourceCache((memorySizeCalculator.memoryCacheSize * 1.2).toLong())
    private fun applyMemoryBitmapPoolSize(memorySizeCalculator: MemorySizeCalculator)
            = LruBitmapPool((memorySizeCalculator.bitmapPoolSize  * 1.2).toLong())
    private fun applyDiskCacheSize(): Long
            = 1024 * 1024 * 100
    private fun applyDiskCache(context: Context)
            = InternalCacheDiskCacheFactory(context, applyDiskCacheSize())
    private fun applyDefaultSetting() = RequestOptions().apply {
        priority(Priority.HIGH)
        diskCacheStrategy(DiskCacheStrategy.RESOURCE)
        fitCenter()
    }

    override fun applyOptions(context: Context, builder: GlideBuilder) {
        val memorySizeCalculator=buildMemorySizeCalculator(context)
        builder.setLogLevel(applyLogLevel())
                .setDefaultRequestOptions(applyDefaultSetting())
    }
}