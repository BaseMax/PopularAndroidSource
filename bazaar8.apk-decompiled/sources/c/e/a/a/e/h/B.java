package c.e.a.a.e.h;

import android.util.SparseArray;
import c.e.a.a.e.a;
import c.e.a.a.e.g;
import c.e.a.a.e.h;
import c.e.a.a.e.h.J;
import c.e.a.a.e.i;
import c.e.a.a.e.j;
import c.e.a.a.e.n;
import c.e.a.a.e.o;
import c.e.a.a.o.F;
import c.e.a.a.o.u;
import c.e.a.a.o.v;
import com.crashlytics.android.core.CodedOutputStream;

/* compiled from: PsExtractor */
public final class B implements g {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8002a = C0702d.f8080a;

    /* renamed from: b  reason: collision with root package name */
    public final F f8003b;

    /* renamed from: c  reason: collision with root package name */
    public final SparseArray<a> f8004c;

    /* renamed from: d  reason: collision with root package name */
    public final v f8005d;

    /* renamed from: e  reason: collision with root package name */
    public final A f8006e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8007f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f8008g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f8009h;

    /* renamed from: i  reason: collision with root package name */
    public long f8010i;

    /* renamed from: j  reason: collision with root package name */
    public z f8011j;

    /* renamed from: k  reason: collision with root package name */
    public i f8012k;

    /* renamed from: l  reason: collision with root package name */
    public boolean f8013l;

    /* compiled from: PsExtractor */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final o f8014a;

        /* renamed from: b  reason: collision with root package name */
        public final F f8015b;

        /* renamed from: c  reason: collision with root package name */
        public final u f8016c = new u(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        public boolean f8017d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f8018e;

        /* renamed from: f  reason: collision with root package name */
        public boolean f8019f;

        /* renamed from: g  reason: collision with root package name */
        public int f8020g;

        /* renamed from: h  reason: collision with root package name */
        public long f8021h;

        public a(o oVar, F f2) {
            this.f8014a = oVar;
            this.f8015b = f2;
        }

        public void a(v vVar) {
            vVar.a(this.f8016c.f9630a, 0, 3);
            this.f8016c.b(0);
            a();
            vVar.a(this.f8016c.f9630a, 0, this.f8020g);
            this.f8016c.b(0);
            b();
            this.f8014a.a(this.f8021h, 4);
            this.f8014a.a(vVar);
            this.f8014a.b();
        }

        public final void b() {
            this.f8021h = 0;
            if (this.f8017d) {
                this.f8016c.c(4);
                this.f8016c.c(1);
                this.f8016c.c(1);
                long a2 = (((long) this.f8016c.a(3)) << 30) | ((long) (this.f8016c.a(15) << 15)) | ((long) this.f8016c.a(15));
                this.f8016c.c(1);
                if (!this.f8019f && this.f8018e) {
                    this.f8016c.c(4);
                    this.f8016c.c(1);
                    this.f8016c.c(1);
                    this.f8016c.c(1);
                    this.f8015b.b((((long) this.f8016c.a(3)) << 30) | ((long) (this.f8016c.a(15) << 15)) | ((long) this.f8016c.a(15)));
                    this.f8019f = true;
                }
                this.f8021h = this.f8015b.b(a2);
            }
        }

        public void c() {
            this.f8019f = false;
            this.f8014a.a();
        }

        public final void a() {
            this.f8016c.c(8);
            this.f8017d = this.f8016c.f();
            this.f8018e = this.f8016c.f();
            this.f8016c.c(6);
            this.f8020g = this.f8016c.a(8);
        }
    }

    public B() {
        this(new F(0));
    }

    public static /* synthetic */ g[] b() {
        return new g[]{new B()};
    }

    public void a() {
    }

