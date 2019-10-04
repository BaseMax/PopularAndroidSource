package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import b.y.a.C0331a;

/* compiled from: RecyclerView */
class J implements C0331a.C0046a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3414a;

    public J(RecyclerView recyclerView) {
        this.f3414a = recyclerView;
    }

    public RecyclerView.w a(int i2) {
        RecyclerView.w a2 = this.f3414a.a(i2, true);
        if (a2 != null && !this.f3414a.o.d(a2.f891b)) {
            return a2;
        }
        return null;
    }

    public void b(int i2, int i3) {
        this.f3414a.a(i2, i3, false);
        this.f3414a.ua = true;
    }

    public void c(C0331a.b bVar) {
        int i2 = bVar.f3443a;
        if (i2 == 1) {
            RecyclerView recyclerView = this.f3414a;
            recyclerView.w.b(recyclerView, bVar.f3444b, bVar.f3446d);
        } else if (i2 == 2) {
            RecyclerView recyclerView2 = this.f3414a;
            recyclerView2.w.c(recyclerView2, bVar.f3444b, bVar.f3446d);
        } else if (i2 == 4) {
            RecyclerView recyclerView3 = this.f3414a;
            recyclerView3.w.a(recyclerView3, bVar.f3444b, bVar.f3446d, bVar.f3445c);
        } else if (i2 == 8) {
            RecyclerView recyclerView4 = this.f3414a;
            recyclerView4.w.a(recyclerView4, bVar.f3444b, bVar.f3446d, 1);
        }
    }

    public void d(int i2, int i3) {
        this.f3414a.a(i2, i3, true);
        RecyclerView recyclerView = this.f3414a;
        recyclerView.ua = true;
        recyclerView.ra.f874d += i3;
    }

    public void a(int i2, int i3, Object obj) {
        this.f3414a.a(i2, i3, obj);
        this.f3414a.va = true;
    }

    public void b(C0331a.b bVar) {
        c(bVar);
    }

    public void a(C0331a.b bVar) {
        c(bVar);
    }

    public void a(int i2, int i3) {
        this.f3414a.h(i2, i3);
        this.f3414a.ua = true;
    }

    public void c(int i2, int i3) {
        this.f3414a.g(i2, i3);
        this.f3414a.ua = true;
    }
}
