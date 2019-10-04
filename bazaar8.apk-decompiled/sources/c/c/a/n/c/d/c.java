package c.c.a.n.c.d;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import kotlin.TypeCastException;

/* compiled from: BaseRecyclerDaggerFragment.kt */
final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6381a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f6382b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6383c;

    public c(f fVar, int i2, int i3) {
        this.f6381a = fVar;
        this.f6382b = i2;
        this.f6383c = i3;
    }

    public final void run() {
        RecyclerView.i layoutManager = this.f6381a._a().getLayoutManager();
        if (layoutManager != null) {
            ((LinearLayoutManager) layoutManager).f(this.f6382b, this.f6383c);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
    }
}
