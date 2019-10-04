package c.b.a.c.b;

import android.util.Log;
import c.b.a.c.a;
import c.b.a.c.a.d;
import c.b.a.c.b.C0364g;
import c.b.a.c.c;
import c.b.a.c.c.u;
import c.b.a.i.e;
import com.bumptech.glide.load.DataSource;
import java.util.Collections;
import java.util.List;

/* compiled from: SourceGenerator */
public class H implements C0364g, d.a<Object>, C0364g.a {

    /* renamed from: a  reason: collision with root package name */
    public final C0365h<?> f3837a;

    /* renamed from: b  reason: collision with root package name */
    public final C0364g.a f3838b;

    /* renamed from: c  reason: collision with root package name */
    public int f3839c;

    /* renamed from: d  reason: collision with root package name */
    public C0361d f3840d;

    /* renamed from: e  reason: collision with root package name */
    public Object f3841e;

    /* renamed from: f  reason: collision with root package name */
    public volatile u.a<?> f3842f;

    /* renamed from: g  reason: collision with root package name */
    public C0362e f3843g;

    public H(C0365h<?> hVar, C0364g.a aVar) {
        this.f3837a = hVar;
        this.f3838b = aVar;
    }

    public boolean a() {
        Object obj = this.f3841e;
        if (obj != null) {
            this.f3841e = null;
            b(obj);
        }
        C0361d dVar = this.f3840d;
        if (dVar != null && dVar.a()) {
            return true;
        }
        this.f3840d = null;
        this.f3842f = null;
        boolean z = false;
        while (!z && b()) {
            List<u.a<?>> g2 = this.f3837a.g();
            int i2 = this.f3839c;
            this.f3839c = i2 + 1;
            this.f3842f = g2.get(i2);
            if (this.f3842f != null && (this.f3837a.e().a(this.f3842f.f4121c.c()) || this.f3837a.c(this.f3842f.f4121c.a()))) {
                this.f3842f.f4121c.a(this.f3837a.i(), this);
                z = true;
            }
        }
        return z;
    }

    public final boolean b() {
        return this.f3839c < this.f3837a.g().size();
    }

    public void cancel() {
        u.a<?> aVar = this.f3842f;
        if (aVar != null) {
            aVar.f4121c.cancel();
        }
    }

    public void g() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: finally extract failed */
    public final void b(Object obj) {
        long a2 = e.a();
        try {
            a<X> a3 = this.f3837a.a(obj);
            C0363f fVar = new C0363f(a3, obj, this.f3837a.h());
            this.f3843g = new C0362e(this.f3842f.f4119a, this.f3837a.k());
            this.f3837a.d().a(this.f3843g, fVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + this.f3843g + ", data: " + obj + ", encoder: " + a3 + ", duration: " + e.a(a2));
            }
            this.f3842f.f4121c.b();
            this.f3840d = new C0361d(Collections.singletonList(this.f3842f.f4119a), this.f3837a, this);
        } catch (Throwable th) {
            this.f3842f.f4121c.b();
            throw th;
        }
    }

    public void a(Object obj) {
        p e2 = this.f3837a.e();
        if (obj == null || !e2.a(this.f3842f.f4121c.c())) {
            this.f3838b.a(this.f3842f.f4119a, obj, this.f3842f.f4121c, this.f3842f.f4121c.c(), this.f3843g);
            return;
        }
        this.f3841e = obj;
        this.f3838b.g();
    }

    public void a(Exception exc) {
        this.f3838b.a(this.f3843g, exc, this.f3842f.f4121c, this.f3842f.f4121c.c());
    }

    public void a(c cVar, Object obj, d<?> dVar, DataSource dataSource, c cVar2) {
        this.f3838b.a(cVar, obj, dVar, this.f3842f.f4121c.c(), cVar);
    }

    public void a(c cVar, Exception exc, d<?> dVar, DataSource dataSource) {
        this.f3838b.a(cVar, exc, dVar, this.f3842f.f4121c.c());
    }
}
