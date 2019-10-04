package com.bumptech.glide.load.b;

import com.bumptech.glide.g.g;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.j;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

final class x implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final g<Class<?>, byte[]> f2245a = new g<>(50);

    /* renamed from: b  reason: collision with root package name */
    private final b f2246b;
    private final d c;
    private final d d;
    private final int e;
    private final int f;
    private final Class<?> g;
    private final com.bumptech.glide.load.g h;
    private final j<?> i;

    x(b bVar, d dVar, d dVar2, int i2, int i3, j<?> jVar, Class<?> cls, com.bumptech.glide.load.g gVar) {
        this.f2246b = bVar;
        this.c = dVar;
        this.d = dVar2;
        this.e = i2;
        this.f = i3;
        this.i = jVar;
        this.g = cls;
        this.h = gVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof x) {
            x xVar = (x) obj;
            if (this.f == xVar.f && this.e == xVar.e && k.bothNullOrEqual(this.i, xVar.i) && this.g.equals(xVar.g) && this.c.equals(xVar.c) && this.d.equals(xVar.d) && this.h.equals(xVar.h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((this.c.hashCode() * 31) + this.d.hashCode()) * 31) + this.e) * 31) + this.f;
        j<?> jVar = this.i;
        if (jVar != null) {
            hashCode = (hashCode * 31) + jVar.hashCode();
        }
        return (((hashCode * 31) + this.g.hashCode()) * 31) + this.h.hashCode();
    }

    public final void updateDiskCacheKey(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f2246b.getExact(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.e).putInt(this.f).array();
        this.d.updateDiskCacheKey(messageDigest);
        this.c.updateDiskCacheKey(messageDigest);
        messageDigest.update(bArr);
        j<?> jVar = this.i;
        if (jVar != null) {
            jVar.updateDiskCacheKey(messageDigest);
        }
        this.h.updateDiskCacheKey(messageDigest);
        byte[] bArr2 = f2245a.get(this.g);
        if (bArr2 == null) {
            bArr2 = this.g.getName().getBytes(CHARSET);
            f2245a.put(this.g, bArr2);
        }
        messageDigest.update(bArr2);
        this.f2246b.put(bArr);
    }

    public final String toString() {
        return "ResourceCacheKey{sourceKey=" + this.c + ", signature=" + this.d + ", width=" + this.e + ", height=" + this.f + ", decodedResourceClass=" + this.g + ", transformation='" + this.i + '\'' + ", options=" + this.h + '}';
    }
}
