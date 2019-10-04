package b.y.a;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import b.i.k.C0258a;
import b.i.k.a.d;

/* compiled from: RecyclerViewAccessibilityDelegate */
public class N extends C0258a {

    /* renamed from: d  reason: collision with root package name */
    public final RecyclerView f3417d;

    /* renamed from: e  reason: collision with root package name */
    public final C0258a f3418e = new a(this);

    /* compiled from: RecyclerViewAccessibilityDelegate */
    public static class a extends C0258a {

        /* renamed from: d  reason: collision with root package name */
        public final N f3419d;

        public a(N n) {
            this.f3419d = n;
        }

        public void a(View view, d dVar) {
            super.a(view, dVar);
            if (!this.f3419d.c() && this.f3419d.f3417d.getLayoutManager() != null) {
                this.f3419d.f3417d.getLayoutManager().a(view, dVar);
            }
        }

        public boolean a(View view, int i2, Bundle bundle) {
            if (super.a(view, i2, bundle)) {
                return true;
            }
            if (this.f3419d.c() || this.f3419d.f3417d.getLayoutManager() == null) {
                return false;
            }
            return this.f3419d.f3417d.getLayoutManager().a(view, i2, bundle);
        }
    }

    public N(RecyclerView recyclerView) {
        this.f3417d = recyclerView;
    }

    public boolean a(View view, int i2, Bundle bundle) {
        if (super.a(view, i2, bundle)) {
            return true;
        }
        if (c() || this.f3417d.getLayoutManager() == null) {
            return false;
        }
        return this.f3417d.getLayoutManager().a(i2, bundle);
    }

    public void b(View view, AccessibilityEvent accessibilityEvent) {
        super.b(view, accessibilityEvent);
        accessibilityEvent.setClassName(RecyclerView.class.getName());
        if ((view instanceof RecyclerView) && !c()) {
            RecyclerView recyclerView = (RecyclerView) view;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().a(accessibilityEvent);
            }
        }
    }

    public boolean c() {
        return this.f3417d.q();
    }

    public void a(View view, d dVar) {
        super.a(view, dVar);
        dVar.b((CharSequence) RecyclerView.class.getName());
        if (!c() && this.f3417d.getLayoutManager() != null) {
            this.f3417d.getLayoutManager().a(dVar);
        }
    }

    public C0258a b() {
        return this.f3418e;
    }
}
