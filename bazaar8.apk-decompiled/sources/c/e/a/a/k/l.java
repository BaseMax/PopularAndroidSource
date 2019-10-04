package c.e.a.a.k;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import c.e.a.a.C0743p;
import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.Collections;
import java.util.List;

/* compiled from: TextRenderer */
public final class l extends C0743p implements Handler.Callback {

    /* renamed from: j  reason: collision with root package name */
    public final Handler f9290j;

    /* renamed from: k  reason: collision with root package name */
    public final k f9291k;

    /* renamed from: l  reason: collision with root package name */
    public final h f9292l;
    public final E m;
    public boolean n;
    public boolean o;
    public int p;
    public Format q;
    public f r;
    public i s;
    public j t;
    public j u;
    public int v;

    public l(k kVar, Looper looper) {
        this(kVar, looper, h.f9244a);
    }

    public final void A() {
        z();
        this.r.a();
        this.r = null;
        this.p = 0;
    }

    public final void B() {
        A();
        this.r = this.f9292l.b(this.q);
    }

    public int a(Format format) {
        if (!this.f9292l.a(format)) {
            return s.k(format.f12514i) ? 1 : 0;
        }
        return C0743p.a((c.e.a.a.d.l<?>) null, format.f12517l) ? 4 : 2;
    }

    public final void b(List<b> list) {
        Handler handler = this.f9290j;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            a(list);
        }
    }

    public boolean c() {
        return true;
    }

    public boolean d() {
        return this.o;
    }

    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            a((List<b>) (List) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    public void t() {
        this.q = null;
        x();
        A();
    }

    public final void x() {
        b(Collections.emptyList());
    }

    public final long y() {
        int i2 = this.v;
        if (i2 == -1 || i2 >= this.t.f()) {
            return Long.MAX_VALUE;
        }
        return this.t.a(this.v);
    }

    public final void z() {
        this.s = null;
        this.v = -1;
        j jVar = this.t;
        if (jVar != null) {
            jVar.k();
            this.t = null;
        }
        j jVar2 = this.u;
        if (jVar2 != null) {
            jVar2.k();
            this.u = null;
        }
    }

    public l(k kVar, Looper looper, h hVar) {
        super(3);
        Handler handler;
        C0737e.a(kVar);
        this.f9291k = kVar;
        if (looper == null) {
            handler = null;
        } else {
            handler = I.a(looper, (Handler.Callback) this);
        }
        this.f9290j = handler;
        this.f9292l = hVar;
        this.m = new E();
    }

    public void a(Format[] formatArr, long j2) {
        this.q = formatArr[0];
        if (this.r != null) {
            this.p = 1;
        } else {
            this.r = this.f9292l.b(this.q);
        }
    }

    public void a(long j2, boolean z) {
        x();
        this.n = false;
        this.o = false;
        if (this.p != 0) {
            B();
            return;
        }
        z();
        this.r.flush();
    }

    public void a(long j2, long j3) {
        boolean z;
        if (!this.o) {
            if (this.u == null) {
                this.r.a(j2);
                try {
                    this.u = (j) this.r.b();
                } catch (SubtitleDecoderException e2) {
                    throw ExoPlaybackException.a(e2, q());
                }
            }
            if (getState() == 2) {
                if (this.t != null) {
                    long y = y();
                    z = false;
                    while (y <= j2) {
                        this.v++;
                        y = y();
                        z = true;
                    }
                } else {
                    z = false;
                }
                j jVar = this.u;
                if (jVar != null) {
                    if (jVar.i()) {
                        if (!z && y() == Long.MAX_VALUE) {
                            if (this.p == 2) {
                                B();
                            } else {
                                z();
                                this.o = true;
                            }
                        }
                    } else if (this.u.f7548b <= j2) {
                        j jVar2 = this.t;
                        if (jVar2 != null) {
                            jVar2.k();
                        }
                        this.t = this.u;
                        this.u = null;
                        this.v = this.t.a(j2);
                        z = true;
                    }
                }
                if (z) {
                    b(this.t.b(j2));
                }
                if (this.p != 2) {
                    while (!this.n) {
                        try {
                            if (this.s == null) {
                                this.s = (i) this.r.c();
                                if (this.s == null) {
                                    return;
                                }
                            }
                            if (this.p == 1) {
                                this.s.e(4);
                                this.r.a(this.s);
                                this.s = null;
                                this.p = 2;
                                return;
                            }
                            int a2 = a(this.m, (f) this.s, false);
                            if (a2 == -4) {
                                if (this.s.i()) {
                                    this.n = true;
                                } else {
                                    this.s.f9287f = this.m.f7255a.m;
                                    this.s.k();
                                }
                                this.r.a(this.s);
                                this.s = null;
                            } else if (a2 == -3) {
                                break;
                            }
                        } catch (SubtitleDecoderException e3) {
                            throw ExoPlaybackException.a(e3, q());
                        }
                    }
                }
            }
        }
    }

    public final void a(List<b> list) {
        this.f9291k.a(list);
    }
}
