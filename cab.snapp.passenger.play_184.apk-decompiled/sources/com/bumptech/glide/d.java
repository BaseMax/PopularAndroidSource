package com.bumptech.glide;

import android.content.Context;
import androidx.collection.ArrayMap;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.a.j;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.b.i;
import com.bumptech.glide.load.b.c.a;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.manager.f;
import com.bumptech.glide.manager.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    l.a f2000a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<Class<?>, i<?, ?>> f2001b = new ArrayMap();
    private k c;
    private e d;
    private b e;
    private h f;
    private a g;
    private a h;
    private a.C0040a i;
    private i j;
    private com.bumptech.glide.manager.d k;
    private int l = 4;
    private com.bumptech.glide.e.h m = new com.bumptech.glide.e.h();
    private com.bumptech.glide.load.b.c.a n;
    private boolean o;
    private List<g<Object>> p;
    private boolean q;

    public final d setBitmapPool(e eVar) {
        this.d = eVar;
        return this;
    }

    public final d setArrayPool(b bVar) {
        this.e = bVar;
        return this;
    }

    public final d setMemoryCache(h hVar) {
        this.f = hVar;
        return this;
    }

    public final d setDiskCache(a.C0040a aVar) {
        this.i = aVar;
        return this;
    }

    @Deprecated
    public final d setResizeExecutor(com.bumptech.glide.load.b.c.a aVar) {
        return setSourceExecutor(aVar);
    }

    public final d setSourceExecutor(com.bumptech.glide.load.b.c.a aVar) {
        this.g = aVar;
        return this;
    }

    public final d setDiskCacheExecutor(com.bumptech.glide.load.b.c.a aVar) {
        this.h = aVar;
        return this;
    }

    public final d setAnimationExecutor(com.bumptech.glide.load.b.c.a aVar) {
        this.n = aVar;
        return this;
    }

    public final d setDefaultRequestOptions(com.bumptech.glide.e.h hVar) {
        this.m = hVar;
        return this;
    }

    public final <T> d setDefaultTransitionOptions(Class<T> cls, i<?, T> iVar) {
        this.f2001b.put(cls, iVar);
        return this;
    }

    public final d setMemorySizeCalculator(i.a aVar) {
        return setMemorySizeCalculator(aVar.build());
    }

    public final d setMemorySizeCalculator(i iVar) {
        this.j = iVar;
        return this;
    }

    public final d setConnectivityMonitorFactory(com.bumptech.glide.manager.d dVar) {
        this.k = dVar;
        return this;
    }

    public final d setLogLevel(int i2) {
        if (i2 < 2 || i2 > 6) {
            throw new IllegalArgumentException("Log level must be one of Log.VERBOSE, Log.DEBUG, Log.INFO, Log.WARN, or Log.ERROR");
        }
        this.l = i2;
        return this;
    }

    public final d setIsActiveResourceRetentionAllowed(boolean z) {
        this.o = z;
        return this;
    }

    public final d addGlobalRequestListener(g<Object> gVar) {
        if (this.p == null) {
            this.p = new ArrayList();
        }
        this.p.add(gVar);
        return this;
    }

    public final d setLogRequestOrigins(boolean z) {
        this.q = z;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final c a(Context context) {
        if (this.g == null) {
            this.g = com.bumptech.glide.load.b.c.a.newSourceExecutor();
        }
        if (this.h == null) {
            this.h = com.bumptech.glide.load.b.c.a.newDiskCacheExecutor();
        }
        if (this.n == null) {
            this.n = com.bumptech.glide.load.b.c.a.newAnimationExecutor();
        }
        if (this.j == null) {
            this.j = new i.a(context).build();
        }
        if (this.k == null) {
            this.k = new f();
        }
        if (this.d == null) {
            int bitmapPoolSize = this.j.getBitmapPoolSize();
            if (bitmapPoolSize > 0) {
                this.d = new com.bumptech.glide.load.b.a.k((long) bitmapPoolSize);
            } else {
                this.d = new com.bumptech.glide.load.b.a.f();
            }
        }
        if (this.e == null) {
            this.e = new j(this.j.getArrayPoolSizeInBytes());
        }
        if (this.f == null) {
            this.f = new com.bumptech.glide.load.b.b.g((long) this.j.getMemoryCacheSize());
        }
        if (this.i == null) {
            this.i = new com.bumptech.glide.load.b.b.f(context);
        }
        if (this.c == null) {
            k kVar = new k(this.f, this.i, this.h, this.g, com.bumptech.glide.load.b.c.a.newUnlimitedSourceExecutor(), com.bumptech.glide.load.b.c.a.newAnimationExecutor(), this.o);
            this.c = kVar;
        }
        List<g<Object>> list = this.p;
        if (list == null) {
            this.p = Collections.emptyList();
        } else {
            this.p = Collections.unmodifiableList(list);
        }
        Context context2 = context;
        c cVar = new c(context2, this.c, this.f, this.d, this.e, new l(this.f2000a), this.k, this.l, (com.bumptech.glide.e.h) this.m.lock(), this.f2001b, this.p, this.q);
        return cVar;
    }
}
