package f.a.a.e.b;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.widget.NestedScrollView;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;

/* compiled from: SplashPageInflater */
public class M extends PageInflater {

    /* renamed from: f  reason: collision with root package name */
    public b f14082f;

    public M() {
        a(true);
    }

    public void a(b bVar) {
        this.f14082f = bVar;
    }

    public b c() {
        return this.f14082f;
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, g gVar) {
        View inflate = layoutInflater.inflate(f.inline_page, viewGroup, false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = this.f15003c.getId();
        ((NestedScrollView) inflate.findViewById(e.scroll_view)).setLayoutParams(layoutParams);
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
}
