package c.e.d;

import c.e.d.d.b;
import c.e.d.d.c;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* compiled from: Gson */
class i extends x<AtomicLongArray> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ x f11845a;

    public i(x xVar) {
        this.f11845a = xVar;
    }

    public void a(c cVar, AtomicLongArray atomicLongArray) {
        cVar.u();
        int length = atomicLongArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            this.f11845a.a(cVar, Long.valueOf(atomicLongArray.get(i2)));
        }
        cVar.w();
    }

    public AtomicLongArray a(b bVar) {
        ArrayList arrayList = new ArrayList();
        bVar.s();
        while (bVar.z()) {
            arrayList.add(Long.valueOf(((Number) this.f11845a.a(bVar)).longValue()));
        }
        bVar.x();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i2 = 0; i2 < size; i2++) {
            atomicLongArray.set(i2, ((Long) arrayList.get(i2)).longValue());
        }
        return atomicLongArray;
    }
}
