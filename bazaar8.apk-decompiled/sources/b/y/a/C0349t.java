package b.y.a;

import b.y.a.C0350u;
import java.util.Comparator;

/* renamed from: b.y.a.t  reason: case insensitive filesystem */
/* compiled from: GapWorker */
class C0349t implements Comparator<C0350u.b> {
    /* renamed from: a */
    public int compare(C0350u.b bVar, C0350u.b bVar2) {
        int i2 = 1;
        if ((bVar.f3556d == null) != (bVar2.f3556d == null)) {
            if (bVar.f3556d != null) {
                i2 = -1;
            }
            return i2;
        }
        boolean z = bVar.f3553a;
        if (z != bVar2.f3553a) {
            if (z) {
                i2 = -1;
            }
            return i2;
        }
        int i3 = bVar2.f3554b - bVar.f3554b;
        if (i3 != 0) {
            return i3;
        }
        int i4 = bVar.f3555c - bVar2.f3555c;
        if (i4 != 0) {
            return i4;
        }
        return 0;
    }
}
