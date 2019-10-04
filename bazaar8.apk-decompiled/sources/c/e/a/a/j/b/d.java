package c.e.a.a.j.b;

import android.net.Uri;
import c.e.a.a.n.j;
import c.e.a.a.n.l;
import c.e.a.a.n.z;
import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.Loader;
import java.util.List;
import java.util.Map;

/* compiled from: Chunk */
public abstract class d implements Loader.d {

    /* renamed from: a  reason: collision with root package name */
    public final l f8459a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8460b;

    /* renamed from: c  reason: collision with root package name */
    public final Format f8461c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8462d;

    /* renamed from: e  reason: collision with root package name */
    public final Object f8463e;

    /* renamed from: f  reason: collision with root package name */
    public final long f8464f;

    /* renamed from: g  reason: collision with root package name */
    public final long f8465g;

    /* renamed from: h  reason: collision with root package name */
    public final z f8466h;

    public d(j jVar, l lVar, int i2, Format format, int i3, Object obj, long j2, long j3) {
        this.f8466h = new z(jVar);
        C0737e.a(lVar);
        this.f8459a = lVar;
        this.f8460b = i2;
        this.f8461c = format;
        this.f8462d = i3;
        this.f8463e = obj;
        this.f8464f = j2;
        this.f8465g = j3;
    }

    public final long c() {
        return this.f8466h.b();
    }

    public final long d() {
        return this.f8465g - this.f8464f;
    }

    public final Map<String, List<String>> e() {
        return this.f8466h.d();
    }

    public final Uri f() {
        return this.f8466h.c();
    }
}
