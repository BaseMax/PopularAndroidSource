package c.c.a.n.c.d.a;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.c.h.d;
import c.c.a.d.b.l;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.ui.EntityState;
import h.f.b.j;
import java.lang.ref.WeakReference;
import kotlin.TypeCastException;

/* compiled from: FabScrollListener.kt */
public abstract class g extends RecyclerView.n {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference<View> f6372a;

    /* renamed from: b  reason: collision with root package name */
    public EntityState f6373b = EntityState.NONE;

    /* renamed from: c  reason: collision with root package name */
    public final int f6374c = d.b();

    /* renamed from: d  reason: collision with root package name */
    public final float f6375d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f6376e;

    /* renamed from: f  reason: collision with root package name */
    public int f6377f;

    public g(Context context, View view, int i2) {
        j.b(context, "context");
        j.b(view, "_floatingButton");
        this.f6377f = i2;
        this.f6372a = new WeakReference<>(view);
        this.f6375d = context.getResources().getDimension(R.dimen.default_components_height);
    }

    public final void a(EntityState entityState) {
        j.b(entityState, "value");
        this.f6373b = entityState;
        a((RecyclerView) null);
    }

    public final int b() {
        return this.f6374c;
    }

    public final EntityState c() {
        return this.f6373b;
    }

    public final WeakReference<View> d() {
        return this.f6372a;
    }

    public final boolean e() {
        return this.f6376e;
    }

    public abstract int f();

    public final void g() {
        View view = (View) this.f6372a.get();
        if (view != null) {
            l.a(view);
        }
    }

    public abstract boolean h();

    public final void i() {
        View view = (View) this.f6372a.get();
        if (view != null) {
            l.c(view);
        }
    }

    public final void b(RecyclerView recyclerView, int i2) {
        j.b(recyclerView, "recyclerView");
        recyclerView.setPadding(recyclerView.getPaddingLeft(), recyclerView.getPaddingTop(), recyclerView.getPaddingRight(), i2);
        recyclerView.setClipToPadding(false);
    }

    public final float a() {
        return this.f6375d;
    }

    public final void a(boolean z) {
        this.f6376e = z;
    }

    public void a(RecyclerView recyclerView, int i2, int i3) {
        j.b(recyclerView, "recyclerView");
        super.a(recyclerView, i2, i3);
        this.f6377f += i3;
        RecyclerView.i layoutManager = recyclerView.getLayoutManager();
        if (layoutManager != null) {
            if (((LinearLayoutManager) layoutManager).G() == 0) {
                this.f6377f = 0;
            }
            a(recyclerView);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager");
    }

    public void a(RecyclerView recyclerView) {
        if (!h() && this.f6376e && recyclerView != null) {
            this.f6376e = true;
            b(recyclerView, 0);
        }
        if (this.f6377f <= f() || !h()) {
            g();
            return;
        }
        i();
        if (recyclerView != null) {
            b(recyclerView, (int) this.f6375d);
            this.f6376e = true;
        }
    }

    public final void a(int i2) {
        this.f6377f = i2;
    }
}
