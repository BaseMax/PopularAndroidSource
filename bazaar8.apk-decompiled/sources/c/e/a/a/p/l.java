package c.e.a.a.p;

import c.e.a.a.o.t;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;

/* compiled from: HevcConfig */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f9700a;

    /* renamed from: b  reason: collision with root package name */
    public final int f9701b;

    public l(List<byte[]> list, int i2) {
        this.f9700a = list;
        this.f9701b = i2;
    }

    public static l a(v vVar) {
        List list;
        try {
            vVar.f(21);
            int u = vVar.u() & 3;
            int u2 = vVar.u();
            int c2 = vVar.c();
            int i2 = 0;
            int i3 = 0;
            while (i2 < u2) {
                vVar.f(1);
                int A = vVar.A();
                int i4 = i3;
                for (int i5 = 0; i5 < A; i5++) {
                    int A2 = vVar.A();
                    i4 += A2 + 4;
                    vVar.f(A2);
                }
                i2++;
                i3 = i4;
            }
            vVar.e(c2);
            byte[] bArr = new byte[i3];
            int i6 = 0;
            int i7 = 0;
            while (i6 < u2) {
                vVar.f(1);
                int A3 = vVar.A();
                int i8 = i7;
                for (int i9 = 0; i9 < A3; i9++) {
                    int A4 = vVar.A();
                    System.arraycopy(t.f9611a, 0, bArr, i8, t.f9611a.length);
                    int length = i8 + t.f9611a.length;
                    System.arraycopy(vVar.f9634a, vVar.c(), bArr, length, A4);
                    i8 = length + A4;
                    vVar.f(A4);
                }
                i6++;
                i7 = i8;
            }
            if (i3 == 0) {
                list = null;
            } else {
                list = Collections.singletonList(bArr);
            }
            return new l(list, u + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new ParserException("Error parsing HEVC config", e2);
        }
    }
}
