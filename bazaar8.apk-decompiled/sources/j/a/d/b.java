package j.a.d;

import j.C;
import j.D;
import j.I;
import j.L;
import j.P;
import j.S;
import j.a.c.j;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import k.B;
import k.g;
import k.h;
import k.i;
import k.l;
import k.s;
import k.y;
import k.z;

/* compiled from: Http1Codec */
public final class b implements j.a.c.c {

    /* renamed from: a  reason: collision with root package name */
    public final I f15384a;

    /* renamed from: b  reason: collision with root package name */
    public final j.a.b.f f15385b;

    /* renamed from: c  reason: collision with root package name */
    public final i f15386c;

    /* renamed from: d  reason: collision with root package name */
    public final h f15387d;

    /* renamed from: e  reason: collision with root package name */
    public int f15388e = 0;

    /* renamed from: f  reason: collision with root package name */
    public long f15389f = 262144;

    /* compiled from: Http1Codec */
    private abstract class a implements z {

        /* renamed from: a  reason: collision with root package name */
        public final l f15390a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f15391b;

        /* renamed from: c  reason: collision with root package name */
        public long f15392c;

        public a() {
            this.f15390a = new l(b.this.f15386c.b());
            this.f15392c = 0;
        }

        public final void a(boolean z, IOException iOException) {
            b bVar = b.this;
            int i2 = bVar.f15388e;
            if (i2 != 6) {
                if (i2 == 5) {
                    bVar.a(this.f15390a);
                    b bVar2 = b.this;
                    bVar2.f15388e = 6;
                    j.a.b.f fVar = bVar2.f15385b;
                    if (fVar != null) {
                        fVar.a(!z, bVar2, this.f15392c, iOException);
                    }
                    return;
                }
                throw new IllegalStateException("state: " + b.this.f15388e);
            }
        }

        public B b() {
            return this.f15390a;
        }

        public long b(g gVar, long j2) {
            try {
                long b2 = b.this.f15386c.b(gVar, j2);
                if (b2 > 0) {
                    this.f15392c += b2;
                }
                return b2;
            } catch (IOException e2) {
                a(false, e2);
                throw e2;
            }
        }
    }

    /* renamed from: j.a.d.b$b  reason: collision with other inner class name */
    /* compiled from: Http1Codec */
    private final class C0149b implements y {

        /* renamed from: a  reason: collision with root package name */
        public final l f15394a = new l(b.this.f15387d.b());

        /* renamed from: b  reason: collision with root package name */
        public boolean f15395b;

        public C0149b() {
        }

        public void a(g gVar, long j2) {
            if (this.f15395b) {
                throw new IllegalStateException("closed");
            } else if (j2 != 0) {
                b.this.f15387d.c(j2);
                b.this.f15387d.a("\r\n");
                b.this.f15387d.a(gVar, j2);
                b.this.f15387d.a("\r\n");
            }
        }

        public B b() {
            return this.f15394a;
        }

        public synchronized void close() {
            if (!this.f15395b) {
                this.f15395b = true;
                b.this.f15387d.a("0\r\n\r\n");
                b.this.a(this.f15394a);
                b.this.f15388e = 3;
            }
        }

        public synchronized void flush() {
            if (!this.f15395b) {
                b.this.f15387d.flush();
            }
        }
    }

    /* compiled from: Http1Codec */
    private class c extends a {

        /* renamed from: e  reason: collision with root package name */
        public final D f15397e;

        /* renamed from: f  reason: collision with root package name */
        public long f15398f = -1;

        /* renamed from: g  reason: collision with root package name */
        public boolean f15399g = true;

        public c(D d2) {
            super();
            this.f15397e = d2;
        }

        public long b(g gVar, long j2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            } else if (this.f15391b) {
                throw new IllegalStateException("closed");
            } else if (!this.f15399g) {
                return -1;
            } else {
                long j3 = this.f15398f;
                if (j3 == 0 || j3 == -1) {
                    e();
                    if (!this.f15399g) {
                        return -1;
                    }
                }
                long b2 = super.b(gVar, Math.min(j2, this.f15398f));
                if (b2 != -1) {
                    this.f15398f -= b2;
                    return b2;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, protocolException);
                throw protocolException;
            }
        }

