/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
package ${packageName}.integration.network

import android.content.Context
import jdp.pocketlib.service.RetrofitService
import retrofit2.Converter
import retrofit2.CallAdapter

class NetworkService(
        private val context: Context
) : RetrofitService(context) {
    override fun initConverterFactory(): Converter.Factory = null //todo Moshi , Gson, jackson
    override fun initRxAdapterFactory(): CallAdapter.Factory =null
    override fun initCacheSize(): Int = 1
    override fun initBaseURL(): String = ""

}