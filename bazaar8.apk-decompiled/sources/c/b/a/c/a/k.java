package c.b.a.c.a;

import android.text.TextUtils;
import android.util.Log;
import c.b.a.c.a.d;
import c.b.a.c.c.l;
import c.b.a.i.c;
import c.b.a.i.e;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* compiled from: HttpUrlFetcher */
public class k implements d<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public static final b f3794a = new a();

    /* renamed from: b  reason: collision with root package name */
    public final l f3795b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3796c;

    /* renamed from: d  reason: collision with root package name */
    public final b f3797d;

    /* renamed from: e  reason: collision with root package name */
    public HttpURLConnection f3798e;

    /* renamed from: f  reason: collision with root package name */
    public InputStream f3799f;

    /* renamed from: g  reason: collision with root package name */
    public volatile boolean f3800g;

    /* compiled from: HttpUrlFetcher */
    private static class a implements b {
        public HttpURLConnection a(URL url) {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* compiled from: HttpUrlFetcher */
    interface b {
        HttpURLConnection a(URL url);
    }

    public k(l lVar, int i2) {
        this(lVar, i2, f3794a);
    }

    public static boolean b(int i2) {
        return i2 / 100 == 3;
    }

    public void a(Priority priority, d.a<? super InputStream> aVar) {
        StringBuilder sb;
        long a2 = e.a();
        try {
            aVar.a(a(this.f3795b.f(), 0, null, this.f3795b.c()));
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder();
                sb.append("Finished http url fetcher fetch in ");
                sb.append(e.a(a2));
                Log.v("HttpUrlFetcher", sb.toString());
            }
        } catch (IOException e2) {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Failed to load data for url", e2);
            }
            aVar.a((Exception) e2);
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                sb = new StringBuilder();
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                Log.v("HttpUrlFetcher", "Finished http url fetcher fetch in " + e.a(a2));
            }
            throw th;
        }
    }

    public DataSource c() {
        return DataSource.REMOTE;
    }

    public void cancel() {
        this.f3800g = true;
    }

    public k(l lVar, int i2, b bVar) {
        this.f3795b = lVar;
        this.f3796c = i2;
        this.f3797d = bVar;
    }

    public void b() {
        InputStream inputStream = this.f3799f;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f3798e;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f3798e = null;
    }

    public final InputStream a(URL url, int i2, URL url2, Map<String, String> map) {
        if (i2 < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop");
                    }
                } catch (URISyntaxException unused) {
                }
            }
            this.f3798e = this.f3797d.a(url);
            for (Map.Entry next : map.entrySet()) {
                this.f3798e.addRequestProperty((String) next.getKey(), (String) next.getValue());
            }
            this.f3798e.setConnectTimeout(this.f3796c);
            this.f3798e.setReadTimeout(this.f3796c);
            this.f3798e.setUseCaches(false);
            this.f3798e.setDoInput(true);
            this.f3798e.setInstanceFollowRedirects(false);
            this.f3798e.connect();
            this.f3799f = this.f3798e.getInputStream();
            if (this.f3800g) {
                return null;
            }
            int responseCode = this.f3798e.getResponseCode();
            if (a(responseCode)) {
                return a(this.f3798e);
            }
            if (b(responseCode)) {
                String headerField = this.f3798e.getHeaderField("Location");
                if (!TextUtils.isEmpty(headerField)) {
                    URL url3 = new URL(url, headerField);
                    b();
                    return a(url3, i2 + 1, url, map);
                }
                throw new HttpException("Received empty or null redirect url");
            } else if (responseCode == -1) {
                throw new HttpException(responseCode);
            } else {
                throw new HttpException(this.f3798e.getResponseMessage(), responseCode);
            }
        } else {
            throw new HttpException("Too many (> 5) redirects!");
        }
    }

    public static boolean a(int i2) {
        return i2 / 100 == 2;
    }

    public final InputStream a(HttpURLConnection httpURLConnection) {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f3799f = c.a(httpURLConnection.getInputStream(), (long) httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.f3799f = httpURLConnection.getInputStream();
        }
        return this.f3799f;
    }

    public Class<InputStream> a() {
        return InputStream.class;
    }
}
