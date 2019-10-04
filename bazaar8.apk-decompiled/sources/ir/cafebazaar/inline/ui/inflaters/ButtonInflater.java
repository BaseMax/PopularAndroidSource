package ir.cafebazaar.inline.ui.inflaters;

import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import c.c.a.d.g.a;
import f.a.a.d;
import f.a.a.e;
import f.a.a.e.b.C1072n;
import f.a.a.e.g;
import f.a.a.f;
import f.a.a.g.d.a.b;
import f.a.a.g.d.a.q;
import ir.cafebazaar.inline.ui.Theme;

public class ButtonInflater extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public String f14977c;

    /* renamed from: d  reason: collision with root package name */
    public Style f14978d = Style.secondary;

    /* renamed from: e  reason: collision with root package name */
    public b f14979e;

    public enum Style {
        primary(d.inline_button_primary, f.inline_button),
        secondary(d.inline_button_secondary, f.inline_button),
        primarySmall(d.inline_button_primary, f.inline_button_small),
        secondarySmall(d.inline_button_secondary, f.inline_button_small);
        
        public int backgroundResId;
        public int buttonLayoutId;

        /* access modifiers changed from: public */
        Style(int i2, int i3) {
            this.backgroundResId = i2;
            this.buttonLayoutId = i3;
        }

        public int a(Theme theme) {
            if (this.backgroundResId == d.inline_button_primary) {
                return theme.g();
            }
            return theme.h();
        }

        public int f() {
            return this.backgroundResId;
        }

        public int g() {
            return this.buttonLayoutId;
        }

        public Style h() {
            if (this == primarySmall) {
                return primary;
            }
            return this == secondarySmall ? secondary : this;
        }
    }

    public int b() {
        return this.f14978d.g();
    }

    public void c(String str) {
        this.f14977c = str;
    }

    public View a(g gVar, View view) {
        AppCompatButton appCompatButton = (AppCompatButton) view.findViewById(e.button);
        AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(e.button_icon);
        Theme g2 = gVar.g();
        appCompatButton.setBackgroundResource(this.f14978d.f());
        appCompatButton.setTextColor(this.f14978d.a(g2));
        int[][] iArr = {new int[]{16842919}, new int[0]};
        int[] iArr2 = new int[2];
        iArr2[0] = a.a(g2.a(), g2.h(), this.f14978d.h() == Style.primary ? 0.2f : 0.8f);
        iArr2[1] = g2.h();
        appCompatButton.setSupportBackgroundTintList(new ColorStateList(iArr, iArr2));
        appCompatButton.setText(this.f14977c);
        if (this.f14979e != null) {
            appCompatButton.setOnClickListener(new C1068j(this, gVar));
        }
        if (this.f14979e instanceof q) {
            Drawable drawable = gVar.f().getResources().getDrawable(d.ic_inline_share);
            b.i.c.a.a.b(drawable, this.f14978d.a(g2));
            appCompatImageView.setImageDrawable(drawable);
        }
        return view;
    }

    public Style c() {
        return this.f14978d;
    }

    public void a(b bVar) {
        this.f14979e = bVar;
    }

    public void a(Style style) {
        this.f14978d = style;
    }
}
