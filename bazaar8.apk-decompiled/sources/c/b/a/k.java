package c.b.a;

import android.content.Context;
import android.net.Uri;
import android.widget.ImageView;
import c.b.a.c.b.p;
import c.b.a.g.a;
import c.b.a.g.a.h;
import c.b.a.g.b;
import c.b.a.g.c;
import c.b.a.g.d;
import c.b.a.g.e;
import c.b.a.g.f;
import c.b.a.g.g;
import c.b.a.g.j;
import c.b.a.i.i;
import com.bumptech.glide.Priority;
import com.bumptech.glide.request.SingleRequest;
import java.util.ArrayList;
import java.util.List;

/* compiled from: RequestBuilder */
public class k<TranscodeType> implements Cloneable, h<k<TranscodeType>> {

    /* renamed from: a  reason: collision with root package name */
    public static final g f4445a = new g().a(p.f3989c).a(Priority.LOW).a(true);

    /* renamed from: b  reason: collision with root package name */
    public final Context f4446b;

    /* renamed from: c  reason: collision with root package name */
    public final n f4447c;

    /* renamed from: d  reason: collision with root package name */
    public final Class<TranscodeType> f4448d;

    /* renamed from: e  reason: collision with root package name */
    public final g f4449e;

    /* renamed from: f  reason: collision with root package name */
    public final e f4450f;

    /* renamed from: g  reason: collision with root package name */
    public final g f4451g;

    /* renamed from: h  reason: collision with root package name */
    public g f4452h;

    /* renamed from: i  reason: collision with root package name */
    public o<?, ? super TranscodeType> f4453i;

    /* renamed from: j  reason: collision with root package name */
    public Object f4454j;

    /* renamed from: k  reason: collision with root package name */
    public List<f<TranscodeType>> f4455k;

    /* renamed from: l  reason: collision with root package name */
    public k<TranscodeType> f4456l;
    public k<TranscodeType> m;
    public Float n;
    public boolean o = true;
    public boolean p;
    public boolean q;

    public k(e eVar, n nVar, Class<TranscodeType> cls, Context context) {
        this.f4450f = eVar;
        this.f4447c = nVar;
        this.f4448d = cls;
        this.f4449e = nVar.e();
        this.f4446b = context;
        this.f4453i = nVar.b(cls);
        this.f4452h = this.f4449e;
        this.f4451g = eVar.g();
    }

    public k<TranscodeType> a(g gVar) {
        i.a(gVar);
        this.f4452h = a().a(gVar);
        return this;
    }

    public k<TranscodeType> b(f<TranscodeType> fVar) {
        this.f4455k = null;
        return a(fVar);
    }

