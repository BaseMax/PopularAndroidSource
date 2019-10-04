package c.e.a.c.c;

import android.view.View;
import android.view.ViewParent;
import b.i.k.z;
import b.k.b.g;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* compiled from: SwipeDismissBehavior */
class b extends g.a {

    /* renamed from: a  reason: collision with root package name */
    public int f11236a;

    /* renamed from: b  reason: collision with root package name */
    public int f11237b = -1;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ SwipeDismissBehavior f11238c;

    public b(SwipeDismissBehavior swipeDismissBehavior) {
        this.f11238c = swipeDismissBehavior;
    }

    public void a(View view, int i2) {
        this.f11237b = i2;
        this.f11236a = view.getLeft();
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
    }

    public boolean b(View view, int i2) {
        return this.f11237b == -1 && this.f11238c.a(view);
    }

    public void c(int i2) {
        SwipeDismissBehavior.a aVar = this.f11238c.f13315b;
        if (aVar != null) {
            aVar.a(i2);
        }
    }

    public int b(View view, int i2, int i3) {
        return view.getTop();
    }

    public void a(View view, float f2, float f3) {
        boolean z;
        int i2;
        this.f11237b = -1;
        int width = view.getWidth();
        if (a(view, f2)) {
            int left = view.getLeft();
            int i3 = this.f11236a;
            i2 = left < i3 ? i3 - width : i3 + width;
            z = true;
        } else {
            i2 = this.f11236a;
            z = false;
        }
        if (this.f11238c.f13314a.d(i2, view.getTop())) {
            z.a(view, (Runnable) new SwipeDismissBehavior.b(view, z));
        } else if (z) {
            SwipeDismissBehavior.a aVar = this.f11238c.f13315b;
            if (aVar != null) {
                aVar.a(view);
            }
        }
    }

    public final boolean a(View view, float f2) {
        boolean z = false;
        if (f2 != 0.0f) {
            boolean z2 = z.m(view) == 1;
            int i2 = this.f11238c.f13319f;
            if (i2 == 2) {
                return true;
            }
            if (i2 == 0) {
                return z2 ? z : z;
                z = true;
            }
            if (i2 == 1) {
                if (z2) {
                }
                z = true;
            }
            return z;
        }
        if (Math.abs(view.getLeft() - this.f11236a) >= Math.round(((float) view.getWidth()) * this.f11238c.f13320g)) {
            z = true;
        }
        return z;
    }

    public int a(View view) {
        return view.getWidth();
    }

    public int a(View view, int i2, int i3) {
        int i4;
        int i5;
        int width;
        boolean z = z.m(view) == 1;
        int i6 = this.f11238c.f13319f;
        if (i6 != 0) {
            if (i6 != 1) {
                i4 = this.f11236a - view.getWidth();
                i5 = view.getWidth() + this.f11236a;
            } else if (z) {
                i4 = this.f11236a;
                width = view.getWidth();
            } else {
                i4 = this.f11236a - view.getWidth();
                i5 = this.f11236a;
            }
            return SwipeDismissBehavior.a(i4, i2, i5);
        } else if (z) {
            i4 = this.f11236a - view.getWidth();
            i5 = this.f11236a;
            return SwipeDismissBehavior.a(i4, i2, i5);
        } else {
            i4 = this.f11236a;
            width = view.getWidth();
        }
        i5 = width + i4;
        return SwipeDismissBehavior.a(i4, i2, i5);
    }

    public void a(View view, int i2, int i3, int i4, int i5) {
        float width = ((float) this.f11236a) + (((float) view.getWidth()) * this.f11238c.f13321h);
        float width2 = ((float) this.f11236a) + (((float) view.getWidth()) * this.f11238c.f13322i);
        float f2 = (float) i2;
        if (f2 <= width) {
            view.setAlpha(1.0f);
        } else if (f2 >= width2) {
            view.setAlpha(0.0f);
        } else {
            view.setAlpha(SwipeDismissBehavior.a(0.0f, 1.0f - SwipeDismissBehavior.b(width, width2, f2), 1.0f));
        }
    }
}
