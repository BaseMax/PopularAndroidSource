package com.bumptech.glide.load.b;

import androidx.core.util.Pools;
import com.bumptech.glide.g.a.a;
import com.bumptech.glide.g.a.c;
import com.bumptech.glide.g.j;

final class u<Z> implements a.c, v<Z> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pools.Pool<u<?>> f2241a = a.threadSafe(20, new a.C0038a<u<?>>() {
        public final u<?> create() {
            return new u<>();
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private final c f2242b = c.newInstance();
    private v<Z> c;
    private boolean d;
    private boolean e;

    static <Z> u<Z> a(v<Z> vVar) {
        u<Z> uVar = (u) j.checkNotNull(f2241a.acquire());
        uVar.e = false;
        uVar.d = true;
        uVar.c = vVar;
        return uVar;
    }

    u() {
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        this.f2242b.throwIfRecycled();
        if (this.d) {
            this.d = false;
            if (this.e) {
                recycle();
            }
        } else {
            throw new IllegalStateException("Already unlocked");
        }
    }

    public final Class<Z> getResourceClass() {
        return this.c.getResourceClass();
    }

    public final Z get() {
        return this.c.get();
    }

    public final int getSize() {
        return this.c.getSize();
    }

    public final synchronized void recycle() {
        this.f2242b.throwIfRecycled();
        this.e = true;
        if (!this.d) {
            this.c.recycle();
            this.c = null;
            f2241a.release(this);
        }
    }

    public final c getVerifier() {
        return this.f2242b;
    }
}
