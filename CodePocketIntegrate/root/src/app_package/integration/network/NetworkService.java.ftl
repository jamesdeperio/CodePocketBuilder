/**
 * @author github.com/jamesdeperio
 * @version codepocket template builder v1.0
 */
 package ${packageName}.integration.network;

import android.content.Context;
import org.jetbrains.annotations.NotNull;
import java.io.IOException;
import jdp.pocketlib.service.RetrofitManager;
import retrofit2.CallAdapter;
import retrofit2.Converter;

public class NetworkManager extends RetrofitManager {
    public NetworkManager(Context context) {
        super(context);
    }

    @NotNull
    @Override
    public String initBaseURL() {
        return null;
    }

    @Override
    public int initCacheSize() {
        return 0;
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
    public boolean isDebugMode() {
        return false;
    }

    @NotNull
    @Override
    public IOException noInternetConnectionHandler() {
        return null;
    }
}
