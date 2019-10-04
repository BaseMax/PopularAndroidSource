package b.i.k;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: NestedScrollingParentHelper */
public class p {

    /* renamed from: a  reason: collision with root package name */
    public int f2822a;

    /* renamed from: b  reason: collision with root package name */
    public int f2823b;

    public p(ViewGroup viewGroup) {
    }

    public void a(View view, View view2, int i2) {
        a(view, view2, i2, 0);
    }

    public void a(View view, View view2, int i2, int i3) {
        if (i3 == 1) {
            this.f2823b = i2;
        } else {
            this.f2822a = i2;
        }
    }

    public int a() {
        return this.f2822a | this.f2823b;
    }

    public void a(View view, int i2) {
        if (i2 == 1) {
            this.f2823b = 0;
        } else {
            this.f2822a = 0;
        }
    }
}
