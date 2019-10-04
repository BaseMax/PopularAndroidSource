package c.e.a.a.p;

import c.e.a.a.o.C0739g;
import c.e.a.a.o.t;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AvcConfig */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f9692a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9693b;

    /* renamed from: c  reason: collision with root package name */
    public final int f9694c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9695d;

    /* renamed from: e  reason: collision with root package name */
    public final float f9696e;

    public h(List<byte[]> list, int i2, int i3, int i4, float f2) {
        this.f9692a = list;
        this.f9693b = i2;
        this.f9694c = i3;
        this.f9695d = i4;
        this.f9696e = f2;
    }

    public static byte[] a(v vVar) {
        int A = vVar.A();
        int c2 = vVar.c();
        vVar.f(A);
        return C0739g.a(vVar.f9634a, c2, A);
    }

    public static h b(v vVar) {
        float f2;
        int i2;
        int i3;
        try {
            vVar.f(4);
            int u = (vVar.u() & 3) + 1;
            if (u != 3) {
                ArrayList arrayList = new ArrayList();
                int u2 = vVar.u() & 31;
                for (int i4 = 0; i4 < u2; i4++) {
                    arrayList.add(a(vVar));
                }
                int u3 = vVar.u();
                for (int i5 = 0; i5 < u3; i5++) {
                    arrayList.add(a(vVar));
                }
                if (u2 > 0) {
                    t.b c2 = t.c((byte[]) arrayList.get(0), u, ((byte[]) arrayList.get(0)).length);
                    int i6 = c2.f9622e;
                    int i7 = c2.f9623f;
                    f2 = c2.f9624g;
                    i3 = i6;
                    i2 = i7;
                } else {
                    i3 = -1;
                    i2 = -1;
                    f2 = 1.0f;
                }
                h hVar = new h(arrayList, u, i3, i2, f2);
                return hVar;
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new ParserException("Error parsing AVC config", e2);
        }
    }
}
