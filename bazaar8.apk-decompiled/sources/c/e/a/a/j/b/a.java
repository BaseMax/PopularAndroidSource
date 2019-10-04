package c.e.a.a.j.b;

import c.e.a.a.n.j;
import c.e.a.a.n.l;
import com.google.android.exoplayer2.Format;

/* compiled from: BaseMediaChunk */
public abstract class a extends l {

    /* renamed from: j  reason: collision with root package name */
    public final long f8451j;

    /* renamed from: k  reason: collision with root package name */
    public final long f8452k;

    /* renamed from: l  reason: collision with root package name */
    public c f8453l;
    public int[] m;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(j jVar, l lVar, Format format, int i2, Object obj, long j2, long j3, long j4, long j5, long j6) {
        super(jVar, lVar, format, i2, obj, j2, j3, j6);
        this.f8451j = j4;
        this.f8452k = j5;
    }

    public void a(c cVar) {
        this.f8453l = cVar;
        this.m = cVar.a();
    }

    public final c i() {
        return this.f8453l;
    }

    public final int a(int i2) {
        return this.m[i2];
    }
}
