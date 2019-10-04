package c.c.a.o;

import androidx.viewpager.widget.ViewPager;

/* compiled from: TabLayoutSelectedListener.kt */
public final class b implements ViewPager.f {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f7126a;

    public b(c cVar) {
        this.f7126a = cVar;
    }

    public void a(int i2) {
    }

    public void a(int i2, float f2, int i3) {
        int round = Math.round(((float) i2) + f2);
        if (round >= 0) {
            c cVar = this.f7126a;
            cVar.d(cVar.a().c(round));
        }
    }

    public void b(int i2) {
    }
}
