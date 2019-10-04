package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bm;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.concurrent.TimeUnit;

public abstract class im {

    /* renamed from: a  reason: collision with root package name */
    private final String f6163a;

    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f6164a = ((int) TimeUnit.SECONDS.toMillis(30));
    }

    public abstract boolean b();

    public im(String str) {
        this.f6163a = str;
    }

    public HttpURLConnection a() throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.f6163a).openConnection();
        httpURLConnection.setConnectTimeout(a.f6164a);
        httpURLConnection.setReadTimeout(a.f6164a);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setRequestProperty("Accept", "application/json");
        httpURLConnection.setRequestProperty("User-Agent", bm.a("com.yandex.mobile.metrica.sdk"));
        return httpURLConnection;
    }
}
