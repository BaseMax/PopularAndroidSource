package c.e.a.c.b;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* compiled from: ViewOffsetBehavior */
public class h<V extends View> extends CoordinatorLayout.b<V> {

    /* renamed from: a  reason: collision with root package name */
    public i f11226a;

    /* renamed from: b  reason: collision with root package name */
    public int f11227b = 0;

    /* renamed from: c  reason: collision with root package name */
    public int f11228c = 0;

    public h() {
    }

    public void a(CoordinatorLayout coordinatorLayout, V v, int i2) {
        coordinatorLayout.d(v, i2);
    }

    public boolean onLayoutChild(CoordinatorLayout coordinatorLayout, V v, int i2) {
        a(coordinatorLayout, v, i2);
        if (this.f11226a == null) {
            this.f11226a = new i(v);
        }
        this.f11226a.c();
        int i3 = this.f11227b;
        if (i3 != 0) {
            this.f11226a.b(i3);
            this.f11227b = 0;
        }
        int i4 = this.f11228c;
        if (i4 != 0) {
            this.f11226a.a(i4);
            this.f11228c = 0;
        }
        return true;
    }

    public boolean a(int i2) {
        i iVar = this.f11226a;
        if (iVar != null) {
            return iVar.b(i2);
        }
        this.f11227b = i2;
        return false;
    }

    public h(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public int a() {
        i iVar = this.f11226a;
        if (iVar != null) {
            return iVar.b();
        }
        return 0;
    }
}
