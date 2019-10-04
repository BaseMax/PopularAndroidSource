package c.e.a.a.k.b;

import c.e.a.a.k.c;
import c.e.a.a.o.v;
import java.util.List;

/* compiled from: DvbDecoder */
public final class a extends c {
    public final b o;

    public a(List<byte[]> list) {
        super("DvbDecoder");
        v vVar = new v(list.get(0));
        this.o = new b(vVar.A(), vVar.A());
    }

    public c a(byte[] bArr, int i2, boolean z) {
        if (z) {
            this.o.d();
        }
        return new c(this.o.a(bArr, i2));
    }
}
