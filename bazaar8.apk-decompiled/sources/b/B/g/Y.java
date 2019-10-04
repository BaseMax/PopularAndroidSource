package b.b.g;

import androidx.appcompat.widget.SearchView;
import b.j.a.a;

/* compiled from: SearchView */
class Y implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2140a;

    public Y(SearchView searchView) {
        this.f2140a = searchView;
    }

    public void run() {
        a aVar = this.f2140a.S;
        if (aVar instanceof ia) {
            aVar.a(null);
        }
    }
}
