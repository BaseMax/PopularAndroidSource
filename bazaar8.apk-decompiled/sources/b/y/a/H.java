package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import b.y.a.V;

/* compiled from: RecyclerView */
class H implements V.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3412a;

    public H(RecyclerView recyclerView) {
        this.f3412a = recyclerView;
    }

    public void a(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        this.f3412a.a(wVar, cVar, cVar2);
    }

    public void b(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        this.f3412a.f805l.e(wVar);
        this.f3412a.b(wVar, cVar, cVar2);
    }

    public void c(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        wVar.a(false);
        RecyclerView recyclerView = this.f3412a;
        if (recyclerView.N) {
            if (recyclerView.W.a(wVar, wVar, cVar, cVar2)) {
                this.f3412a.D();
            }
        } else if (recyclerView.W.c(wVar, cVar, cVar2)) {
            this.f3412a.D();
        }
    }

    public void a(RecyclerView.w wVar) {
        RecyclerView recyclerView = this.f3412a;
        recyclerView.w.a(wVar.f891b, recyclerView.f805l);
    }
}
