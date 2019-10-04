package com.squareup.picasso;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import okhttp3.Cache;
import okhttp3.Call;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;

public final class s implements j {

    /* renamed from: a  reason: collision with root package name */
    final Call.Factory f5298a;

    /* renamed from: b  reason: collision with root package name */
    private final Cache f5299b;
    private boolean c;

    public s(Context context) {
        this(af.a(context));
    }

    public s(File file) {
        this(file, af.a(file));
    }

    public s(Context context, long j) {
        this(af.a(context), j);
    }

    public s(File file, long j) {
        this(new OkHttpClient.Builder().cache(new Cache(file, j)).build());
        this.c = false;
    }

    public s(OkHttpClient okHttpClient) {
        this.c = true;
        this.f5298a = okHttpClient;
        this.f5299b = okHttpClient.cache();
    }

    public s(Call.Factory factory) {
        this.c = true;
        this.f5298a = factory;
        this.f5299b = null;
    }

    public final Response load(Request request) throws IOException {
        return this.f5298a.newCall(request).execute();
    }

    public final void shutdown() {
        if (!this.c) {
            Cache cache = this.f5299b;
            if (cache != null) {
                try {
                    cache.close();
                } catch (IOException unused) {
                }
            }
        }
    }
}
