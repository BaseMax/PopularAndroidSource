package c.c.a.n.c.d;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import kotlin.TypeCastException;

/* compiled from: BaseRecyclerDaggerFragment.kt */
final class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6384a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f6385b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6386c;

    public d(f fVar, int i2, int i3) {
        this.f6384a = fVar;
        this.f6385b = i2;
        this.f6386c = i3;
    }

    public final void run() {
        RecyclerView.i layoutManager = this.f6384a._a().getLayoutManager();
        if (layoutManager != null) {
            ((StaggeredGridLayoutManager) layoutManager).e(this.f6385b, this.f6386c);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }
}
