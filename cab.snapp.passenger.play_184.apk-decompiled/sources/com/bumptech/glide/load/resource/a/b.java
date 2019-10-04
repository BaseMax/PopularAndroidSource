package com.bumptech.glide.load.resource.a;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.b.v;

public final class b implements v<byte[]> {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f2330a;

    public final void recycle() {
    }

    public b(byte[] bArr) {
        this.f2330a = (byte[]) j.checkNotNull(bArr);
    }

    public final Class<byte[]> getResourceClass() {
        return byte[].class;
    }

    public final byte[] get() {
        return this.f2330a;
    }

    public final int getSize() {
        return this.f2330a.length;
    }
}
