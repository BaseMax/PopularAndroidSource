package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import c.e.d.y;
import com.google.gson.internal.LinkedTreeMap;
import java.util.ArrayList;

/* renamed from: c.e.d.b.a.h  reason: case insensitive filesystem */
/* compiled from: ObjectTypeAdapter */
public final class C1014h extends x<Object> {

    /* renamed from: a  reason: collision with root package name */
    public static final y f11755a = new ObjectTypeAdapter$1();

    /* renamed from: b  reason: collision with root package name */
    public final j f11756b;

    public C1014h(j jVar) {
        this.f11756b = jVar;
    }

    public Object a(b bVar) {
        switch (C1013g.f11754a[bVar.K().ordinal()]) {
            case 1:
                ArrayList arrayList = new ArrayList();
                bVar.s();
                while (bVar.z()) {
                    arrayList.add(a(bVar));
                }
                bVar.x();
                return arrayList;
            case 2:
                LinkedTreeMap linkedTreeMap = new LinkedTreeMap();
                bVar.t();
                while (bVar.z()) {
                    linkedTreeMap.put(bVar.G(), a(bVar));
                }
                bVar.y();
                return linkedTreeMap;
            case 3:
                return bVar.I();
            case 4:
                return Double.valueOf(bVar.D());
            case 5:
                return Boolean.valueOf(bVar.C());
            case 6:
                bVar.H();
                return null;
            default:
                throw new IllegalStateException();
        }
    }

    public void a(c cVar, Object obj) {
        if (obj == null) {
            cVar.C();
            return;
        }
        x<?> a2 = this.f11756b.a(obj.getClass());
        if (a2 instanceof C1014h) {
            cVar.v();
            cVar.x();
            return;
        }
        a2.a(cVar, obj);
    }
}
