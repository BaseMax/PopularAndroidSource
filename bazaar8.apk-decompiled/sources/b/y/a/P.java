package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* compiled from: SimpleItemAnimator */
public abstract class P extends RecyclerView.f {

    /* renamed from: g  reason: collision with root package name */
    public boolean f3420g = true;

    public void a(boolean z) {
        this.f3420g = z;
    }

    public abstract boolean a(RecyclerView.w wVar, int i2, int i3, int i4, int i5);

    public abstract boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, int i2, int i3, int i4, int i5);

    public boolean b(RecyclerView.w wVar) {
        return !this.f3420g || wVar.o();
    }

    public void c(RecyclerView.w wVar, boolean z) {
    }

    public boolean c(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        if (cVar.f815a == cVar2.f815a && cVar.f816b == cVar2.f816b) {
            j(wVar);
            return false;
        }
        return a(wVar, cVar.f815a, cVar.f816b, cVar2.f815a, cVar2.f816b);
    }

    public void d(RecyclerView.w wVar, boolean z) {
    }

    public abstract boolean f(RecyclerView.w wVar);

    public abstract boolean g(RecyclerView.w wVar);

    public final void h(RecyclerView.w wVar) {
        n(wVar);
        c(wVar);
    }

    public final void i(RecyclerView.w wVar) {
        o(wVar);
    }

    public final void j(RecyclerView.w wVar) {
        p(wVar);
        c(wVar);
    }

    public final void k(RecyclerView.w wVar) {
        q(wVar);
    }

    public final void l(RecyclerView.w wVar) {
        r(wVar);
        c(wVar);
    }

    public final void m(RecyclerView.w wVar) {
        s(wVar);
    }

    public void n(RecyclerView.w wVar) {
    }

    public void o(RecyclerView.w wVar) {
    }

    public void p(RecyclerView.w wVar) {
    }

    public void q(RecyclerView.w wVar) {
    }

    public void r(RecyclerView.w wVar) {
    }

    public void s(RecyclerView.w wVar) {
    }

    public boolean a(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        if (cVar == null || (cVar.f815a == cVar2.f815a && cVar.f816b == cVar2.f816b)) {
            return f(wVar);
        }
        return a(wVar, cVar.f815a, cVar.f816b, cVar2.f815a, cVar2.f816b);
    }

    public boolean b(RecyclerView.w wVar, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        int i2 = cVar.f815a;
        int i3 = cVar.f816b;
        View view = wVar.f891b;
        int left = cVar2 == null ? view.getLeft() : cVar2.f815a;
        int top = cVar2 == null ? view.getTop() : cVar2.f816b;
        if (wVar.q() || (i2 == left && i3 == top)) {
            return g(wVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return a(wVar, i2, i3, left, top);
    }

    public boolean a(RecyclerView.w wVar, RecyclerView.w wVar2, RecyclerView.f.c cVar, RecyclerView.f.c cVar2) {
        int i2;
        int i3;
        int i4 = cVar.f815a;
        int i5 = cVar.f816b;
        if (wVar2.y()) {
            int i6 = cVar.f815a;
            i2 = cVar.f816b;
            i3 = i6;
        } else {
            i3 = cVar2.f815a;
            i2 = cVar2.f816b;
        }
        return a(wVar, wVar2, i4, i5, i3, i2);
    }

    public final void a(RecyclerView.w wVar, boolean z) {
        c(wVar, z);
        c(wVar);
    }

    public final void b(RecyclerView.w wVar, boolean z) {
        d(wVar, z);
    }
}
