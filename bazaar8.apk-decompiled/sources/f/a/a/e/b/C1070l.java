package f.a.a.e.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import f.a.a.e;
import f.a.a.e.C1083c;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;

/* renamed from: f.a.a.e.b.l  reason: case insensitive filesystem */
/* compiled from: CommonPageInflater */
public class C1070l extends PageInflater {
    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, g gVar) {
        View inflate = layoutInflater.inflate(f.inline_page, viewGroup, false);
        NestedScrollView nestedScrollView = (NestedScrollView) inflate.findViewById(e.scroll_view);
        ((C1083c) gVar.k()).a(nestedScrollView);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = this.f15003c.getId();
        nestedScrollView.setLayoutParams(layoutParams);
        inflate.setBackgroundColor(gVar.g().a());
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(e.container);
        for (C1072n a2 : this.f15001a) {
            linearLayout.addView(a2.a(layoutInflater, linearLayout, gVar));
        }
        for (Q next : this.f15002b) {
            ViewStub viewStub = (ViewStub) inflate.findViewById(next.f());
            next.a(viewStub, gVar);
            viewStub.setVisibility(0);
        }
        return inflate;
    }

    public void a(NestedScrollView nestedScrollView, LayoutInflater layoutInflater, g gVar) {
        ((C1083c) gVar.k()).Oa().d();
        LinearLayout linearLayout = (LinearLayout) nestedScrollView.findViewById(e.container);
        linearLayout.removeAllViews();
        for (C1072n a2 : this.f15001a) {
            linearLayout.addView(a2.a(layoutInflater, linearLayout, gVar));
        }
    }
}
