package c.e.a.a;

import c.e.a.a.Z;
import c.e.a.a.j.v;
import c.e.a.a.l.s;
import com.google.android.exoplayer2.source.TrackGroupArray;

/* compiled from: PlaybackInfo */
public final class J {

    /* renamed from: a  reason: collision with root package name */
    public static final v.a f7287a = new v.a(new Object());

    /* renamed from: b  reason: collision with root package name */
    public final Z f7288b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f7289c;

    /* renamed from: d  reason: collision with root package name */
    public final v.a f7290d;

    /* renamed from: e  reason: collision with root package name */
    public final long f7291e;

    /* renamed from: f  reason: collision with root package name */
    public final long f7292f;

    /* renamed from: g  reason: collision with root package name */
    public final int f7293g;

    /* renamed from: h  reason: collision with root package name */
    public final boolean f7294h;

    /* renamed from: i  reason: collision with root package name */
    public final TrackGroupArray f7295i;

    /* renamed from: j  reason: collision with root package name */
    public final s f7296j;

    /* renamed from: k  reason: collision with root package name */
    public final v.a f7297k;

    /* renamed from: l  reason: collision with root package name */
    public volatile long f7298l;
    public volatile long m;
    public volatile long n;

    public J(Z z, Object obj, v.a aVar, long j2, long j3, int i2, boolean z2, TrackGroupArray trackGroupArray, s sVar, v.a aVar2, long j4, long j5, long j6) {
        this.f7288b = z;
        this.f7289c = obj;
        this.f7290d = aVar;
        this.f7291e = j2;
        this.f7292f = j3;
        this.f7293g = i2;
        this.f7294h = z2;
        this.f7295i = trackGroupArray;
        this.f7296j = sVar;
        this.f7297k = aVar2;
        this.f7298l = j4;
        this.m = j5;
        this.n = j6;
    }

    public static J a(long j2, s sVar) {
        Z z = Z.f7337a;
        v.a aVar = f7287a;
        TrackGroupArray trackGroupArray = TrackGroupArray.f12698a;
        J j3 = new J(z, null, aVar, j2, -9223372036854775807L, 1, false, trackGroupArray, sVar, f7287a, j2, 0, j2);
        return j3;
    }

    public v.a a(boolean z, Z.b bVar) {
        if (this.f7288b.c()) {
            return f7287a;
        }
        Z z2 = this.f7288b;
        return new v.a(this.f7288b.a(z2.a(z2.a(z), bVar).f7349f));
    }

    public J a(v.a aVar, long j2, long j3) {
        J j4 = new J(this.f7288b, this.f7289c, aVar, j2, aVar.a() ? j3 : -9223372036854775807L, this.f7293g, this.f7294h, this.f7295i, this.f7296j, aVar, j2, 0, j2);
        return j4;
    }

    public J a(v.a aVar, long j2, long j3, long j4) {
        J j5 = new J(this.f7288b, this.f7289c, aVar, j2, aVar.a() ? j3 : -9223372036854775807L, this.f7293g, this.f7294h, this.f7295i, this.f7296j, this.f7297k, this.f7298l, j4, j2);
        return j5;
    }

    public J a(Z z, Object obj) {
        Z z2 = z;
        J j2 = new J(z, obj, this.f7290d, this.f7291e, this.f7292f, this.f7293g, this.f7294h, this.f7295i, this.f7296j, this.f7297k, this.f7298l, this.m, this.n);
        return j2;
    }

    public J a(int i2) {
        Z z = this.f7288b;
        Z z2 = z;
        J j2 = new J(z2, this.f7289c, this.f7290d, this.f7291e, this.f7292f, i2, this.f7294h, this.f7295i, this.f7296j, this.f7297k, this.f7298l, this.m, this.n);
        return j2;
    }

    public J a(boolean z) {
        Z z2 = this.f7288b;
        Z z3 = z2;
        J j2 = new J(z3, this.f7289c, this.f7290d, this.f7291e, this.f7292f, this.f7293g, z, this.f7295i, this.f7296j, this.f7297k, this.f7298l, this.m, this.n);
        return j2;
    }

    public J a(TrackGroupArray trackGroupArray, s sVar) {
        Z z = this.f7288b;
        Z z2 = z;
        J j2 = new J(z2, this.f7289c, this.f7290d, this.f7291e, this.f7292f, this.f7293g, this.f7294h, trackGroupArray, sVar, this.f7297k, this.f7298l, this.m, this.n);
        return j2;
    }

    public J a(v.a aVar) {
        Z z = this.f7288b;
        Z z2 = z;
        J j2 = new J(z2, this.f7289c, this.f7290d, this.f7291e, this.f7292f, this.f7293g, this.f7294h, this.f7295i, this.f7296j, aVar, this.f7298l, this.m, this.n);
        return j2;
    }
}
