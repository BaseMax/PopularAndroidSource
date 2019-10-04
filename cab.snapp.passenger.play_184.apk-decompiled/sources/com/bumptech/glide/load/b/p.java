package com.bumptech.glide.load.b;

import com.bumptech.glide.g.j;
import com.bumptech.glide.load.d;

final class p<Z> implements v<Z> {

    /* renamed from: a  reason: collision with root package name */
    final boolean f2231a;

    /* renamed from: b  reason: collision with root package name */
    final v<Z> f2232b;
    private final boolean c;
    private a d;
    private d e;
    private int f;
    private boolean g;

    interface a {
        void onResourceReleased(d dVar, p<?> pVar);
    }

    p(v<Z> vVar, boolean z, boolean z2) {
        this.f2232b = (v) j.checkNotNull(vVar);
        this.f2231a = z;
        this.c = z2;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(d dVar, a aVar) {
        this.e = dVar;
        this.d = aVar;
    }

    public final Class<Z> getResourceClass() {
        return this.f2232b.getResourceClass();
    }

    public final Z get() {
        return this.f2232b.get();
    }

    public final int getSize() {
        return this.f2232b.getSize();
    }

    public final synchronized void recycle() {
        if (this.f > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (!this.g) {
            this.g = true;
            if (this.c) {
                this.f2232b.recycle();
            }
        } else {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        if (!this.g) {
            this.f++;
        } else {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        synchronized (this.d) {
            synchronized (this) {
                if (this.f > 0) {
                    int i = this.f - 1;
                    this.f = i;
                    if (i == 0) {
                        this.d.onResourceReleased(this.e, this);
                    }
                } else {
                    throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
                }
            }
        }
    }

    public final synchronized String toString() {
        return "EngineResource{isCacheable=" + this.f2231a + ", listener=" + this.d + ", key=" + this.e + ", acquired=" + this.f + ", isRecycled=" + this.g + ", resource=" + this.f2232b + '}';
    }
}
