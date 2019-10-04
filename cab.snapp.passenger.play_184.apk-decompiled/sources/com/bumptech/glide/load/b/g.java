package com.bumptech.glide.load.b;

import com.bumptech.glide.Priority;
import com.bumptech.glide.e;
import com.bumptech.glide.f;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.h;
import com.bumptech.glide.load.c.n;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.j;
import com.bumptech.glide.load.resource.b;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class g<Transcode> {

    /* renamed from: a  reason: collision with root package name */
    e f2192a;

    /* renamed from: b  reason: collision with root package name */
    Object f2193b;
    int c;
    int d;
    Class<?> e;
    h.d f;
    com.bumptech.glide.load.g g;
    Map<Class<?>, j<?>> h;
    Class<Transcode> i;
    d j;
    Priority k;
    j l;
    boolean m;
    boolean n;
    private final List<n.a<?>> o = new ArrayList();
    private final List<d> p = new ArrayList();
    private boolean q;
    private boolean r;

    g() {
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        this.f2192a = null;
        this.f2193b = null;
        this.j = null;
        this.e = null;
        this.i = null;
        this.g = null;
        this.k = null;
        this.h = null;
        this.l = null;
        this.o.clear();
        this.q = false;
        this.p.clear();
        this.r = false;
    }

    /* access modifiers changed from: package-private */
    public final a b() {
        return this.f.getDiskCache();
    }

    /* access modifiers changed from: package-private */
    public final boolean a(Class<?> cls) {
        return b(cls) != null;
    }

    /* access modifiers changed from: package-private */
    public final <Data> t<Data, ?, Transcode> b(Class<Data> cls) {
        return this.f2192a.getRegistry().getLoadPath(cls, this.e, this.i);
    }

    /* access modifiers changed from: package-private */
    public final <Z> j<Z> c(Class<Z> cls) {
        j<Z> jVar = this.h.get(cls);
        if (jVar == null) {
            Iterator<Map.Entry<Class<?>, j<?>>> it = this.h.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry next = it.next();
                if (((Class) next.getKey()).isAssignableFrom(cls)) {
                    jVar = (j) next.getValue();
                    break;
                }
            }
        }
        if (jVar != null) {
            return jVar;
        }
        if (!this.h.isEmpty() || !this.m) {
            return b.get();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* access modifiers changed from: package-private */
    public final List<n<File, ?>> a(File file) throws f.c {
        return this.f2192a.getRegistry().getModelLoaders(file);
    }

    /* access modifiers changed from: package-private */
    public final List<n.a<?>> c() {
        if (!this.q) {
            this.q = true;
            this.o.clear();
            List modelLoaders = this.f2192a.getRegistry().getModelLoaders(this.f2193b);
            int size = modelLoaders.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a buildLoadData = ((n) modelLoaders.get(i2)).buildLoadData(this.f2193b, this.c, this.d, this.g);
                if (buildLoadData != null) {
                    this.o.add(buildLoadData);
                }
            }
        }
        return this.o;
    }

    /* access modifiers changed from: package-private */
    public final List<d> d() {
        if (!this.r) {
            this.r = true;
            this.p.clear();
            List<n.a<?>> c2 = c();
            int size = c2.size();
            for (int i2 = 0; i2 < size; i2++) {
                n.a aVar = c2.get(i2);
                if (!this.p.contains(aVar.sourceKey)) {
                    this.p.add(aVar.sourceKey);
                }
                for (int i3 = 0; i3 < aVar.alternateKeys.size(); i3++) {
                    if (!this.p.contains(aVar.alternateKeys.get(i3))) {
                        this.p.add(aVar.alternateKeys.get(i3));
                    }
                }
            }
        }
        return this.p;
    }
}
