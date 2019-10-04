package com.bumptech.glide.load.c;

import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.d;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

public class g implements d {

    /* renamed from: a  reason: collision with root package name */
    private final h f2279a;

    /* renamed from: b  reason: collision with root package name */
    private final URL f2280b;
    private final String c;
    private String d;
    private URL e;
    private volatile byte[] f;
    private int g;

    public g(URL url) {
        this(url, h.DEFAULT);
    }

    public g(String str) {
        this(str, h.DEFAULT);
    }

    public g(URL url, h hVar) {
        this.f2280b = (URL) j.checkNotNull(url);
        this.c = null;
        this.f2279a = (h) j.checkNotNull(hVar);
    }

    public g(String str, h hVar) {
        this.f2280b = null;
        this.c = j.checkNotEmpty(str);
        this.f2279a = (h) j.checkNotNull(hVar);
    }

    public String toStringUrl() {
        return a();
    }

    private String a() {
        if (TextUtils.isEmpty(this.d)) {
            String str = this.c;
            if (TextUtils.isEmpty(str)) {
                str = ((URL) j.checkNotNull(this.f2280b)).toString();
            }
            this.d = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.d;
    }

    public Map<String, String> getHeaders() {
        return this.f2279a.getHeaders();
    }

    public String getCacheKey() {
        String str = this.c;
        return str != null ? str : ((URL) j.checkNotNull(this.f2280b)).toString();
    }

    public String toString() {
        return getCacheKey();
    }

    public boolean equals(Object obj) {
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (getCacheKey().equals(gVar.getCacheKey()) && this.f2279a.equals(gVar.f2279a)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.g == 0) {
            this.g = getCacheKey().hashCode();
            this.g = (this.g * 31) + this.f2279a.hashCode();
        }
        return this.g;
    }

    public URL toURL() throws MalformedURLException {
        if (this.e == null) {
            this.e = new URL(a());
        }
        return this.e;
    }

    public void updateDiskCacheKey(MessageDigest messageDigest) {
        if (this.f == null) {
            this.f = getCacheKey().getBytes(CHARSET);
        }
        messageDigest.update(this.f);
    }
}
