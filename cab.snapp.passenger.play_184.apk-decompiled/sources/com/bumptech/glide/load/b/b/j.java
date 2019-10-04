package com.bumptech.glide.load.b.b;

import androidx.core.util.Pools;
import com.adjust.sdk.Constants;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.c;
import com.bumptech.glide.g.g;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.d;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final g<d, String> f2165a = new g<>(1000);

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<a> f2166b = com.bumptech.glide.g.a.a.threadSafe(10, new a.C0038a<a>() {
        public final a create() {
            try {
                return new a(MessageDigest.getInstance(Constants.SHA256));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    });

    static final class a implements a.c {

        /* renamed from: a  reason: collision with root package name */
        final MessageDigest f2168a;

        /* renamed from: b  reason: collision with root package name */
        private final c f2169b = c.newInstance();

        a(MessageDigest messageDigest) {
            this.f2168a = messageDigest;
        }

        public final c getVerifier() {
            return this.f2169b;
        }
    }

    public final String getSafeKey(d dVar) {
        String str;
        synchronized (this.f2165a) {
            str = this.f2165a.get(dVar);
        }
        if (str == null) {
            str = a(dVar);
        }
        synchronized (this.f2165a) {
            this.f2165a.put(dVar, str);
        }
        return str;
    }

    private String a(d dVar) {
        a aVar = (a) com.bumptech.glide.g.j.checkNotNull(this.f2166b.acquire());
        try {
            dVar.updateDiskCacheKey(aVar.f2168a);
            return k.sha256BytesToHex(aVar.f2168a.digest());
        } finally {
            this.f2166b.release(aVar);
        }
    }
}
