package c.c.a.n.j.k;

import android.content.Context;
import android.view.View;
import c.c.a.n.c.d.a.g;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;

/* compiled from: PlayFloatingButtonScrollListener.kt */
public final class a extends g {

    /* renamed from: g  reason: collision with root package name */
    public boolean f6617g;

    /* renamed from: h  reason: collision with root package name */
    public final int f6618h = ((b() * 3) / 4);

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public a(Context context, View view, int i2) {
        super(context, view, i2);
        j.b(context, "context");
        j.b(view, "floatingButton");
    }

    public final void b(boolean z) {
        this.f6617g = z;
    }

    public int f() {
        return this.f6618h;
    }

    public boolean h() {
        return (c() == EntityState.NONE || c() == EntityState.FILE_EXISTS || c() == EntityState.COMPLETED) && this.f6617g;
    }
}
