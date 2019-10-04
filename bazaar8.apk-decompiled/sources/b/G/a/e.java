package b.G.a;

import android.graphics.Rect;
import android.view.View;
import androidx.viewpager.widget.ViewPager;
import b.i.k.M;
import b.i.k.q;
import b.i.k.z;

/* compiled from: ViewPager */
class e implements q {

    /* renamed from: a  reason: collision with root package name */
    public final Rect f1313a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ViewPager f1314b;

    public e(ViewPager viewPager) {
        this.f1314b = viewPager;
    }

    public M a(View view, M m) {
        M b2 = z.b(view, m);
        if (b2.f()) {
            return b2;
        }
        Rect rect = this.f1313a;
        rect.left = b2.c();
        rect.top = b2.e();
        rect.right = b2.d();
        rect.bottom = b2.b();
        int childCount = this.f1314b.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            M a2 = z.a(this.f1314b.getChildAt(i2), b2);
            rect.left = Math.min(a2.c(), rect.left);
            rect.top = Math.min(a2.e(), rect.top);
            rect.right = Math.min(a2.d(), rect.right);
            rect.bottom = Math.min(a2.b(), rect.bottom);
        }
        return b2.a(rect.left, rect.top, rect.right, rect.bottom);
    }
}
