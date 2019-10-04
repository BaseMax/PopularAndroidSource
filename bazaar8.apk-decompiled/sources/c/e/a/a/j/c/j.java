package c.e.a.a.j.c;

import c.e.a.a.E;
import c.e.a.a.c.f;
import c.e.a.a.g.a.c;
import c.e.a.a.j.C;
import c.e.a.a.j.c.a.e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;

/* compiled from: EventSampleStream */
public final class j implements C {

    /* renamed from: a  reason: collision with root package name */
    public final Format f8673a;

    /* renamed from: b  reason: collision with root package name */
    public final c f8674b = new c();

    /* renamed from: c  reason: collision with root package name */
    public long[] f8675c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f8676d;

    /* renamed from: e  reason: collision with root package name */
    public e f8677e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f8678f;

    /* renamed from: g  reason: collision with root package name */
    public int f8679g;

    /* renamed from: h  reason: collision with root package name */
    public long f8680h = -9223372036854775807L;

    public j(e eVar, Format format, boolean z) {
        this.f8673a = format;
        this.f8677e = eVar;
        this.f8675c = eVar.f8549b;
        a(eVar, z);
    }

    public void a() {
    }

    public void a(e eVar, boolean z) {
        int i2 = this.f8679g;
        long j2 = i2 == 0 ? -9223372036854775807L : this.f8675c[i2 - 1];
        this.f8676d = z;
        this.f8677e = eVar;
        this.f8675c = eVar.f8549b;
        long j3 = this.f8680h;
        if (j3 != -9223372036854775807L) {
            a(j3);
        } else if (j2 != -9223372036854775807L) {
            this.f8679g = I.a(this.f8675c, j2, false, false);
        }
    }

    public String b() {
        return this.f8677e.a();
    }

    public boolean c() {
        return true;
    }

    public int d(long j2) {
        int max = Math.max(this.f8679g, I.a(this.f8675c, j2, true, false));
        int i2 = max - this.f8679g;
        this.f8679g = max;
        return i2;
    }

    public void a(long j2) {
        boolean z = false;
        this.f8679g = I.a(this.f8675c, j2, true, false);
        if (this.f8676d && this.f8679g == this.f8675c.length) {
            z = true;
        }
        if (!z) {
            j2 = -9223372036854775807L;
        }
        this.f8680h = j2;
    }

    public int a(E e2, f fVar, boolean z) {
        if (z || !this.f8678f) {
            e2.f7255a = this.f8673a;
            this.f8678f = true;
            return -5;
        }
        int i2 = this.f8679g;
        if (i2 != this.f8675c.length) {
            this.f8679g = i2 + 1;
            byte[] a2 = this.f8674b.a(this.f8677e.f8548a[i2]);
            if (a2 == null) {
                return -3;
            }
            fVar.g(a2.length);
            fVar.e(1);
            fVar.f7545c.put(a2);
            fVar.f7546d = this.f8675c[i2];
            return -4;
        } else if (this.f8676d) {
            return -3;
        } else {
            fVar.e(4);
            return -4;
        }
    }
}
