package ir.cafebazaar.inline.ui.inflaters;

import android.view.View;
import android.widget.ImageView;
import f.a.a.d;
import f.a.a.e;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.f.e;
import ir.cafebazaar.inline.ui.inflaters.views.InlineAspectRatioImageView;

public class ImageInflater extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public String f14995c;

    /* renamed from: d  reason: collision with root package name */
    public Style f14996d = Style.normal;

    /* renamed from: e  reason: collision with root package name */
    public Float f14997e = null;

    /* renamed from: f  reason: collision with root package name */
    public int f14998f = 100;

    /* renamed from: g  reason: collision with root package name */
    public boolean f14999g = false;

    public enum Style {
        normal(f.inline_image, 0),
        roundbox(f.inline_image_margined, 24),
        avatar(f.inline_image_margined, 100000);
        
        public int layout;
        public int radius;

        /* access modifiers changed from: public */
        Style(int i2, int i3) {
            this.layout = i2;
            this.radius = i3;
        }

        public int f() {
            return this.layout;
        }

        public int g() {
            return this.radius;
        }
    }

    public int b() {
        return this.f14996d.f();
    }

    public String c() {
        return this.f14995c;
    }

    public void a(boolean z) {
        this.f14999g = z;
    }

    public void c(String str) {
        this.f14995c = str;
    }

    public void a(int i2) {
        this.f14998f = i2;
    }

    public void a(Style style) {
        this.f14996d = style;
    }

    public void a(float f2) {
        this.f14997e = Float.valueOf(f2);
    }

    public View a(g gVar, View view) {
        this.f14995c.toLowerCase().endsWith(".gif");
        InlineAspectRatioImageView inlineAspectRatioImageView = (InlineAspectRatioImageView) view;
        inlineAspectRatioImageView.setTag(e.image_style_tag, this.f14996d);
        Float f2 = this.f14997e;
        if (f2 != null) {
            inlineAspectRatioImageView.setAspectRatio(1.0f / f2.floatValue());
        }
        f.a.a.f.e.a().a(this.f14995c, (ImageView) inlineAspectRatioImageView, d.placeholder, this.f14996d.g(), (e.a) null);
        inlineAspectRatioImageView.setWidthPercent(this.f14998f);
        if (this.f14999g) {
            inlineAspectRatioImageView.setOnClickListener(new C1077t(this, gVar));
        }
        return inlineAspectRatioImageView;
    }
}
