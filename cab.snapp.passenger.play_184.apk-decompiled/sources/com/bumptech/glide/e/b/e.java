package com.bumptech.glide.e.b;

import com.bumptech.glide.e.b.f;
import com.bumptech.glide.load.DataSource;

public final class e<R> implements c<R> {

    /* renamed from: a  reason: collision with root package name */
    private final f.a f2040a;

    /* renamed from: b  reason: collision with root package name */
    private f<R> f2041b;

    public e(f.a aVar) {
        this.f2040a = aVar;
    }

    public final b<R> build(DataSource dataSource, boolean z) {
        if (dataSource == DataSource.MEMORY_CACHE || !z) {
            return a.get();
        }
        if (this.f2041b == null) {
            this.f2041b = new f<>(this.f2040a);
        }
        return this.f2041b;
    }
}
