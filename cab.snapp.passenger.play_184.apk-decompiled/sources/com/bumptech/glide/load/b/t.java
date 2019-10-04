package com.bumptech.glide.load.b;

import androidx.core.util.Pools;
import com.bumptech.glide.g.j;
import com.bumptech.glide.load.a.e;
import com.bumptech.glide.load.b.i;
import com.bumptech.glide.load.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class t<Data, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    private final Class<Data> f2239a;

    /* renamed from: b  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f2240b;
    private final List<? extends i<Data, ResourceType, Transcode>> c;
    private final String d;

    public t(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<i<Data, ResourceType, Transcode>> list, Pools.Pool<List<Throwable>> pool) {
        this.f2239a = cls;
        this.f2240b = pool;
        this.c = (List) j.checkNotEmpty(list);
        this.d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final v<Transcode> load(e<Data> eVar, g gVar, int i, int i2, i.a<ResourceType> aVar) throws q {
        List list = (List) j.checkNotNull(this.f2240b.acquire());
        try {
            v<Transcode> a2 = a(eVar, gVar, i, i2, aVar, list);
            return a2;
        } finally {
            this.f2240b.release(list);
        }
    }

    private v<Transcode> a(e<Data> eVar, g gVar, int i, int i2, i.a<ResourceType> aVar, List<Throwable> list) throws q {
        List<Throwable> list2 = list;
        int size = this.c.size();
        v<Transcode> vVar = null;
        for (int i3 = 0; i3 < size; i3++) {
            try {
                vVar = ((i) this.c.get(i3)).decode(eVar, i, i2, gVar, aVar);
            } catch (q e) {
                list2.add(e);
            }
            if (vVar != null) {
                break;
            }
        }
        if (vVar != null) {
            return vVar;
        }
        throw new q(this.d, (List<Throwable>) new ArrayList(list2));
    }

    public final Class<Data> getDataClass() {
        return this.f2239a;
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.c.toArray()) + '}';
    }
}
