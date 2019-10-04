package b.y.a;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: RecyclerView */
class F implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3411a;

    public F(RecyclerView recyclerView) {
        this.f3411a = recyclerView;
    }

    public void run() {
        RecyclerView.f fVar = this.f3411a.W;
        if (fVar != null) {
            fVar.i();
        }
        this.f3411a.xa = false;
    }
}
