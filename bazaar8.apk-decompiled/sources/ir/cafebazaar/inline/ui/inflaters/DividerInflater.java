package ir.cafebazaar.inline.ui.inflaters;

import android.view.View;
import android.widget.LinearLayout;
import c.c.a.d.g.a;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.c;
import ir.cafebazaar.inline.ui.Theme;

public class DividerInflater extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public Style f14989c = Style.line;

    /* renamed from: d  reason: collision with root package name */
    public int f14990d = 12;

    /* renamed from: e  reason: collision with root package name */
    public int f14991e = 12;

    /* renamed from: f  reason: collision with root package name */
    public int f14992f = 12;

    /* renamed from: g  reason: collision with root package name */
    public int f14993g = 12;

    public enum Style {
        line,
        empty
    }

    public View a(g gVar, View view) {
        Theme g2 = gVar.g();
        if (this.f14989c == Style.line) {
            view.setBackgroundColor(a.a(g2.a(), g2.j(), 0.85f));
        } else {
            view.setBackgroundColor(g2.a());
        }
        if (view.getLayoutParams() instanceof LinearLayout.LayoutParams) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
            layoutParams.setMargins(c.a(this.f14990d), c.a(this.f14993g), c.a(this.f14991e), c.a(this.f14992f));
            view.setLayoutParams(layoutParams);
        }
        return view;
    }

    public int b() {
        return f.inline_divider;
    }

    public void c(int i2) {
        this.f14990d = i2;
    }

    public void d(int i2) {
        this.f14991e = i2;
    }

    public void e(int i2) {
        this.f14993g = i2;
    }

    public void b(int i2) {
        this.f14992f = i2;
    }

    public void a(Style style) {
        this.f14989c = style;
    }

    public void a(int i2) {
        this.f14992f = i2;
        this.f14993g = i2;
        this.f14990d = i2;
        this.f14991e = i2;
    }
}