    public boolean a(h hVar) {
        byte[] bArr = new byte[14];
        boolean z = false;
        hVar.a(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        hVar.a(bArr[13] & 7);
        hVar.a(bArr, 0, 3);
        if (1 == (((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8) | (bArr[2] & 255))) {
            z = true;
        }
        return z;
    }

    public B(F f2) {
        this.f8003b = f2;
        this.f8005d = new v((int) CodedOutputStream.DEFAULT_BUFFER_SIZE);
        this.f8004c = new SparseArray<>();
        this.f8006e = new A();
    }

    public void a(i iVar) {
        this.f8012k = iVar;
    }

    public void a(long j2, long j3) {
        if ((this.f8003b.c() == -9223372036854775807L) || !(this.f8003b.a() == 0 || this.f8003b.a() == j3)) {
            this.f8003b.d();
            this.f8003b.d(j3);
        }
        z zVar = this.f8011j;
        if (zVar != null) {
            zVar.b(j3);
        }
        for (int i2 = 0; i2 < this.f8004c.size(); i2++) {
            this.f8004c.valueAt(i2).c();
        }
    }

    public int a(h hVar, n nVar) {
        long length = hVar.getLength();
        if ((length != -1) && !this.f8006e.c()) {
            return this.f8006e.a(hVar, nVar);
        }
        a(length);
        z zVar = this.f8011j;
        o oVar = null;
        if (zVar != null && zVar.b()) {
            return this.f8011j.a(hVar, nVar, (a.c) null);
        }
        hVar.b();
        long a2 = length != -1 ? length - hVar.a() : -1;
        if ((a2 != -1 && a2 < 4) || !hVar.b(this.f8005d.f9634a, 0, 4, true)) {
            return -1;
        }
        this.f8005d.e(0);
        int i2 = this.f8005d.i();
        if (i2 == 441) {
            return -1;
        }
        if (i2 == 442) {
            hVar.a(this.f8005d.f9634a, 0, 10);
            this.f8005d.e(9);
            hVar.c((this.f8005d.u() & 7) + 14);
            return 0;
        } else if (i2 == 443) {
            hVar.a(this.f8005d.f9634a, 0, 2);
            this.f8005d.e(0);
            hVar.c(this.f8005d.A() + 6);
            return 0;
        } else if (((i2 & -256) >> 8) != 1) {
            hVar.c(1);
            return 0;
        } else {
            int i3 = i2 & 255;
            a aVar = this.f8004c.get(i3);
            if (!this.f8007f) {
                if (aVar == null) {
                    if (i3 == 189) {
                        oVar = new C0705g();
                        this.f8008g = true;
                        this.f8010i = hVar.getPosition();
                    } else if ((i3 & 224) == 192) {
                        oVar = new v();
                        this.f8008g = true;
                        this.f8010i = hVar.getPosition();
                    } else if ((i3 & 240) == 224) {
                        oVar = new p();
                        this.f8009h = true;
                        this.f8010i = hVar.getPosition();
                    }
                    if (oVar != null) {
                        oVar.a(this.f8012k, new J.d(i3, 256));
                        aVar = new a(oVar, this.f8003b);
                        this.f8004c.put(i3, aVar);
                    }
                }
                if (hVar.getPosition() > ((!this.f8008g || !this.f8009h) ? 1048576 : this.f8010i + 8192)) {
                    this.f8007f = true;
                    this.f8012k.a();
                }
            }
            hVar.a(this.f8005d.f9634a, 0, 2);
            this.f8005d.e(0);
            int A = this.f8005d.A() + 6;
            if (aVar == null) {
                hVar.c(A);
            } else {
                this.f8005d.c(A);
                hVar.readFully(this.f8005d.f9634a, 0, A);
                this.f8005d.e(6);
                aVar.a(this.f8005d);
                v vVar = this.f8005d;
                vVar.d(vVar.b());
            }
            return 0;
        }
    }

    public final void a(long j2) {
        if (!this.f8013l) {
            this.f8013l = true;
            if (this.f8006e.a() != -9223372036854775807L) {
                z zVar = new z(this.f8006e.b(), this.f8006e.a(), j2);
                this.f8011j = zVar;
                this.f8012k.a(this.f8011j.a());
                return;
            }
            this.f8012k.a(new o.b(this.f8006e.a()));
        }
    }
}
