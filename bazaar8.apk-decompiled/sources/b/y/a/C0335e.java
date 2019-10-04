package b.y.a;

import b.y.a.C0343m;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: b.y.a.e  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0335e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3458a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0343m f3459b;

    public C0335e(C0343m mVar, ArrayList arrayList) {
        this.f3459b = mVar;
        this.f3458a = arrayList;
    }

    public void run() {
        Iterator it = this.f3458a.iterator();
        while (it.hasNext()) {
            C0343m.b bVar = (C0343m.b) it.next();
            this.f3459b.b(bVar.f3497a, bVar.f3498b, bVar.f3499c, bVar.f3500d, bVar.f3501e);
        }
        this.f3458a.clear();
        this.f3459b.n.remove(this.f3458a);
    }
}
