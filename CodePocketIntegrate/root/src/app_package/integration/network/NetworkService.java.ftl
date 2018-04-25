package ${packageName}.integration.service;

import android.content.Context;
import org.jetbrains.annotations.NotNull;
import jamesdeperio.github.com.codepocket.service.RetrofitService;
import retrofit2.Converter;
/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
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
    public Converter.Factory initRxAdapterFactory() {
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