        public void close() {
            if (!this.f15391b) {
                if (this.f15399g && !j.a.e.a((z) this, 100, TimeUnit.MILLISECONDS)) {
                    a(false, null);
                }
                this.f15391b = true;
            }
        }

        public final void e() {
            if (this.f15398f != -1) {
                b.this.f15386c.g();
            }
            try {
                this.f15398f = b.this.f15386c.j();
                String trim = b.this.f15386c.g().trim();
                if (this.f15398f < 0 || (!trim.isEmpty() && !trim.startsWith(";"))) {
                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.f15398f + trim + "\"");
                } else if (this.f15398f == 0) {
                    this.f15399g = false;
                    j.a.c.f.a(b.this.f15384a.h(), this.f15397e, b.this.f());
                    a(true, null);
                }
            } catch (NumberFormatException e2) {
                throw new ProtocolException(e2.getMessage());
            }
        }
    }

    /* compiled from: Http1Codec */
    private final class d implements y {

        /* renamed from: a  reason: collision with root package name */
        public final l f15401a = new l(b.this.f15387d.b());

        /* renamed from: b  reason: collision with root package name */
        public boolean f15402b;

        /* renamed from: c  reason: collision with root package name */
        public long f15403c;

        public d(long j2) {
            this.f15403c = j2;
        }

        public void a(g gVar, long j2) {
            if (!this.f15402b) {
                j.a.e.a(gVar.size(), 0, j2);
                if (j2 <= this.f15403c) {
                    b.this.f15387d.a(gVar, j2);
                    this.f15403c -= j2;
                    return;
                }
                throw new ProtocolException("expected " + this.f15403c + " bytes but received " + j2);
            }
            throw new IllegalStateException("closed");
        }

        public B b() {
            return this.f15401a;
        }

        public void close() {
            if (!this.f15402b) {
                this.f15402b = true;
                if (this.f15403c <= 0) {
                    b.this.a(this.f15401a);
                    b.this.f15388e = 3;
                    return;
                }
                throw new ProtocolException("unexpected end of stream");
            }
        }

        public void flush() {
            if (!this.f15402b) {
                b.this.f15387d.flush();
            }
        }
    }

    /* compiled from: Http1Codec */
    private class e extends a {

        /* renamed from: e  reason: collision with root package name */
        public long f15405e;

        public e(long j2) {
            super();
            this.f15405e = j2;
            if (this.f15405e == 0) {
                a(true, null);
            }
        }

        public long b(g gVar, long j2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            } else if (!this.f15391b) {
                long j3 = this.f15405e;
                if (j3 == 0) {
                    return -1;
                }
                long b2 = super.b(gVar, Math.min(j3, j2));
                if (b2 != -1) {
                    this.f15405e -= b2;
                    if (this.f15405e == 0) {
                        a(true, null);
                    }
                    return b2;
                }
                ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                a(false, protocolException);
                throw protocolException;
            } else {
                throw new IllegalStateException("closed");
            }
        }

        public void close() {
            if (!this.f15391b) {
                if (this.f15405e != 0 && !j.a.e.a((z) this, 100, TimeUnit.MILLISECONDS)) {
                    a(false, null);
                }
                this.f15391b = true;
            }
        }
    }

    /* compiled from: Http1Codec */
    private class f extends a {

        /* renamed from: e  reason: collision with root package name */
        public boolean f15407e;

        public f() {
            super();
        }

        public long b(g gVar, long j2) {
            if (j2 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j2);
            } else if (this.f15391b) {
                throw new IllegalStateException("closed");
            } else if (this.f15407e) {
                return -1;
            } else {
                long b2 = super.b(gVar, j2);
                if (b2 != -1) {
                    return b2;
                }
                this.f15407e = true;
                a(true, null);
                return -1;
            }
        }

        public void close() {
            if (!this.f15391b) {
                if (!this.f15407e) {
                    a(false, null);
                }
                this.f15391b = true;
            }
        }
    }

    public b(I i2, j.a.b.f fVar, i iVar, h hVar) {
        this.f15384a = i2;
        this.f15385b = fVar;
        this.f15386c = iVar;
        this.f15387d = hVar;
    }

    public y a(L l2, long j2) {
        if ("chunked".equalsIgnoreCase(l2.a("Transfer-Encoding"))) {
            return c();
        }
        if (j2 != -1) {
            return a(j2);
        }
        throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
    }

    public void b() {
        this.f15387d.flush();
    }

    public y c() {
        if (this.f15388e == 1) {
            this.f15388e = 2;
            return new C0149b();
        }
        throw new IllegalStateException("state: " + this.f15388e);
    }

    public void cancel() {
        j.a.b.c c2 = this.f15385b.c();
        if (c2 != null) {
            c2.b();
        }
    }

    public z d() {
        if (this.f15388e == 4) {
            j.a.b.f fVar = this.f15385b;
            if (fVar != null) {
                this.f15388e = 5;
                fVar.e();
                return new f();
            }
            throw new IllegalStateException("streamAllocation == null");
        }
        throw new IllegalStateException("state: " + this.f15388e);
    }

    public final String e() {
        String b2 = this.f15386c.b(this.f15389f);
        this.f15389f -= (long) b2.length();
        return b2;
    }

    public C f() {
        C.a aVar = new C.a();
        while (true) {
            String e2 = e();
            if (e2.length() == 0) {
                return aVar.a();
            }
            j.a.a.f15256a.a(aVar, e2);
        }
    }

    public z b(long j2) {
        if (this.f15388e == 4) {
            this.f15388e = 5;
            return new e(j2);
        }
        throw new IllegalStateException("state: " + this.f15388e);
    }

    public void a(L l2) {
        a(l2.c(), j.a(l2, this.f15385b.c().f().b().type()));
    }

    public S a(P p) {
        j.a.b.f fVar = this.f15385b;
        fVar.f15343f.e(fVar.f15342e);
        String e2 = p.e("Content-Type");
        if (!j.a.c.f.b(p)) {
            return new j.a.c.i(e2, 0, s.a(b(0)));
        }
        if ("chunked".equalsIgnoreCase(p.e("Transfer-Encoding"))) {
            return new j.a.c.i(e2, -1, s.a(a(p.F().g())));
        }
        long a2 = j.a.c.f.a(p);
        if (a2 != -1) {
            return new j.a.c.i(e2, a2, s.a(b(a2)));
        }
        return new j.a.c.i(e2, -1, s.a(d()));
    }

    public void a() {
        this.f15387d.flush();
    }

    public void a(C c2, String str) {
        if (this.f15388e == 0) {
            this.f15387d.a(str).a("\r\n");
            int b2 = c2.b();
            for (int i2 = 0; i2 < b2; i2++) {
                this.f15387d.a(c2.a(i2)).a(": ").a(c2.b(i2)).a("\r\n");
            }
            this.f15387d.a("\r\n");
            this.f15388e = 1;
            return;
        }
        throw new IllegalStateException("state: " + this.f15388e);
    }

    public P.a a(boolean z) {
        int i2 = this.f15388e;
        if (i2 == 1 || i2 == 3) {
            try {
                j.a.c.l a2 = j.a.c.l.a(e());
                P.a aVar = new P.a();
                aVar.a(a2.f15379a);
                aVar.a(a2.f15380b);
                aVar.a(a2.f15381c);
                aVar.a(f());
                if (z && a2.f15380b == 100) {
                    return null;
                }
                if (a2.f15380b == 100) {
                    this.f15388e = 3;
                    return aVar;
                }
                this.f15388e = 4;
                return aVar;
            } catch (EOFException e2) {
                IOException iOException = new IOException("unexpected end of stream on " + this.f15385b);
                iOException.initCause(e2);
                throw iOException;
            }
        } else {
            throw new IllegalStateException("state: " + this.f15388e);
        }
    }

    public y a(long j2) {
        if (this.f15388e == 1) {
            this.f15388e = 2;
            return new d(j2);
        }
        throw new IllegalStateException("state: " + this.f15388e);
    }

    public z a(D d2) {
        if (this.f15388e == 4) {
            this.f15388e = 5;
            return new c(d2);
        }
        throw new IllegalStateException("state: " + this.f15388e);
    }

    public void a(l lVar) {
        B g2 = lVar.g();
        lVar.a(B.f15720a);
        g2.a();
        g2.b();
    }
}
