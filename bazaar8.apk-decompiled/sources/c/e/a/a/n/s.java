package c.e.a.a.n;

import c.e.a.a.o.C0737e;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import e.a.a.a.a.d.c;

/* compiled from: DefaultHttpDataSourceFactory */
public final class s extends HttpDataSource.a {

    /* renamed from: b  reason: collision with root package name */
    public final String f9524b;

    /* renamed from: c  reason: collision with root package name */
    public final A f9525c;

    /* renamed from: d  reason: collision with root package name */
    public final int f9526d;

    /* renamed from: e  reason: collision with root package name */
    public final int f9527e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f9528f;

    public s(String str, A a2) {
        this(str, a2, c.MAX_BYTE_SIZE_PER_FILE, c.MAX_BYTE_SIZE_PER_FILE, false);
    }

    public s(String str, A a2, int i2, int i3, boolean z) {
        C0737e.a(str);
        this.f9524b = str;
        this.f9525c = a2;
        this.f9526d = i2;
        this.f9527e = i3;
        this.f9528f = z;
    }

    public r a(HttpDataSource.c cVar) {
        r rVar = new r(this.f9524b, null, this.f9526d, this.f9527e, this.f9528f, cVar);
        A a2 = this.f9525c;
        if (a2 != null) {
            rVar.a(a2);
        }
        return rVar;
    }
}
