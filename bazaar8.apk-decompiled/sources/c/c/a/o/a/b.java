package c.c.a.o.a;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import h.f.b.j;

/* compiled from: DotItemDecoration.kt */
public final class b extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    public final Drawable f7118a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f7119b;

    public b(Drawable drawable, boolean z) {
        this.f7118a = drawable;
        this.f7119b = z;
    }

    public void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.t tVar) {
        j.b(rect, "outRect");
        j.b(view, "view");
        j.b(recyclerView, "parent");
        j.b(tVar, "state");
        super.a(rect, view, recyclerView, tVar);
        if (this.f7118a != null && recyclerView.f(view) >= a(recyclerView)) {
            if (this.f7119b) {
                rect.right = this.f7118a.getIntrinsicWidth();
            } else {
                rect.left = this.f7118a.getIntrinsicWidth();
            }
        }
    }

    public void b(Canvas canvas, RecyclerView recyclerView, RecyclerView.t tVar) {
        int i2;
        j.b(canvas, "c");
        j.b(recyclerView, "parent");
        j.b(tVar, "state");
        if (this.f7118a == null) {
            super.b(canvas, recyclerView, tVar);
            return;
        }
        int height = (recyclerView.getHeight() - this.f7118a.getIntrinsicHeight()) / 2;
        int paddingTop = recyclerView.getPaddingTop() + height;
        int height2 = (recyclerView.getHeight() - recyclerView.getPaddingBottom()) - height;
        int childCount = recyclerView.getChildCount();
        for (int i3 = 1; i3 < childCount; i3++) {
            View childAt = recyclerView.getChildAt(i3);
            int intrinsicWidth = this.f7118a.getIntrinsicWidth();
            if (this.f7119b) {
                j.a((Object) childAt, "child");
                i2 = childAt.getRight();
            } else {
                j.a((Object) childAt, "child");
                i2 = childAt.getLeft();
            }
            this.f7118a.setBounds(i2, paddingTop, intrinsicWidth + i2, height2);
            this.f7118a.draw(canvas);
        }
    }

    public final int a(RecyclerView recyclerView) {
        if (this.f7119b) {
            return 1;
        }
        RecyclerView.a adapter = recyclerView.getAdapter();
        if (adapter != null) {
            return adapter.a();
        }
        return 0;
    }
}
