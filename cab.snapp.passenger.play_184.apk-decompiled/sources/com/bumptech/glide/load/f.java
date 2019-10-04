package com.bumptech.glide.load;

import com.bumptech.glide.g.j;
import java.security.MessageDigest;

public final class f<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final a<Object> f2325a = new a<Object>() {
        public final void update(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    };

    /* renamed from: b  reason: collision with root package name */
    private final T f2326b;
    private final a<T> c;
    private final String d;
    private volatile byte[] e;

    public interface a<T> {
        void update(byte[] bArr, T t, MessageDigest messageDigest);
    }

    public static <T> f<T> memory(String str) {
        return new f<>(str, null, f2325a);
    }

    public static <T> f<T> memory(String str, T t) {
        return new f<>(str, t, f2325a);
    }

    public static <T> f<T> disk(String str, a<T> aVar) {
        return new f<>(str, null, aVar);
    }

    public static <T> f<T> disk(String str, T t, a<T> aVar) {
        return new f<>(str, t, aVar);
    }

    private f(String str, T t, a<T> aVar) {
        this.d = j.checkNotEmpty(str);
        this.f2326b = t;
        this.c = (a) j.checkNotNull(aVar);
    }

    public final T getDefaultValue() {
        return this.f2326b;
    }

    public final void update(T t, MessageDigest messageDigest) {
        a<T> aVar = this.c;
        if (this.e == null) {
            this.e = this.d.getBytes(d.CHARSET);
        }
        aVar.update(this.e, t, messageDigest);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.d.equals(((f) obj).d);
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode();
    }

    public final String toString() {
        return "Option{key='" + this.d + '\'' + '}';
    }
}
