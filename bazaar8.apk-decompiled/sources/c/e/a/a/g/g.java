package c.e.a.a.g;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import c.e.a.a.C0743p;
import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.d.l;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.Arrays;

/* compiled from: MetadataRenderer */
public final class g extends C0743p implements Handler.Callback {

    /* renamed from: j  reason: collision with root package name */
    public final d f8358j;

    /* renamed from: k  reason: collision with root package name */
    public final f f8359k;

    /* renamed from: l  reason: collision with root package name */
    public final Handler f8360l;
    public final E m;
    public final e n;
    public final Metadata[] o;
    public final long[] p;
    public int q;
    public int r;
    public b s;
    public boolean t;

    public g(f fVar, Looper looper) {
        this(fVar, looper, d.f8353a);
    }

    public int a(Format format) {
        if (!this.f8358j.a(format)) {
            return 0;
        }
        return C0743p.a((l<?>) null, format.f12517l) ? 4 : 2;
    }

    public final void b(Metadata metadata) {
        this.f8359k.a(metadata);
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return this.t;
    }

    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    public void t() {
        x();
        this.s = null;
    }

    public final void x() {
        Arrays.fill(this.o, null);
        this.q = 0;
        this.r = 0;
    }

    public g(f fVar, Looper looper, d dVar) {
        super(4);
        Handler handler;
        C0737e.a(fVar);
        this.f8359k = fVar;
        if (looper == null) {
            handler = null;
        } else {
            handler = I.a(looper, (Handler.Callback) this);
        }
        this.f8360l = handler;
        C0737e.a(dVar);
        this.f8358j = dVar;
        this.m = new E();
        this.n = new e();
        this.o = new Metadata[5];
        this.p = new long[5];
    }

    public void a(Format[] formatArr, long j2) {
        this.s = this.f8358j.b(formatArr[0]);
    }

    public void a(long j2, boolean z) {
        x();
        this.t = false;
    }

    public void a(long j2, long j3) {
        if (!this.t && this.r < 5) {
            this.n.g();
            if (a(this.m, (f) this.n, false) == -4) {
                if (this.n.i()) {
                    this.t = true;
                } else if (!this.n.h()) {
                    e eVar = this.n;
                    eVar.f8357f = this.m.f7255a.m;
                    eVar.k();
                    int i2 = (this.q + this.r) % 5;
                    Metadata a2 = this.s.a(this.n);
                    if (a2 != null) {
                        this.o[i2] = a2;
                        this.p[i2] = this.n.f7546d;
                        this.r++;
                    }
                }
            }
        }
        if (this.r > 0) {
            long[] jArr = this.p;
            int i3 = this.q;
            if (jArr[i3] <= j2) {
                a(this.o[i3]);
                Metadata[] metadataArr = this.o;
                int i4 = this.q;
                metadataArr[i4] = null;
                this.q = (i4 + 1) % 5;
                this.r--;
            }
        }
    }

    public final void a(Metadata metadata) {
        Handler handler = this.f8360l;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            b(metadata);
        }
    }
}
