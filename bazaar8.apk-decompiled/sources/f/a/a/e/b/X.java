package f.a.a.e.b;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import f.a.a.e;
import f.a.a.e.C;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.inflaters.PageInflater;

/* compiled from: VideoPageInflater */
public class X extends PageInflater {

    /* renamed from: f  reason: collision with root package name */
    public String f14097f;

    /* renamed from: g  reason: collision with root package name */
    public String f14098g;

    /* renamed from: h  reason: collision with root package name */
    public String f14099h;

    /* renamed from: i  reason: collision with root package name */
    public String f14100i;

    /* renamed from: j  reason: collision with root package name */
    public String f14101j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f14102k;

    public X() {
        a(true);
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, g gVar) {
        View inflate = layoutInflater.inflate(f.inline_video_page, viewGroup, false);
        NestedScrollView nestedScrollView = (NestedScrollView) inflate.findViewById(e.scroll_view);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = PageInflater.PageGravity.top.getId();
        nestedScrollView.setLayoutParams(layoutParams);
        ((C) gVar.k()).a(nestedScrollView);
        if (this.f14099h != null) {
            f.a.a.f.e.a().a(this.f14099h, (ImageView) inflate.findViewById(e.video_cover), true);
        }
        if (!TextUtils.isEmpty(this.f14100i)) {
            ((TextView) inflate.findViewById(e.inline_tv_video_cover_name)).setText(this.f14100i);
        }
        if (!TextUtils.isEmpty(this.f14101j)) {
            f.a.a.f.e.a().a(this.f14101j, (ImageView) inflate.findViewById(e.inline_iv_video_cover_icon));
        }
        if (TextUtils.isEmpty(this.f14101j) && TextUtils.isEmpty(this.f14101j)) {
            inflate.findViewById(e.inline_lyt_video_cover_logo).setVisibility(8);
        }
        inflate.setBackgroundColor(gVar.g().a());
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(e.container);
        for (C1072n a2 : this.f15001a) {
            linearLayout.addView(a2.a(layoutInflater, linearLayout, gVar));
        }
        return inflate;
    }

    public void b(String str) {
        this.f14100i = str;
    }

    public boolean c() {
        return this.f14102k;
    }

    public String d() {
        return this.f14098g;
    }

    public String e() {
        return this.f14097f;
    }

    public void f(String str) {
        this.f14097f = str;
    }

    public void b(boolean z) {
        this.f14102k = z;
    }

    public void c(String str) {
        this.f14101j = str;
    }

    public void d(String str) {
        this.f14098g = str;
    }

    public void e(String str) {
        this.f14099h = str;
    }
}
