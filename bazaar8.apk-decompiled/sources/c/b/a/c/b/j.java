package c.b.a.c.b;

import android.util.Log;
import c.b.a.c.d.f.e;
import c.b.a.c.f;
import c.b.a.c.g;
import c.b.a.i.i;
import com.bumptech.glide.load.engine.GlideException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DecodePath */
public class j<DataType, ResourceType, Transcode> {

    /* renamed from: a  reason: collision with root package name */
    public final Class<DataType> f3982a;

    /* renamed from: b  reason: collision with root package name */
    public final List<? extends g<DataType, ResourceType>> f3983b;

    /* renamed from: c  reason: collision with root package name */
    public final e<ResourceType, Transcode> f3984c;

    /* renamed from: d  reason: collision with root package name */
    public final b.i.j.e<List<Throwable>> f3985d;

    /* renamed from: e  reason: collision with root package name */
    public final String f3986e;

    /* compiled from: DecodePath */
    interface a<ResourceType> {
        D<ResourceType> a(D<ResourceType> d2);
    }

    public j(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends g<DataType, ResourceType>> list, e<ResourceType, Transcode> eVar, b.i.j.e<List<Throwable>> eVar2) {
        this.f3982a = cls;
        this.f3983b = list;
        this.f3984c = eVar;
        this.f3985d = eVar2;
        this.f3986e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public D<Transcode> a(c.b.a.c.a.e<DataType> eVar, int i2, int i3, f fVar, a<ResourceType> aVar) {
        return this.f3984c.a(aVar.a(a(eVar, i2, i3, fVar)), fVar);
    }

    public String toString() {
        return "DecodePath{ dataClass=" + this.f3982a + ", decoders=" + this.f3983b + ", transcoder=" + this.f3984c + '}';
    }

    public final D<ResourceType> a(c.b.a.c.a.e<DataType> eVar, int i2, int i3, f fVar) {
        List<Throwable> a2 = this.f3985d.a();
        i.a(a2);
        List list = a2;
        try {
            D<ResourceType> a3 = a(eVar, i2, i3, fVar, (List<Throwable>) list);
            return a3;
        } finally {
            this.f3985d.a(list);
        }
    }

    public final D<ResourceType> a(c.b.a.c.a.e<DataType> eVar, int i2, int i3, f fVar, List<Throwable> list) {
        int size = this.f3983b.size();
        D<ResourceType> d2 = null;
        for (int i4 = 0; i4 < size; i4++) {
            g gVar = (g) this.f3983b.get(i4);
            try {
                if (gVar.a(eVar.a(), fVar)) {
                    d2 = gVar.a(eVar.a(), i2, i3, fVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + gVar, e2);
                }
                list.add(e2);
            }
            if (d2 != null) {
                break;
            }
        }
        if (d2 != null) {
            return d2;
        }
        throw new GlideException(this.f3986e, (List<Throwable>) new ArrayList(list));
    }
}
