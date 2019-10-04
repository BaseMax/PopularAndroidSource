package b.y.a;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import b.y.a.U;

/* compiled from: RecyclerView */
class L implements U.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView.i f3416a;

    public L(RecyclerView.i iVar) {
        this.f3416a = iVar;
    }

    public View a(int i2) {
        return this.f3416a.d(i2);
    }

    public int b() {
        return this.f3416a.h() - this.f3416a.n();
    }

    public int a() {
        return this.f3416a.q();
    }

    public int a(View view) {
        return this.f3416a.j(view) - ((RecyclerView.j) view.getLayoutParams()).topMargin;
    }

    public int b(View view) {
        return this.f3416a.e(view) + ((RecyclerView.j) view.getLayoutParams()).bottomMargin;
    }
}
