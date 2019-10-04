package com.bumptech.glide.load.b;

import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.e.e;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public final class i<DataType, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<DataType> f2206a;

    /* renamed from: b  reason: collision with root package name */
    private final List<? extends h<DataType, ResourceType>> f2207b;
    private final e<ResourceType, Transcode> c;
    private final Pools.Pool<List<Throwable>> d;
    private final String e;

    interface a<ResourceType> {
        v<ResourceType> onResourceDecoded(v<ResourceType> vVar);
    }

    public i(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends h<DataType, ResourceType>> list, e<ResourceType, Transcode> eVar, Pools.Pool<List<Throwable>> pool) {
        this.f2206a = cls;
        this.f2207b = list;
        this.c = eVar;
        this.d = pool;
        this.e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final v<Transcode> decode(com.bumptech.glide.load.a.e<DataType> eVar, int i, int i2, g gVar, a<ResourceType> aVar) throws q {
        return this.c.transcode(aVar.onResourceDecoded(a(eVar, i, i2, gVar)), gVar);
    }

    private v<ResourceType> a(com.bumptech.glide.load.a.e<DataType> eVar, int i, int i2, g gVar) throws q {
        List list = (List) j.checkNotNull(this.d.acquire());
        try {
            v<ResourceType> a2 = a(eVar, i, i2, gVar, list);
            return a2;
        } finally {
            this.d.release(list);
        }
    }

    private v<ResourceType> a(com.bumptech.glide.load.a.e<DataType> eVar, int i, int i2, g gVar, List<Throwable> list) throws q {
        int size = this.f2207b.size();
        v<ResourceType> vVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            h hVar = (h) this.f2207b.get(i3);
            try {
                if (hVar.handles(eVar.rewindAndGet(), gVar)) {
                    vVar = hVar.decode(eVar.rewindAndGet(), i, i2, gVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    new StringBuilder("Failed to decode data for ").append(hVar);
                }
                list.add(e2);
            }
            if (vVar != null) {
                break;
            }
        }
        if (vVar != null) {
            return vVar;
        }
        throw new q(this.e, (List<Throwable>) new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f2206a + ", decoders=" + this.f2207b + ", transcoder=" + this.c + '}';
    }
}