    public k<TranscodeType> clone() {
        try {
            k<TranscodeType> kVar = (k) super.clone();
            kVar.f4452h = kVar.f4452h.clone();
            kVar.f4453i = kVar.f4453i.clone();
            return kVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    public g a() {
        g gVar = this.f4449e;
        g gVar2 = this.f4452h;
        return gVar == gVar2 ? gVar2.clone() : gVar2;
    }

    public final k<TranscodeType> b(Object obj) {
        this.f4454j = obj;
        this.p = true;
        return this;
    }

    public k<TranscodeType> a(f<TranscodeType> fVar) {
        if (fVar != null) {
            if (this.f4455k == null) {
                this.f4455k = new ArrayList();
            }
            this.f4455k.add(fVar);
        }
        return this;
    }

    public final <Y extends h<TranscodeType>> Y b(Y y, f<TranscodeType> fVar, g gVar) {
        c.b.a.i.k.b();
        i.a(y);
        if (this.p) {
            g a2 = gVar.a();
            c a3 = a(y, fVar, a2);
            c request = y.getRequest();
            if (!a3.a(request) || a(a2, request)) {
                this.f4447c.a((h<?>) y);
                y.a(a3);
                this.f4447c.a(y, a3);
                return y;
            }
            a3.a();
            i.a(request);
            if (!request.isRunning()) {
                request.e();
            }
            return y;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    public k<TranscodeType> a(k<TranscodeType> kVar) {
        this.f4456l = kVar;
        return this;
    }

    public k<TranscodeType> a(Object obj) {
        b(obj);
        return this;
    }

    public k<TranscodeType> a(String str) {
        b((Object) str);
        return this;
    }

    public k<TranscodeType> a(Uri uri) {
        b((Object) uri);
        return this;
    }

    public <Y extends h<TranscodeType>> Y a(Y y) {
        a(y, (f) null);
        return y;
    }

    public <Y extends h<TranscodeType>> Y a(Y y, f<TranscodeType> fVar) {
        b(y, fVar, a());
        return y;
    }

    public final boolean a(g gVar, c cVar) {
        return !gVar.y() && cVar.isComplete();
    }

    public c.b.a.g.a.i<ImageView, TranscodeType> a(ImageView imageView) {
        c.b.a.i.k.b();
        i.a(imageView);
        g gVar = this.f4452h;
        if (!gVar.D() && gVar.B() && imageView.getScaleType() != null) {
            switch (j.f4443a[imageView.getScaleType().ordinal()]) {
                case 1:
                    gVar = gVar.clone().G();
                    break;
                case 2:
                    gVar = gVar.clone().H();
                    break;
                case 3:
                case 4:
                case 5:
                    gVar = gVar.clone().I();
                    break;
                case 6:
                    gVar = gVar.clone().H();
                    break;
            }
        }
        c.b.a.g.a.i<ImageView, TranscodeType> a2 = this.f4451g.a(imageView, this.f4448d);
        b(a2, null, gVar);
        return a2;
    }

    public b<TranscodeType> b() {
        return a(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public final c b(h<TranscodeType> hVar, f<TranscodeType> fVar, d dVar, o<?, ? super TranscodeType> oVar, Priority priority, int i2, int i3, g gVar) {
        d dVar2 = dVar;
        Priority priority2 = priority;
        k<TranscodeType> kVar = this.f4456l;
        if (kVar != null) {
            if (!this.q) {
                o<?, ? super TranscodeType> oVar2 = kVar.o ? oVar : kVar.f4453i;
                Priority q2 = this.f4456l.f4452h.z() ? this.f4456l.f4452h.q() : a(priority2);
                int j2 = this.f4456l.f4452h.j();
                int i4 = this.f4456l.f4452h.i();
                if (c.b.a.i.k.b(i2, i3) && !this.f4456l.f4452h.E()) {
                    j2 = gVar.j();
                    i4 = gVar.i();
                }
                j jVar = new j(dVar2);
                c a2 = a(hVar, fVar, gVar, (d) jVar, oVar, priority, i2, i3);
                this.q = true;
                k<TranscodeType> kVar2 = this.f4456l;
                j jVar2 = jVar;
                c a3 = kVar2.a(hVar, fVar, (d) jVar, oVar2, q2, j2, i4, kVar2.f4452h);
                this.q = false;
                jVar2.a(a2, a3);
                return jVar2;
            }
            throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
        } else if (this.n == null) {
            return a(hVar, fVar, gVar, dVar, oVar, priority, i2, i3);
        } else {
            j jVar3 = new j(dVar2);
            f<TranscodeType> fVar2 = fVar;
            j jVar4 = jVar3;
            o<?, ? super TranscodeType> oVar3 = oVar;
            int i5 = i2;
            int i6 = i3;
            jVar3.a(a(hVar, fVar2, gVar, (d) jVar4, oVar3, priority, i5, i6), a(hVar, fVar2, gVar.clone().a(this.n.floatValue()), (d) jVar4, oVar3, a(priority2), i5, i6));
            return jVar3;
        }
    }

    public b<TranscodeType> a(int i2, int i3) {
        e eVar = new e(this.f4451g.e(), i2, i3);
        if (c.b.a.i.k.c()) {
            this.f4451g.e().post(new i(this, eVar));
        } else {
            a(eVar, eVar);
        }
        return eVar;
    }

    public final Priority a(Priority priority) {
        int i2 = j.f4444b[priority.ordinal()];
        if (i2 == 1) {
            return Priority.NORMAL;
        }
        if (i2 == 2) {
            return Priority.HIGH;
        }
        if (i2 == 3 || i2 == 4) {
            return Priority.IMMEDIATE;
        }
        throw new IllegalArgumentException("unknown priority: " + this.f4452h.q());
    }

    public final c a(h<TranscodeType> hVar, f<TranscodeType> fVar, g gVar) {
        return a(hVar, fVar, (d) null, this.f4453i, gVar.q(), gVar.j(), gVar.i(), gVar);
    }

    public final c a(h<TranscodeType> hVar, f<TranscodeType> fVar, d dVar, o<?, ? super TranscodeType> oVar, Priority priority, int i2, int i3, g gVar) {
        a aVar;
        a aVar2;
        if (this.m != null) {
            aVar2 = new a(dVar);
            aVar = aVar2;
        } else {
            aVar = null;
            aVar2 = dVar;
        }
        c b2 = b(hVar, fVar, aVar2, oVar, priority, i2, i3, gVar);
        if (aVar == null) {
            return b2;
        }
        int j2 = this.m.f4452h.j();
        int i4 = this.m.f4452h.i();
        if (c.b.a.i.k.b(i2, i3) && !this.m.f4452h.E()) {
            j2 = gVar.j();
            i4 = gVar.i();
        }
        k<TranscodeType> kVar = this.m;
        a aVar3 = aVar;
        aVar3.a(b2, kVar.a(hVar, fVar, (d) aVar, kVar.f4453i, kVar.f4452h.q(), j2, i4, this.m.f4452h));
        return aVar3;
    }

    public final c a(h<TranscodeType> hVar, f<TranscodeType> fVar, g gVar, d dVar, o<?, ? super TranscodeType> oVar, Priority priority, int i2, int i3) {
        Context context = this.f4446b;
        g gVar2 = this.f4451g;
        return SingleRequest.b(context, gVar2, this.f4454j, this.f4448d, gVar, i2, i3, priority, hVar, fVar, this.f4455k, dVar, gVar2.c(), oVar.a());
    }
}
