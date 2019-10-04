package c.c.a.o;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: TabLayoutSelectedListener.kt */
public final class c implements TabLayout.c {

    /* renamed from: a  reason: collision with root package name */
    public ViewPager.f f7134a = new b(this);

    /* renamed from: b  reason: collision with root package name */
    public Context f7135b;

    /* renamed from: c  reason: collision with root package name */
    public TabLayout f7136c;

    /* renamed from: d  reason: collision with root package name */
    public final ViewPager f7137d;

    public c(Context context, TabLayout tabLayout, ViewPager viewPager) {
        j.b(tabLayout, "tabLayout");
        j.b(viewPager, "viewPager");
        this.f7135b = context;
        this.f7136c = tabLayout;
        this.f7137d = viewPager;
        ViewPager.f fVar = this.f7134a;
        if (fVar != null) {
            this.f7137d.a(fVar);
        }
    }

    public void a(TabLayout.f fVar) {
    }

    public void b(TabLayout.f fVar) {
        d(fVar);
    }

    public void c(TabLayout.f fVar) {
    }

    public final void d(TabLayout.f fVar) {
        View view;
        int tabCount = this.f7136c.getTabCount();
        int i2 = 0;
        while (i2 < tabCount) {
            TabLayout.f c2 = this.f7136c.c(i2);
            if (c2 != null) {
                int c3 = c2.c();
                View childAt = this.f7136c.getChildAt(0);
                if (childAt != null) {
                    view = ((ViewGroup) childAt).getChildAt(c3);
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
                }
            } else {
                view = null;
            }
            if (view != null) {
                View childAt2 = ((ViewGroup) view).getChildAt(1);
                if (childAt2 != null) {
                    b.i.l.j.e((AppCompatTextView) childAt2, j.a((Object) c2, (Object) fVar) ? 2131820830 : 2131820801);
                    i2++;
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type androidx.appcompat.widget.AppCompatTextView");
                }
            } else {
                throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
            }
        }
    }

    public final TabLayout a() {
        return this.f7136c;
    }

    public final void b() {
        ViewPager.f fVar = this.f7134a;
        if (fVar != null) {
            this.f7137d.b(fVar);
        }
        this.f7134a = null;
    }
}
