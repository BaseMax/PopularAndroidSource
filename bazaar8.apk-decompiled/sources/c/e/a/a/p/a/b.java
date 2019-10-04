package c.e.a.a.p.a;

import c.e.a.a.C0743p;
import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.o.I;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import java.nio.ByteBuffer;

/* compiled from: CameraMotionRenderer */
public class b extends C0743p {

    /* renamed from: j  reason: collision with root package name */
    public final E f9652j = new E();

    /* renamed from: k  reason: collision with root package name */
    public final f f9653k = new f(1);

    /* renamed from: l  reason: collision with root package name */
    public final v f9654l = new v();
    public long m;
    public a n;
    public long o;

    public b() {
        super(5);
    }

    public int a(Format format) {
        return "application/x-camera-motion".equals(format.f12514i) ? 4 : 0;
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return g();
    }

    public void t() {
        x();
    }

    public final void x() {
        this.o = 0;
        a aVar = this.n;
        if (aVar != null) {
            aVar.a();
        }
    }

    public void a(int i2, Object obj) {
        if (i2 == 7) {
            this.n = (a) obj;
        } else {
            super.a(i2, obj);
        }
    }

    public void a(Format[] formatArr, long j2) {
        this.m = j2;
    }

    public void a(long j2, boolean z) {
        x();
    }

    public void a(long j2, long j3) {
        while (!g() && this.o < 100000 + j2) {
            this.f9653k.g();
            if (a(this.f9652j, this.f9653k, false) == -4 && !this.f9653k.i()) {
                this.f9653k.k();
                f fVar = this.f9653k;
                this.o = fVar.f7546d;
                if (this.n != null) {
                    float[] a2 = a(fVar.f7545c);
                    if (a2 != null) {
                        a aVar = this.n;
                        I.a(aVar);
                        aVar.a(this.o - this.m, a2);
                    }
                }
            } else {
                return;
            }
        }
    }

    public final float[] a(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.f9654l.a(byteBuffer.array(), byteBuffer.limit());
        this.f9654l.e(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i2 = 0; i2 < 3; i2++) {
            fArr[i2] = Float.intBitsToFloat(this.f9654l.l());
        }
        return fArr;
    }
}
