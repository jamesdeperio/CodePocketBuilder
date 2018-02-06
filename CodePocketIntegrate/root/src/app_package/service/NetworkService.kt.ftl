package ${packageName}.integration.service

import android.content.Context
import jamesdeperio.github.com.codepocket.service.RetrofitService
import retrofit2.Converter
/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
class NetworkService(
        private val context: Context
) : RetrofitService(context) {
    override fun initConverterFactory(): Converter.Factory = null //todo Moshi , Gson, jackson
    override fun initRxAdapterFactory(): CallAdapter.Factory =null
    override fun initCacheSize(): Int = 1
    override fun initBaseURL(): String = ""

}