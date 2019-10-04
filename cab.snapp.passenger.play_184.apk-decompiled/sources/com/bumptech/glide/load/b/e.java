package com.bumptech.glide.load.b;

import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.g;
import java.io.File;

final class e<DataType> implements a.b {

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.a<DataType> f2190a;

    /* renamed from: b  reason: collision with root package name */
    private final DataType f2191b;
    private final g c;

    e(com.bumptech.glide.load.a<DataType> aVar, DataType datatype, g gVar) {
        this.f2190a = aVar;
        this.f2191b = datatype;
        this.c = gVar;
    }

    public final boolean write(File file) {
        return this.f2190a.encode(this.f2191b, file, this.c);
    }
}
