package f.a.a.e.b;

import androidx.recyclerview.widget.RecyclerView;
import f.a.a.e.b.C1082y;
import f.a.a.e.g;
import f.a.a.g.e.b;
import f.a.a.g.e.c;
import java.util.HashMap;

/* renamed from: f.a.a.e.b.v  reason: case insensitive filesystem */
/* compiled from: ListInflater */
class C1079v implements C1082y.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14271a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ b f14272b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ c f14273c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f14274d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1082y f14275e;

    public C1079v(C1082y yVar, g gVar, b bVar, c cVar, RecyclerView recyclerView) {
        this.f14275e = yVar;
        this.f14271a = gVar;
        this.f14272b = bVar;
        this.f14273c = cVar;
        this.f14274d = recyclerView;
    }

    public void a() {
        if (!this.f14275e.f14285f.get() && this.f14275e.f14284e != null) {
            this.f14275e.f14285f.set(true);
            HashMap hashMap = new HashMap();
            hashMap.put("token", this.f14275e.f14284e);
            new f.a.a.c.b.b(this.f14271a.h(), this.f14275e.f14283d, hashMap).a(new C1078u(this));
        }
    }
}
