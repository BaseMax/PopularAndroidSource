package b.y.a;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* compiled from: StaggeredGridLayoutManager */
class Q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f3421a;

    public Q(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f3421a = staggeredGridLayoutManager;
    }

    public void run() {
        this.f3421a.G();
    }
}
