package c.e.a.a;

import c.e.a.a.c.f;
import c.e.a.a.d.l;
import c.e.a.a.j.C;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.r;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;

/* renamed from: c.e.a.a.p  reason: case insensitive filesystem */
/* compiled from: BaseRenderer */
public abstract class C0743p implements Q, S {

    /* renamed from: a  reason: collision with root package name */
    public final int f9641a;

    /* renamed from: b  reason: collision with root package name */
    public T f9642b;

    /* renamed from: c  reason: collision with root package name */
    public int f9643c;

    /* renamed from: d  reason: collision with root package name */
    public int f9644d;

    /* renamed from: e  reason: collision with root package name */
    public C f9645e;

    /* renamed from: f  reason: collision with root package name */
    public Format[] f9646f;

    /* renamed from: g  reason: collision with root package name */
    public long f9647g;

    /* renamed from: h  reason: collision with root package name */
    public long f9648h = Long.MIN_VALUE;

    /* renamed from: i  reason: collision with root package name */
    public boolean f9649i;

    public C0743p(int i2) {
        this.f9641a = i2;
    }

    public /* synthetic */ void a(float f2) {
        P.a(this, f2);
    }

    public void a(int i2, Object obj) {
    }

    public abstract void a(long j2, boolean z);

    public final void a(T t, Format[] formatArr, C c2, long j2, boolean z, long j3) {
        C0737e.b(this.f9644d == 0);
        this.f9642b = t;
        this.f9644d = 1;
        a(z);
        a(formatArr, c2, j3);
        a(j2, z);
    }

    public void a(boolean z) {
    }

    public void a(Format[] formatArr, long j2) {
    }

    public int b(long j2) {
        return this.f9645e.d(j2 - this.f9647g);
    }

    public final void e() {
        boolean z = true;
        if (this.f9644d != 1) {
            z = false;
        }
        C0737e.b(z);
        this.f9644d = 0;
        this.f9645e = null;
        this.f9646f = null;
        this.f9649i = false;
        t();
    }

    public final int f() {
        return this.f9641a;
    }

    public final boolean g() {
        return this.f9648h == Long.MIN_VALUE;
    }

    public final int getState() {
        return this.f9644d;
    }

    public final void h() {
        this.f9649i = true;
    }

    public final S i() {
        return this;
    }

    public final C j() {
        return this.f9645e;
    }

    public final void k() {
        this.f9645e.a();
    }

    public final long l() {
        return this.f9648h;
    }

    public final boolean m() {
        return this.f9649i;
    }

    public r n() {
        return null;
    }

    public int o() {
        return 0;
    }

    public final T p() {
        return this.f9642b;
    }

    public final int q() {
        return this.f9643c;
    }

    public final Format[] r() {
        return this.f9646f;
    }

    public final void reset() {
        C0737e.b(this.f9644d == 0);
        u();
    }

    public final boolean s() {
        return g() ? this.f9649i : this.f9645e.c();
    }

    public final void setIndex(int i2) {
        this.f9643c = i2;
    }

    public final void start() {
        boolean z = true;
        if (this.f9644d != 1) {
            z = false;
        }
        C0737e.b(z);
        this.f9644d = 2;
        v();
    }

    public final void stop() {
        C0737e.b(this.f9644d == 2);
        this.f9644d = 1;
        w();
    }

    public abstract void t();

    public void u() {
    }

    public void v() {
    }

    public void w() {
    }

    public final void a(Format[] formatArr, C c2, long j2) {
        C0737e.b(!this.f9649i);
        this.f9645e = c2;
        this.f9648h = j2;
        this.f9646f = formatArr;
        this.f9647g = j2;
        a(formatArr, j2);
    }

    public final void a(long j2) {
        this.f9649i = false;
        this.f9648h = j2;
        a(j2, false);
    }

    public final int a(E e2, f fVar, boolean z) {
        int a2 = this.f9645e.a(e2, fVar, z);
        int i2 = -4;
        if (a2 == -4) {
            if (fVar.i()) {
                this.f9648h = Long.MIN_VALUE;
                if (!this.f9649i) {
                    i2 = -3;
                }
                return i2;
            }
            fVar.f7546d += this.f9647g;
            this.f9648h = Math.max(this.f9648h, fVar.f7546d);
        } else if (a2 == -5) {
            Format format = e2.f7255a;
            long j2 = format.m;
            if (j2 != Long.MAX_VALUE) {
                e2.f7255a = format.a(j2 + this.f9647g);
            }
        }
        return a2;
    }

    public static boolean a(l<?> lVar, DrmInitData drmInitData) {
        if (drmInitData == null) {
            return true;
        }
        if (lVar == null) {
            return false;
        }
        return lVar.a(drmInitData);
    }
}
