package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import b.y.a.U;

/* compiled from: RecyclerView */
class K implements U.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView.i f3415a;

    public K(RecyclerView.i iVar) {
        this.f3415a = iVar;
    }

    public View a(int i2) {
        return this.f3415a.d(i2);
    }

    public int b() {
        return this.f3415a.r() - this.f3415a.p();
    }

    public int a() {
        return this.f3415a.o();
    }

    public int b(View view) {
        return this.f3415a.i(view) + ((RecyclerView.j) view.getLayoutParams()).rightMargin;
    }

    public int a(View view) {
        return this.f3415a.f(view) - ((RecyclerView.j) view.getLayoutParams()).leftMargin;
    }
}
