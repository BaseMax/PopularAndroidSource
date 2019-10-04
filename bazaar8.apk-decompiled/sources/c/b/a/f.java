package c.b.a;

import android.content.Context;
import b.f.C0243b;
import c.b.a.c.b.a.b;
import c.b.a.c.b.a.e;
import c.b.a.c.b.a.k;
import c.b.a.c.b.b.a;
import c.b.a.c.b.b.h;
import c.b.a.c.b.b.i;
import c.b.a.c.b.b.j;
import c.b.a.c.b.r;
import c.b.a.d.d;
import c.b.a.d.n;
import c.b.a.g.g;
import java.util.Map;

/* compiled from: GlideBuilder */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final Map<Class<?>, o<?, ?>> f4322a = new C0243b();

    /* renamed from: b  reason: collision with root package name */
    public r f4323b;

    /* renamed from: c  reason: collision with root package name */
    public e f4324c;

    /* renamed from: d  reason: collision with root package name */
    public b f4325d;

    /* renamed from: e  reason: collision with root package name */
    public i f4326e;

    /* renamed from: f  reason: collision with root package name */
    public c.b.a.c.b.c.b f4327f;

    /* renamed from: g  reason: collision with root package name */
    public c.b.a.c.b.c.b f4328g;

    /* renamed from: h  reason: collision with root package name */
    public a.C0054a f4329h;

    /* renamed from: i  reason: collision with root package name */
    public j f4330i;

    /* renamed from: j  reason: collision with root package name */
    public d f4331j;

    /* renamed from: k  reason: collision with root package name */
    public int f4332k = 4;

    /* renamed from: l  reason: collision with root package name */
    public g f4333l = new g();
    public n.a m;
    public c.b.a.c.b.c.b n;
    public boolean o;

    public f a(g gVar) {
        this.f4333l = gVar;
        return this;
    }

    public void a(n.a aVar) {
        this.m = aVar;
    }

    public e a(Context context) {
        if (this.f4327f == null) {
            this.f4327f = c.b.a.c.b.c.b.d();
        }
        if (this.f4328g == null) {
            this.f4328g = c.b.a.c.b.c.b.c();
        }
        if (this.n == null) {
            this.n = c.b.a.c.b.c.b.b();
        }
        if (this.f4330i == null) {
            this.f4330i = new j.a(context).a();
        }
        if (this.f4331j == null) {
            this.f4331j = new c.b.a.d.g();
        }
        if (this.f4324c == null) {
            int b2 = this.f4330i.b();
            if (b2 > 0) {
                this.f4324c = new k((long) b2);
            } else {
                this.f4324c = new c.b.a.c.b.a.f();
            }
        }
        if (this.f4325d == null) {
            this.f4325d = new c.b.a.c.b.a.j(this.f4330i.a());
        }
        if (this.f4326e == null) {
            this.f4326e = new h((long) this.f4330i.c());
        }
        if (this.f4329h == null) {
            this.f4329h = new c.b.a.c.b.b.g(context);
        }
        if (this.f4323b == null) {
            r rVar = new r(this.f4326e, this.f4329h, this.f4328g, this.f4327f, c.b.a.c.b.c.b.e(), c.b.a.c.b.c.b.b(), this.o);
            this.f4323b = rVar;
        }
        Context context2 = context;
        e eVar = new e(context2, this.f4323b, this.f4326e, this.f4324c, this.f4325d, new n(this.m), this.f4331j, this.f4332k, this.f4333l.F(), this.f4322a);
        return eVar;
    }
}
