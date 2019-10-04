package c.c.a.n.b;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.d.b.l;
import c.c.a.n.c.d.a.g;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;
import kotlin.TypeCastException;

/* renamed from: c.c.a.n.b.B  reason: case insensitive filesystem */
/* compiled from: InstallFloatingButtonScrollListener.kt */
public final class C0664B extends g {

    /* renamed from: g  reason: collision with root package name */
    public boolean f6188g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6189h = ((b() * 2) / 3);

    /* renamed from: i  reason: collision with root package name */
    public int f6190i;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0664B(Context context, View view, int i2) {
        super(context, view, i2);
        j.b(context, "context");
        j.b(view, "_floatingButton");
        this.f6190i = i2;
    }

    public void a(RecyclerView recyclerView, int i2, int i3) {
        j.b(recyclerView, "recyclerView");
        super.a(recyclerView, i2, i3);
        this.f6190i += i3;
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            if (((LinearLayoutManager) layoutManager).G() == 0) {
                this.f6190i = 0;
            }
            a(recyclerView);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
    }

    public final void b(boolean z) {
        this.f6188g = z;
    }

    public int f() {
        return this.f6189h;
    }

    public boolean h() {
        return c() == EntityState.NONE || c() == EntityState.FILE_EXISTS || c() == EntityState.COMPLETED;
    }

    public void a(RecyclerView recyclerView) {
        if ((!h() || this.f6188g) && e() && recyclerView != null) {
            a(true);
            b(recyclerView, 0);
        }
        if (this.f6190i <= f() || !h() || this.f6188g) {
            View view = (View) d().get();
            if (view != null) {
                l.a(view);
                return;
            }
            return;
        }
        View view2 = (View) d().get();
        if (view2 != null) {
            l.c(view2);
        }
        if (recyclerView != null) {
            b(recyclerView, (int) a());
            a(true);
        }
    }
}
