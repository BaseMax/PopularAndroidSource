package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.stream.JsonToken;
import java.lang.reflect.Array;
import java.util.ArrayList;

/* renamed from: c.e.d.b.a.a  reason: case insensitive filesystem */
/* compiled from: ArrayTypeAdapter */
public final class C1007a<E> extends x<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f11747a = new ArrayTypeAdapter$1();

    /* renamed from: b  reason: collision with root package name */
    public final Class<E> f11748b;

    /* renamed from: c  reason: collision with root package name */
    public final x<E> f11749c;

    public C1007a(j jVar, x<E> xVar, Class<E> cls) {
        this.f11749c = new C1019m(jVar, xVar, cls);
        this.f11748b = cls;
    }

    public Object a(b bVar) {
        if (bVar.K() == JsonToken.NULL) {
            bVar.H();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        bVar.s();
        while (bVar.z()) {
            arrayList.add(this.f11749c.a(bVar));
        }
        bVar.x();
        int size = arrayList.size();
        Object newInstance = Array.newInstance(this.f11748b, size);
        for (int i2 = 0; i2 < size; i2++) {
            Array.set(newInstance, i2, arrayList.get(i2));
        }
        return newInstance;
    }

    public void a(c cVar, Object obj) {
        if (obj == null) {
            cVar.C();
            return;
        }
        cVar.u();
        int length = Array.getLength(obj);
        for (int i2 = 0; i2 < length; i2++) {
            this.f11749c.a(cVar, Array.get(obj, i2));
        }
        cVar.w();
    }
}
