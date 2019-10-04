package f.a.a.e.b;

import androidx.core.widget.NestedScrollView;

/* renamed from: f.a.a.e.b.w  reason: case insensitive filesystem */
/* compiled from: ListInflater */
class C1080w implements NestedScrollView.b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1081x f14276a;

    public C1080w(C1081x xVar) {
        this.f14276a = xVar;
    }

    public void a(NestedScrollView nestedScrollView, int i2, int i3, int i4, int i5) {
        int top = this.f14276a.f14278b.getTop() + this.f14276a.f14278b.getHeight();
        int[] iArr = {0, 0};
        this.f14276a.f14278b.getLocationOnScreen(iArr);
        int i6 = this.f14276a.f14279c.getApplicationContext().getResources().getDisplayMetrics().heightPixels;
        if ((top + iArr[1]) - i6 < i6) {
            this.f14276a.f14280d.a();
        }
    }
}
