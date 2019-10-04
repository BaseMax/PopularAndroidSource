package c.e.d.b.a;

import c.e.d.c.a;
import c.e.d.d.b;
import c.e.d.d.c;
import c.e.d.j;
import c.e.d.x;
import com.google.gson.internal.bind.ReflectiveTypeAdapterFactory;
import java.lang.reflect.Field;

/* renamed from: c.e.d.b.a.i  reason: case insensitive filesystem */
/* compiled from: ReflectiveTypeAdapterFactory */
class C1015i extends ReflectiveTypeAdapterFactory.b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Field f11757d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f11758e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ x f11759f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ j f11760g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ a f11761h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ boolean f11762i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ ReflectiveTypeAdapterFactory f11763j;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C1015i(ReflectiveTypeAdapterFactory reflectiveTypeAdapterFactory, String str, boolean z, boolean z2, Field field, boolean z3, x xVar, j jVar, a aVar, boolean z4) {
        super(str, z, z2);
        this.f11763j = reflectiveTypeAdapterFactory;
        this.f11757d = field;
        this.f11758e = z3;
        this.f11759f = xVar;
        this.f11760g = jVar;
        this.f11761h = aVar;
        this.f11762i = z4;
    }

    public void a(c cVar, Object obj) {
        x xVar;
        Object obj2 = this.f11757d.get(obj);
        if (this.f11758e) {
            xVar = this.f11759f;
        } else {
            xVar = new C1019m(this.f11760g, this.f11759f, this.f11761h.b());
        }
        xVar.a(cVar, obj2);
    }

    public void a(b bVar, Object obj) {
        Object a2 = this.f11759f.a(bVar);
        if (a2 != null || !this.f11762i) {
            this.f11757d.set(obj, a2);
        }
    }

    public boolean a(Object obj) {
        boolean z = false;
        if (!this.f13568b) {
            return false;
        }
        if (this.f11757d.get(obj) != obj) {
            z = true;
        }
        return z;
    }
}
