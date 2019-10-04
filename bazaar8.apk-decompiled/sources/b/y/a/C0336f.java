package b.y.a;

import b.y.a.C0343m;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: b.y.a.f  reason: case insensitive filesystem */
/* compiled from: DefaultItemAnimator */
class C0336f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f3460a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C0343m f3461b;

    public C0336f(C0343m mVar, ArrayList arrayList) {
        this.f3461b = mVar;
        this.f3460a = arrayList;
    }

    public void run() {
        Iterator it = this.f3460a.iterator();
        while (it.hasNext()) {
            this.f3461b.a((C0343m.a) it.next());
        }
        this.f3460a.clear();
        this.f3461b.o.remove(this.f3460a);
    }
}
