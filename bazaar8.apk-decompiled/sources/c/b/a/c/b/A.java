package c.b.a.c.b;

import b.i.j.e;
import c.b.a.c.b.j;
import c.b.a.c.f;
import c.b.a.i.i;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: LoadPath */
public class A<Data, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    public final Class<Data> f3807a;

    /* renamed from: b  reason: collision with root package name */
    public final e<List<Throwable>> f3808b;

    /* renamed from: c  reason: collision with root package name */
    public final List<? extends j<Data, ResourceType, Transcode>> f3809c;

    /* renamed from: d  reason: collision with root package name */
    public final String f3810d;

    public A(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<j<Data, ResourceType, Transcode>> list, e<List<Throwable>> eVar) {
        this.f3807a = cls;
        this.f3808b = eVar;
        i.a(list);
        this.f3809c = list;
        this.f3810d = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public D<Transcode> a(c.b.a.c.a.e<Data> eVar, f fVar, int i2, int i3, j.a<ResourceType> aVar) {
        List<Throwable> a2 = this.f3808b.a();
        i.a(a2);
        List list = a2;
        try {
            D<Transcode> a3 = a(eVar, fVar, i2, i3, aVar, list);
            return a3;
        } finally {
            this.f3808b.a(list);
        }
    }

    public String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f3809c.toArray()) + '}';
    }

    public final D<Transcode> a(c.b.a.c.a.e<Data> eVar, f fVar, int i2, int i3, j.a<ResourceType> aVar, List<Throwable> list) {
        List<Throwable> list2 = list;
        int size = this.f3809c.size();
        D<Transcode> d2 = null;
        for (int i4 = 0; i4 < size; i4++) {
            try {
                d2 = ((j) this.f3809c.get(i4)).a(eVar, i2, i3, fVar, aVar);
            } catch (GlideException e2) {
                list2.add(e2);
            }
            if (d2 != null) {
                break;
            }
        }
        if (d2 != null) {
            return d2;
        }
        throw new GlideException(this.f3810d, (List<Throwable>) new ArrayList(list2));
    }
}
