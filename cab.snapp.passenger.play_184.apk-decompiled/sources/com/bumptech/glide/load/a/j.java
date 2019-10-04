package com.bumptech.glide.load.a;

import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.g.c;
import com.bumptech.glide.g.f;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.a.d;
import com.bumptech.glide.load.c.g;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

public final class j implements d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    static final b f2110a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final g f2111b;
    private final int c;
    private final b d;
    private HttpURLConnection e;
    private InputStream f;
    private volatile boolean g;

    static class a implements b {
        a() {
        }

        public final HttpURLConnection build(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    interface b {
        HttpURLConnection build(URL url) throws IOException;
    }

    public j(g gVar, int i) {
        this(gVar, i, f2110a);
    }

    private j(g gVar, int i, b bVar) {
        this.f2111b = gVar;
        this.c = i;
        this.d = bVar;
    }

    public final void loadData(Priority priority, d.a<? super InputStream> aVar) {
        StringBuilder sb;
        long logTime = f.getLogTime();
        try {
            aVar.onDataReady(a(this.f2111b.toURL(), 0, null, this.f2111b.getHeaders()));
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder("Finished http url fetcher fetch in ");
                sb.append(f.getElapsedMillis(logTime));
            }
        } catch (IOException e2) {
            aVar.onLoadFailed(e2);
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder("Finished http url fetcher fetch in ");
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                new StringBuilder("Finished http url fetcher fetch in ").append(f.getElapsedMillis(logTime));
            }
            throw th;
        }
    }

    private InputStream a(URL url, int i, URL url2, Map<String, String> map) throws IOException {
        while (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new com.bumptech.glide.load.b("In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            this.e = this.d.build(url);
            for (Map.Entry next : map.entrySet()) {
                this.e.addRequestProperty((String) next.getKey(), (String) next.getValue());
            }
            this.e.setConnectTimeout(this.c);
            this.e.setReadTimeout(this.c);
            boolean z = false;
            this.e.setUseCaches(false);
            this.e.setDoInput(true);
            this.e.setInstanceFollowRedirects(false);
            this.e.connect();
            this.f = this.e.getInputStream();
            if (this.g) {
                return null;
            }
            int responseCode = this.e.getResponseCode();
            int i2 = responseCode / 100;
            if (i2 == 2) {
                HttpURLConnection httpURLConnection = this.e;
                if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                    this.f = c.obtain(httpURLConnection.getInputStream(), (long) httpURLConnection.getContentLength());
                } else {
                    if (Log.isLoggable("HttpUrlFetcher", 3)) {
                        new StringBuilder("Got non empty content encoding: ").append(httpURLConnection.getContentEncoding());
                    }
                    this.f = httpURLConnection.getInputStream();
                }
                return this.f;
            }
            if (i2 == 3) {
                z = true;
            }
            if (z) {
                String headerField = this.e.getHeaderField(io.fabric.sdk.android.services.network.c.HEADER_LOCATION);
                if (!TextUtils.isEmpty(headerField)) {
                    URL url3 = new URL(url, headerField);
                    cleanup();
                    i++;
                    url2 = url;
                    url = url3;
                } else {
                    throw new com.bumptech.glide.load.b("Received empty or null redirect url");
                }
            } else if (responseCode == -1) {
                throw new com.bumptech.glide.load.b(responseCode);
            } else {
                throw new com.bumptech.glide.load.b(this.e.getResponseMessage(), responseCode);
            }
        }
        throw new com.bumptech.glide.load.b("Too many (> 5) redirects!");
    }

    public final void cleanup() {
        InputStream inputStream = this.f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.e = null;
    }

    public final void cancel() {
        this.g = true;
    }

    public final Class<InputStream> getDataClass() {
        return InputStream.class;
    }

    public final DataSource getDataSource() {
        return DataSource.REMOTE;
    }
}
