package b.y.a;

import androidx.recyclerview.widget.RecyclerView;

/* compiled from: RecyclerView */
class E implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3410a;

    public E(RecyclerView recyclerView) {
        this.f3410a = recyclerView;
    }

    public void run() {
        RecyclerView recyclerView = this.f3410a;
        if (recyclerView.E && !recyclerView.isLayoutRequested()) {
            RecyclerView recyclerView2 = this.f3410a;
            if (!recyclerView2.B) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.H) {
                recyclerView2.G = true;
            } else {
                recyclerView2.d();
            }
        }
    }
}
