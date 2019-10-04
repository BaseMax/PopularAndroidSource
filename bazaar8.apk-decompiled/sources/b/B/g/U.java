package b.b.g;

import android.view.View;

/* compiled from: ScrollingTabContainerView */
class U implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f2118a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ V f2119b;

    public U(V v, View view) {
        this.f2119b = v;
        this.f2118a = view;
    }

    public void run() {
        this.f2119b.smoothScrollTo(this.f2118a.getLeft() - ((this.f2119b.getWidth() - this.f2118a.getWidth()) / 2), 0);
        this.f2119b.f2121b = null;
    }
}
