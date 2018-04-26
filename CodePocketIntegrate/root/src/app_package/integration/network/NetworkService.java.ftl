/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.integration.network;

import android.content.Context;
import org.jetbrains.annotations.NotNull;
import jdp.pocketlib.service.RetrofitService;
import retrofit2.Converter;
import retrofit2.CallAdapter;

public class NetworkService extends RetrofitService {
    public NetworkService(Context context) {
        super(context);
    }
    @NotNull
    @Override
    public Converter.Factory initConverterFactory() {
        return null;
    }
    @NotNull
    @Override
    public CallAdapter.Factory initRxAdapterFactory() {
        return null;
    }

    @Override
    public int initCacheSize() {
        return 0;
    }

    @NotNull
    @Override
    public String initBaseURL() {
        return null;
    }
}