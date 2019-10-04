package f.a.a.e.b;

import androidx.recyclerview.widget.RecyclerView;
import f.a.a.e.b.C1082y;
import f.a.a.e.g;
import f.a.a.g.e.b;

/* renamed from: f.a.a.e.b.x  reason: case insensitive filesystem */
/* compiled from: ListInflater */
class C1081x implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f14277a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f14278b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g f14279c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1082y.a f14280d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C1082y f14281e;

    public C1081x(C1082y yVar, b bVar, RecyclerView recyclerView, g gVar, C1082y.a aVar) {
        this.f14281e = yVar;
        this.f14277a = bVar;
        this.f14278b = recyclerView;
        this.f14279c = gVar;
        this.f14280d = aVar;
    }

    public void run() {
        this.f14277a.c(this.f14278b).setOnScrollChangeListener(new C1080w(this));
    }
}
