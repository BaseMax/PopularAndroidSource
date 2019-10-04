package com.google.zxing.a;

import com.google.zxing.common.b;
import com.google.zxing.common.f;
import com.google.zxing.m;

public final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4227a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4228b;
    private final int c;

    public a(b bVar, m[] mVarArr, boolean z, int i, int i2) {
        super(bVar, mVarArr);
        this.f4227a = z;
        this.f4228b = i;
        this.c = i2;
    }

    public final int getNbLayers() {
        return this.c;
    }

    public final int getNbDatablocks() {
        return this.f4228b;
    }

    public final boolean isCompact() {
        return this.f4227a;
    }
}
