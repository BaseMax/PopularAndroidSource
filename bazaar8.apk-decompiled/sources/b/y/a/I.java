package b.y.a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import b.y.a.C0334d;

/* compiled from: RecyclerView */
class I implements C0334d.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ RecyclerView f3413a;

    public I(RecyclerView recyclerView) {
        this.f3413a = recyclerView;
    }

    public int a() {
        return this.f3413a.getChildCount();
    }

    public int b(View view) {
        return this.f3413a.indexOfChild(view);
    }

    public void c(int i2) {
        View childAt = this.f3413a.getChildAt(i2);
        if (childAt != null) {
            this.f3413a.b(childAt);
            childAt.clearAnimation();
        }
        this.f3413a.removeViewAt(i2);
    }

    public void d(View view) {
        RecyclerView.w i2 = RecyclerView.i(view);
        if (i2 != null) {
            i2.b(this.f3413a);
        }
    }

    public void a(View view, int i2) {
        this.f3413a.addView(view, i2);
        this.f3413a.a(view);
    }

    public void b() {
        int a2 = a();
        for (int i2 = 0; i2 < a2; i2++) {
            View a3 = a(i2);
            this.f3413a.b(a3);
            a3.clearAnimation();
        }
        this.f3413a.removeAllViews();
    }

    public View a(int i2) {
        return this.f3413a.getChildAt(i2);
    }

    public void a(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        RecyclerView.w i3 = RecyclerView.i(view);
        if (i3 != null) {
            if (i3.s() || i3.y()) {
                i3.d();
            } else {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + i3 + this.f3413a.o());
            }
        }
        this.f3413a.attachViewToParent(view, i2, layoutParams);
    }

    public RecyclerView.w c(View view) {
        return RecyclerView.i(view);
    }

    public void b(int i2) {
        View a2 = a(i2);
        if (a2 != null) {
            RecyclerView.w i3 = RecyclerView.i(a2);
            if (i3 != null) {
                if (!i3.s() || i3.y()) {
                    i3.a(256);
                } else {
                    throw new IllegalArgumentException("called detach on an already detached child " + i3 + this.f3413a.o());
                }
            }
        }
        this.f3413a.detachViewFromParent(i2);
    }

    public void a(View view) {
        RecyclerView.w i2 = RecyclerView.i(view);
        if (i2 != null) {
            i2.a(this.f3413a);
        }
    }
}
