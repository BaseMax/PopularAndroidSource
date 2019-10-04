package ir.cafebazaar.inline.ui.inflaters;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import b.i.b.a;
import b.y.a.C0346p;
import f.a.a.b;
import f.a.a.d;
import f.a.a.e;
import f.a.a.e.b.C1082y;
import f.a.a.e.g;
import f.a.a.f.c;

public class TableInflater extends C1082y {

    /* renamed from: i  reason: collision with root package name */
    public Size f15007i = Size.normal;

    /* renamed from: j  reason: collision with root package name */
    public TableBorderStyle f15008j;

    /* renamed from: k  reason: collision with root package name */
    public String f15009k;

    /* renamed from: l  reason: collision with root package name */
    public String f15010l;
    public ItemDecorationStatus m;

    public enum ItemDecorationStatus {
        none,
        normal,
        table,
        betweenRows
    }

    public enum Size {
        small(0.4f),
        normal(0.7f),
        large(0.9f);
        
        public float displaySize;

        /* access modifiers changed from: public */
        Size(float f2) {
            this.displaySize = f2;
        }
    }

    public enum TableBorderStyle {
        none,
        round,
        rect
    }

    public final Context b(g gVar) {
        if (gVar.f() == null) {
            return gVar.getApplicationContext();
        }
        return gVar.f();
    }

    public final int c(g gVar) {
        String str = this.f15010l;
        if (str != null) {
            return Color.parseColor(str);
        }
        if (gVar.g() == null) {
            return a.a(gVar.getApplicationContext(), b.gray_light);
        }
        return gVar.g().h();
    }

    public void e(String str) {
        this.f15009k = str;
    }

    public void f(String str) {
        this.f15010l = str;
    }

    public View a(g gVar, View view) {
        Drawable drawable;
        int i2;
        super.a(gVar, view);
        view.post(new N(this, view, view));
        int i3 = O.f14086a[this.f15008j.ordinal()];
        if (i3 == 1) {
            drawable = a.c(b(gVar), d.inline_table_rect_bg);
        } else if (i3 != 2) {
            drawable = null;
        } else {
            drawable = a.c(b(gVar), d.inline_table_round_bg);
        }
        if (drawable != null && (drawable instanceof GradientDrawable)) {
            GradientDrawable gradientDrawable = (GradientDrawable) drawable;
            String str = this.f15009k;
            if (str != null) {
                i2 = Color.parseColor(str);
            } else if (gVar.g() == null) {
                i2 = a.a(gVar.getApplicationContext(), b.gray_light);
            } else {
                i2 = gVar.g().h();
            }
            gradientDrawable.setStroke(c.a(1), i2);
        }
        f.a.a.f.a.a(view, drawable);
        View findViewById = view.findViewById(e.inlineListTopBorder);
        if (this.m == ItemDecorationStatus.table) {
            findViewById.setVisibility(0);
            findViewById.setBackgroundColor(c(gVar));
        } else {
            findViewById.setVisibility(8);
        }
        return view;
    }

    public void a(Size size) {
        this.f15007i = size;
    }

    public void a(TableBorderStyle tableBorderStyle) {
        this.f15008j = tableBorderStyle;
    }

    public void a(ItemDecorationStatus itemDecorationStatus) {
        this.m = itemDecorationStatus;
    }

    public RecyclerView.h a(g gVar) {
        int c2 = c(gVar);
        int i2 = O.f14087b[this.m.ordinal()];
        if (i2 == 1) {
            return new C0346p(gVar.f().getApplicationContext(), 1);
        }
        if (i2 == 2) {
            return new f.a.a.g.j.a(c2, c.a(1), true);
        }
        if (i2 != 3) {
            return null;
        }
        return new f.a.a.g.j.a(c2, c.a(1), false);
    }
}
