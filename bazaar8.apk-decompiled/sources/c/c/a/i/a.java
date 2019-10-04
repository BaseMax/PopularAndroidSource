package c.c.a.i;

import android.view.LayoutInflater;
import android.view.View;
import b.i.k.E;
import c.e.a.c.e.d;
import com.farsitel.bazaar.R;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import h.a.l;
import h.f.b.j;
import kotlin.TypeCastException;

/* compiled from: BottomNavigationViewExt.kt */
public final class a {
    public static final void a(BottomNavigationView bottomNavigationView, int i2, boolean z) {
        j.b(bottomNavigationView, "$this$setupBadge");
        View childAt = bottomNavigationView.getChildAt(i2);
        if (childAt != null) {
            d dVar = (d) childAt;
            View childAt2 = dVar.getChildAt(dVar.getChildCount() - 1);
            if (childAt2 != null) {
                c.e.a.c.e.a aVar = (c.e.a.c.e.a) childAt2;
                int i3 = -1;
                int i4 = 0;
                int i5 = 0;
                for (View next : E.a(aVar)) {
                    int i6 = i5 + 1;
                    if (i5 >= 0) {
                        if (next.getId() == R.id.badgeLayout) {
                            i3 = i5;
                        }
                        i5 = i6;
                    } else {
                        l.b();
                        throw null;
                    }
                }
                if (i3 >= 0) {
                    aVar.removeViewAt(i3);
                }
                LayoutInflater.from(bottomNavigationView.getContext()).inflate(R.layout.view_bottom_navigation_view_badge, aVar, true);
                View findViewById = aVar.getChildAt(aVar.getChildCount() - 1).findViewById(R.id.notificationsBadge);
                j.a((Object) findViewById, "itemView.getChildAt(item…(R.id.notificationsBadge)");
                if (!z) {
                    i4 = 8;
                }
                findViewById.setVisibility(i4);
                return;
            }
            throw new TypeCastException("null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationItemView");
        }
        throw new TypeCastException("null cannot be cast to non-null type com.google.android.material.bottomnavigation.BottomNavigationMenuView");
    }
}
