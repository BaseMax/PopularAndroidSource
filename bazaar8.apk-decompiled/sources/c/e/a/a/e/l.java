package c.e.a.a.e;

import c.e.a.a.g.c.h;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.metadata.Metadata;
import java.io.EOFException;

/* compiled from: Id3Peeker */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final v f8307a = new v(10);

    public Metadata a(h hVar, h.a aVar) {
        Metadata metadata = null;
        int i2 = 0;
        while (true) {
            try {
                hVar.a(this.f8307a.f9634a, 0, 10);
                this.f8307a.e(0);
                if (this.f8307a.x() != h.f8348b) {
                    break;
                }
                this.f8307a.f(3);
                int t = this.f8307a.t();
                int i3 = t + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i3];
                    System.arraycopy(this.f8307a.f9634a, 0, bArr, 0, 10);
                    hVar.a(bArr, 10, t);
                    metadata = new h(aVar).a(bArr, i3);
                } else {
                    hVar.a(t);
                }
                i2 += i3;
            } catch (EOFException unused) {
            }
        }
        hVar.b();
        hVar.a(i2);
        return metadata;
    }
}
