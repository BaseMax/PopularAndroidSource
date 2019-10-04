package c.e.d.d;

import c.e.d.b.a.C1010d;
import c.e.d.b.s;

/* compiled from: JsonReader */
class a extends s {
    public void a(b bVar) {
        if (bVar instanceof C1010d) {
            ((C1010d) bVar).T();
            return;
        }
        int i2 = bVar.f11827i;
        if (i2 == 0) {
            i2 = bVar.w();
        }
        if (i2 == 13) {
            bVar.f11827i = 9;
        } else if (i2 == 12) {
            bVar.f11827i = 8;
        } else if (i2 == 14) {
            bVar.f11827i = 10;
        } else {
            throw new IllegalStateException("Expected a name but was " + bVar.K() + bVar.B());
        }
    }
}
