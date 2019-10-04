package com.bumptech.glide.load.b.b;

import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.d;

public final class g extends com.bumptech.glide.g.g<d, v<?>> implements h {

    /* renamed from: a  reason: collision with root package name */
    private h.a f2159a;

    public final /* bridge */ /* synthetic */ int getSize(Object obj) {
        v vVar = (v) obj;
        if (vVar == null) {
            return super.getSize(null);
        }
        return vVar.getSize();
    }

    public final /* synthetic */ void onItemEvicted(Object obj, Object obj2) {
        v vVar = (v) obj2;
        h.a aVar = this.f2159a;
        if (aVar != null && vVar != null) {
            aVar.onResourceRemoved(vVar);
        }
    }

    public final /* bridge */ /* synthetic */ v put(d dVar, v vVar) {
        return (v) super.put(dVar, vVar);
    }

    public final /* bridge */ /* synthetic */ v remove(d dVar) {
        return (v) super.remove(dVar);
    }

    public g(long j) {
        super(j);
    }

    public final void setResourceRemovedListener(h.a aVar) {
        this.f2159a = aVar;
    }

    public final void trimMemory(int i) {
        if (i >= 40) {
            clearMemory();
            return;
        }
        if (i >= 20 || i == 15) {
            a(getMaxSize() / 2);
        }
    }
}
