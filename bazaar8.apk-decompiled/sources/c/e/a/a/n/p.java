package c.e.a.a.n;

import android.content.Context;
import android.net.Uri;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.upstream.AssetDataSource;
import com.google.android.exoplayer2.upstream.ContentDataSource;
import com.google.android.exoplayer2.upstream.FileDataSource;
import com.google.android.exoplayer2.upstream.RawResourceDataSource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* compiled from: DefaultDataSource */
public final class p implements j {

    /* renamed from: a  reason: collision with root package name */
    public final Context f9503a;

    /* renamed from: b  reason: collision with root package name */
    public final List<A> f9504b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final j f9505c;

    /* renamed from: d  reason: collision with root package name */
    public j f9506d;

    /* renamed from: e  reason: collision with root package name */
    public j f9507e;

    /* renamed from: f  reason: collision with root package name */
    public j f9508f;

    /* renamed from: g  reason: collision with root package name */
    public j f9509g;

    /* renamed from: h  reason: collision with root package name */
    public j f9510h;

    /* renamed from: i  reason: collision with root package name */
    public j f9511i;

    /* renamed from: j  reason: collision with root package name */
    public j f9512j;

    public p(Context context, j jVar) {
        this.f9503a = context.getApplicationContext();
        C0737e.a(jVar);
        this.f9505c = jVar;
    }

    public void a(A a2) {
        this.f9505c.a(a2);
        this.f9504b.add(a2);
        a(this.f9506d, a2);
        a(this.f9507e, a2);
        a(this.f9508f, a2);
        a(this.f9509g, a2);
        a(this.f9510h, a2);
        a(this.f9511i, a2);
    }

    public final j b() {
        if (this.f9507e == null) {
            this.f9507e = new AssetDataSource(this.f9503a);
            a(this.f9507e);
        }
        return this.f9507e;
    }

    public final j c() {
        if (this.f9508f == null) {
            this.f9508f = new ContentDataSource(this.f9503a);
            a(this.f9508f);
        }
        return this.f9508f;
    }

    public void close() {
        j jVar = this.f9512j;
        if (jVar != null) {
            try {
                jVar.close();
            } finally {
                this.f9512j = null;
            }
        }
    }

    public final j d() {
        if (this.f9510h == null) {
            this.f9510h = new h();
            a(this.f9510h);
        }
        return this.f9510h;
    }

    public final j e() {
        if (this.f9506d == null) {
            this.f9506d = new FileDataSource();
            a(this.f9506d);
        }
        return this.f9506d;
    }

    public final j f() {
        if (this.f9511i == null) {
            this.f9511i = new RawResourceDataSource(this.f9503a);
            a(this.f9511i);
        }
        return this.f9511i;
    }

    public final j g() {
        if (this.f9509g == null) {
            try {
                this.f9509g = (j) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                a(this.f9509g);
            } catch (ClassNotFoundException unused) {
                c.e.a.a.o.p.d("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e2) {
                throw new RuntimeException("Error instantiating RTMP extension", e2);
            }
            if (this.f9509g == null) {
                this.f9509g = this.f9505c;
            }
        }
        return this.f9509g;
    }

    public Uri getUri() {
        j jVar = this.f9512j;
        if (jVar == null) {
            return null;
        }
        return jVar.getUri();
    }

    public int read(byte[] bArr, int i2, int i3) {
        j jVar = this.f9512j;
        C0737e.a(jVar);
        return jVar.read(bArr, i2, i3);
    }

    public long a(l lVar) {
        C0737e.b(this.f9512j == null);
        String scheme = lVar.f9466a.getScheme();
        if (I.b(lVar.f9466a)) {
            String path = lVar.f9466a.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                this.f9512j = e();
            } else {
                this.f9512j = b();
            }
        } else if ("asset".equals(scheme)) {
            this.f9512j = b();
        } else if ("content".equals(scheme)) {
            this.f9512j = c();
        } else if ("rtmp".equals(scheme)) {
            this.f9512j = g();
        } else if ("data".equals(scheme)) {
            this.f9512j = d();
        } else if ("rawresource".equals(scheme)) {
            this.f9512j = f();
        } else {
            this.f9512j = this.f9505c;
        }
        return this.f9512j.a(lVar);
    }

    public Map<String, List<String>> a() {
        j jVar = this.f9512j;
        return jVar == null ? Collections.emptyMap() : jVar.a();
    }

    public final void a(j jVar) {
        for (int i2 = 0; i2 < this.f9504b.size(); i2++) {
            jVar.a(this.f9504b.get(i2));
        }
    }

    public final void a(j jVar, A a2) {
        if (jVar != null) {
            jVar.a(a2);
        }
    }
}
