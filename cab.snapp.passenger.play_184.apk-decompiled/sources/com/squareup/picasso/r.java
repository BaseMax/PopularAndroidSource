package com.squareup.picasso;

import android.net.NetworkInfo;
import b.v;
import com.adjust.sdk.Constants;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.y;
import java.io.IOException;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;

final class r extends y {

    /* renamed from: a  reason: collision with root package name */
    private final j f5294a;

    /* renamed from: b  reason: collision with root package name */
    private final aa f5295b;

    static class a extends IOException {
        a(String str) {
            super(str);
        }
    }

    static final class b extends IOException {

        /* renamed from: a  reason: collision with root package name */
        final int f5296a;

        /* renamed from: b  reason: collision with root package name */
        final int f5297b;

        b(int i, int i2) {
            super("HTTP ".concat(String.valueOf(i)));
            this.f5296a = i;
            this.f5297b = i2;
        }
    }

    /* access modifiers changed from: package-private */
    public final int a() {
        return 2;
    }

    /* access modifiers changed from: package-private */
    public final boolean b() {
        return true;
    }

    r(j jVar, aa aaVar) {
        this.f5294a = jVar;
        this.f5295b = aaVar;
    }

    public final boolean canHandleRequest(w wVar) {
        String scheme = wVar.uri.getScheme();
        return "http".equals(scheme) || Constants.SCHEME.equals(scheme);
    }

    /* access modifiers changed from: package-private */
    public final boolean a(NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    public final y.a load(w wVar, int i) throws IOException {
        CacheControl cacheControl;
        if (i == 0) {
            cacheControl = null;
        } else if (NetworkPolicy.isOfflineOnly(i)) {
            cacheControl = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!NetworkPolicy.shouldReadFromDiskCache(i)) {
                builder.noCache();
            }
            if (!NetworkPolicy.shouldWriteToDiskCache(i)) {
                builder.noStore();
            }
            cacheControl = builder.build();
        }
        Request.Builder url = new Request.Builder().url(wVar.uri.toString());
        if (cacheControl != null) {
            url.cacheControl(cacheControl);
        }
        Response load = this.f5294a.load(url.build());
        ResponseBody body = load.body();
        if (load.isSuccessful()) {
            Picasso.LoadedFrom loadedFrom = load.cacheResponse() == null ? Picasso.LoadedFrom.NETWORK : Picasso.LoadedFrom.DISK;
            if (loadedFrom == Picasso.LoadedFrom.DISK && body.contentLength() == 0) {
                body.close();
                throw new a("Received response with 0 content-length header.");
            }
            if (loadedFrom == Picasso.LoadedFrom.NETWORK && body.contentLength() > 0) {
                aa aaVar = this.f5295b;
                aaVar.c.sendMessage(aaVar.c.obtainMessage(4, Long.valueOf(body.contentLength())));
            }
            return new y.a((v) body.source(), loadedFrom);
        }
        body.close();
        throw new b(load.code(), wVar.c);
    }
}
