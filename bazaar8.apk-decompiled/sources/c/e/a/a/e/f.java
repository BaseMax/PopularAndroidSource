package c.e.a.a.e;

import c.e.a.a.e.q;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import java.io.EOFException;

/* compiled from: DummyTrackOutput */
public final class f implements q {
    public int a(h hVar, int i2, boolean z) {
        int b2 = hVar.b(i2);
        if (b2 != -1) {
            return b2;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public void a(long j2, int i2, int i3, int i4, q.a aVar) {
    }

    public void a(Format format) {
    }

    public void a(v vVar, int i2) {
        vVar.f(i2);
    }
}
