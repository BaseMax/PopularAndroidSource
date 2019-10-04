package c.e.d.b.a;

import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.x;
import com.google.gson.JsonSyntaxException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicIntegerArray;

/* renamed from: c.e.d.b.a.n  reason: case insensitive filesystem */
/* compiled from: TypeAdapters */
class C1020n extends x<AtomicIntegerArray> {
    public AtomicIntegerArray a(b bVar) {
        ArrayList arrayList = new ArrayList();
        bVar.s();
        while (bVar.z()) {
            try {
                arrayList.add(Integer.valueOf(bVar.E()));
            } catch (NumberFormatException e2) {
                throw new JsonSyntaxException((Throwable) e2);
            }
        }
        bVar.x();
        int size = arrayList.size();
        AtomicIntegerArray atomicIntegerArray = new AtomicIntegerArray(size);
        for (int i2 = 0; i2 < size; i2++) {
            atomicIntegerArray.set(i2, ((Integer) arrayList.get(i2)).intValue());
        }
        return atomicIntegerArray;
    }

    public void a(c cVar, AtomicIntegerArray atomicIntegerArray) {
        cVar.u();
        int length = atomicIntegerArray.length();
        for (int i2 = 0; i2 < length; i2++) {
            cVar.h((long) atomicIntegerArray.get(i2));
        }
        cVar.w();
    }
}
