package c.b.a.c.c.a;

import c.b.a.c.a.k;
import c.b.a.c.c.l;
import c.b.a.c.c.t;
import c.b.a.c.c.u;
import c.b.a.c.c.v;
import c.b.a.c.c.y;
import c.b.a.c.e;
import c.b.a.c.f;
import java.io.InputStream;

/* compiled from: HttpGlideUrlLoader */
public class a implements u<l, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    public static final e<Integer> f4062a = e.a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* renamed from: b  reason: collision with root package name */
    public final t<l, l> f4063b;

    /* renamed from: c.b.a.c.c.a.a$a  reason: collision with other inner class name */
    /* compiled from: HttpGlideUrlLoader */
    public static class C0057a implements v<l, InputStream> {

        /* renamed from: a  reason: collision with root package name */
        public final t<l, l> f4064a = new t<>(500);

        public u<l, InputStream> a(y yVar) {
            return new a(this.f4064a);
        }
    }

    public a(t<l, l> tVar) {
        this.f4063b = tVar;
    }

    public boolean a(l lVar) {
        return true;
    }

    public u.a<InputStream> a(l lVar, int i2, int i3, f fVar) {
        t<l, l> tVar = this.f4063b;
        if (tVar != null) {
            l a2 = tVar.a(lVar, 0, 0);
            if (a2 == null) {
                this.f4063b.a(lVar, 0, 0, lVar);
            } else {
                lVar = a2;
            }
        }
        return new u.a<>(lVar, new k(lVar, ((Integer) fVar.a(f4062a)).intValue()));
    }
}
