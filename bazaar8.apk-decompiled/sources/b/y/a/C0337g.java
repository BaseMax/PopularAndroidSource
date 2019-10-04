package b.y.a;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: b.y.a.g  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0337g implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3462a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0343m f3463b;

    public C0337g(C0343m mVar, ArrayList arrayList) {
        this.f3463b = mVar;
        this.f3462a = arrayList;
    }

    public void run() {
        Iterator it = this.f3462a.iterator();
        while (it.hasNext()) {
            this.f3463b.t((RecyclerView.w) it.next());
        }
        this.f3462a.clear();
        this.f3463b.m.remove(this.f3462a);
    }
}
