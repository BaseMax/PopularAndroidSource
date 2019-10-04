package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import com.bumptech.glide.b.a;
import com.bumptech.glide.load.b.a.e;

public final class b implements a.C0033a {

    /* renamed from: a  reason: collision with root package name */
    private final e f2379a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.load.b.a.b f2380b;

    public b(e eVar) {
        this(eVar, null);
    }

    public b(e eVar, com.bumptech.glide.load.b.a.b bVar) {
        this.f2379a = eVar;
        this.f2380b = bVar;
    }

    public final Bitmap obtain(int i, int i2, Bitmap.Config config) {
        return this.f2379a.getDirty(i, i2, config);
    }

    public final void release(Bitmap bitmap) {
        this.f2379a.put(bitmap);
    }

    public final byte[] obtainByteArray(int i) {
        com.bumptech.glide.load.b.a.b bVar = this.f2380b;
        if (bVar == null) {
            return new byte[i];
        }
        return (byte[]) bVar.get(i, byte[].class);
    }

    public final void release(byte[] bArr) {
        com.bumptech.glide.load.b.a.b bVar = this.f2380b;
        if (bVar != null) {
            bVar.put(bArr);
        }
    }

    public final int[] obtainIntArray(int i) {
        com.bumptech.glide.load.b.a.b bVar = this.f2380b;
        if (bVar == null) {
            return new int[i];
        }
        return (int[]) bVar.get(i, int[].class);
    }

    public final void release(int[] iArr) {
        com.bumptech.glide.load.b.a.b bVar = this.f2380b;
        if (bVar != null) {
            bVar.put(iArr);
        }
    }
}
