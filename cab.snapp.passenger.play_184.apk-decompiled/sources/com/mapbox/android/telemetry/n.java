package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import com.adjust.sdk.Constants;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;

final class n implements Callback {
    private static final Map<o, String> f = new HashMap<o, String>() {
        {
            put(o.COM, "api.mapbox.com");
            put(o.STAGING, "api.mapbox.com");
            put(o.CHINA, "api.mapbox.cn");
        }
    };

    /* renamed from: a  reason: collision with root package name */
    final Context f4982a;

    /* renamed from: b  reason: collision with root package name */
    final String f4983b;
    final String c;
    final OkHttpClient d;
    final List<m> e = new CopyOnWriteArrayList();

    n(Context context, String str, String str2, OkHttpClient okHttpClient) {
        this.f4982a = context;
        this.f4983b = str;
        this.c = str2;
        this.d = okHttpClient;
    }

    public final void onFailure(Call call, IOException iOException) {
        a();
    }

    public final void onResponse(Call call, Response response) throws IOException {
        a();
        if (response != null) {
            ResponseBody body = response.body();
            if (body != null) {
                for (m next : this.e) {
                    if (next != null) {
                        next.onUpdate(body.string());
                    }
                }
            }
        }
    }

    private void a() {
        SharedPreferences.Editor edit = ak.a(this.f4982a).edit();
        edit.putLong("mapboxConfigSyncTimestamp", System.currentTimeMillis());
        edit.apply();
    }

    static HttpUrl a(Context context, String str) {
        return new HttpUrl.Builder().scheme(Constants.SCHEME).host(a(context)).addPathSegment("events-config").addQueryParameter("access_token", str).build();
    }

    private static String a(Context context) {
        new p();
        q a2 = p.a();
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (!(applicationInfo == null || applicationInfo.metaData == null)) {
                return f.get(a2.obtainServerInformation(applicationInfo.metaData).f4942a);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.getMessage();
        }
        return "api.mapbox.com";
    }
}
