package c.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import c.b.a.c.b.p;
import c.b.a.c.d.e.c;
import c.b.a.d.c;
import c.b.a.d.d;
import c.b.a.d.i;
import c.b.a.d.j;
import c.b.a.d.o;
import c.b.a.d.r;
import c.b.a.g.a.h;
import c.b.a.g.g;
import c.b.a.i.k;
import com.bumptech.glide.Priority;

/* compiled from: RequestManager */
public class n implements j, h<k<Drawable>> {

    /* renamed from: a  reason: collision with root package name */
    public static final g f4460a = g.b((Class<?>) Bitmap.class).F();

    /* renamed from: b  reason: collision with root package name */
    public static final g f4461b = g.b((Class<?>) c.class).F();

    /* renamed from: c  reason: collision with root package name */
    public static final g f4462c = g.b(p.f3989c).a(Priority.LOW).a(true);

    /* renamed from: d  reason: collision with root package name */
    public final e f4463d;

    /* renamed from: e  reason: collision with root package name */
    public final Context f4464e;

    /* renamed from: f  reason: collision with root package name */
    public final i f4465f;

    /* renamed from: g  reason: collision with root package name */
    public final c.b.a.d.p f4466g;

    /* renamed from: h  reason: collision with root package name */
    public final o f4467h;

    /* renamed from: i  reason: collision with root package name */
    public final r f4468i;

    /* renamed from: j  reason: collision with root package name */
    public final Runnable f4469j;

    /* renamed from: k  reason: collision with root package name */
    public final Handler f4470k;

    /* renamed from: l  reason: collision with root package name */
    public final c.b.a.d.c f4471l;
    public g m;

    /* compiled from: RequestManager */
    private static class a extends c.b.a.g.a.i<View, Object> {
        public a(View view) {
            super(view);
        }

        public void a(Object obj, c.b.a.g.b.b<? super Object> bVar) {
        }
    }

    /* compiled from: RequestManager */
    private static class b implements c.a {

        /* renamed from: a  reason: collision with root package name */
        public final c.b.a.d.p f4472a;

        public b(c.b.a.d.p pVar) {
            this.f4472a = pVar;
        }

        public void a(boolean z) {
            if (z) {
                this.f4472a.c();
            }
        }
    }

    public n(e eVar, i iVar, o oVar, Context context) {
        this(eVar, iVar, oVar, new c.b.a.d.p(), eVar.e(), context);
    }

    public void a(g gVar) {
        this.m = gVar.clone().a();
    }

    public void b() {
        f();
        this.f4468i.b();
    }

    public k<Bitmap> c() {
        return a(Bitmap.class).a(f4460a);
    }

    public k<Drawable> d() {
        return a(Drawable.class);
    }

    public g e() {
        return this.m;
    }

    public void f() {
        k.b();
        this.f4466g.b();
    }

    public void g() {
        k.b();
        this.f4466g.d();
    }

    public void onDestroy() {
        this.f4468i.onDestroy();
        for (h<?> a2 : this.f4468i.d()) {
            a(a2);
        }
        this.f4468i.c();
        this.f4466g.a();
        this.f4465f.b(this);
        this.f4465f.b(this.f4471l);
        this.f4470k.removeCallbacks(this.f4469j);
        this.f4463d.b(this);
    }

    public String toString() {
        return super.toString() + "{tracker=" + this.f4466g + ", treeNode=" + this.f4467h + "}";
    }

    public void a() {
        g();
        this.f4468i.a();
    }

    public final void c(h<?> hVar) {
        if (!b(hVar) && !this.f4463d.a(hVar) && hVar.getRequest() != null) {
            c.b.a.g.c request = hVar.getRequest();
            hVar.a((c.b.a.g.c) null);
            request.clear();
        }
    }

    public boolean b(h<?> hVar) {
        c.b.a.g.c request = hVar.getRequest();
        if (request == null) {
            return true;
        }
        if (!this.f4466g.a(request)) {
            return false;
        }
        this.f4468i.b(hVar);
        hVar.a((c.b.a.g.c) null);
        return true;
    }

    public n(e eVar, i iVar, o oVar, c.b.a.d.p pVar, d dVar, Context context) {
        this.f4468i = new r();
        this.f4469j = new l(this);
        this.f4470k = new Handler(Looper.getMainLooper());
        this.f4463d = eVar;
        this.f4465f = iVar;
        this.f4467h = oVar;
        this.f4466g = pVar;
        this.f4464e = context;
        this.f4471l = dVar.a(context.getApplicationContext(), new b(pVar));
        if (k.c()) {
            this.f4470k.post(this.f4469j);
        } else {
            iVar.a(this);
        }
        iVar.a(this.f4471l);
        a(eVar.g().b());
        eVar.a(this);
    }

    public k<Drawable> a(String str) {
        return d().a(str);
    }

    public k<Drawable> a(Uri uri) {
        return d().a(uri);
    }

    public <ResourceType> k<ResourceType> a(Class<ResourceType> cls) {
        return new k<>(this.f4463d, this, cls, this.f4464e);
    }

    public void a(View view) {
        a((h<?>) new a(view));
    }

    public <T> o<?, T> b(Class<T> cls) {
        return this.f4463d.g().a(cls);
    }

    public void a(h<?> hVar) {
        if (hVar != null) {
            if (k.d()) {
                c(hVar);
            } else {
                this.f4470k.post(new m(this, hVar));
            }
        }
    }

    public void a(h<?> hVar, c.b.a.g.c cVar) {
        this.f4468i.a(hVar);
        this.f4466g.b(cVar);
    }
}
