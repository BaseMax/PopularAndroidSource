package c.e.a.c.e;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import b.b.f.a.o;
import b.b.f.a.u;
import b.b.g.xa;
import b.i.k.s;
import b.i.k.z;
import b.i.l.j;
import c.e.a.c.d;
import c.e.a.c.e;
import c.e.a.c.f;
import c.e.a.c.h;

/* compiled from: BottomNavigationItemView */
public class a extends FrameLayout implements u.a {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f11246a = {16842912};

    /* renamed from: b  reason: collision with root package name */
    public final int f11247b;

    /* renamed from: c  reason: collision with root package name */
    public float f11248c;

    /* renamed from: d  reason: collision with root package name */
    public float f11249d;

    /* renamed from: e  reason: collision with root package name */
    public float f11250e;

    /* renamed from: f  reason: collision with root package name */
    public int f11251f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f11252g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f11253h;

    /* renamed from: i  reason: collision with root package name */
    public final TextView f11254i;

    /* renamed from: j  reason: collision with root package name */
    public final TextView f11255j;

    /* renamed from: k  reason: collision with root package name */
    public int f11256k;

    /* renamed from: l  reason: collision with root package name */
    public o f11257l;
    public ColorStateList m;

    public a(Context context) {
        this(context, null);
    }

    public void a(o oVar, int i2) {
        this.f11257l = oVar;
        setCheckable(oVar.isCheckable());
        setChecked(oVar.isChecked());
        setEnabled(oVar.isEnabled());
        setIcon(oVar.getIcon());
        setTitle(oVar.getTitle());
        setId(oVar.getItemId());
        if (!TextUtils.isEmpty(oVar.getContentDescription())) {
            setContentDescription(oVar.getContentDescription());
        }
        xa.a(this, oVar.getTooltipText());
        setVisibility(oVar.isVisible() ? 0 : 8);
    }

    public boolean a() {
        return false;
    }

    public o getItemData() {
        return this.f11257l;
    }

    public int getItemPosition() {
        return this.f11256k;
    }

    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        o oVar = this.f11257l;
        if (oVar != null && oVar.isCheckable() && this.f11257l.isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, f11246a);
        }
        return onCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
    }

    public void setChecked(boolean z) {
        TextView textView = this.f11255j;
        textView.setPivotX((float) (textView.getWidth() / 2));
        TextView textView2 = this.f11255j;
        textView2.setPivotY((float) textView2.getBaseline());
        TextView textView3 = this.f11254i;
        textView3.setPivotX((float) (textView3.getWidth() / 2));
        TextView textView4 = this.f11254i;
        textView4.setPivotY((float) textView4.getBaseline());
        int i2 = this.f11251f;
        if (i2 != -1) {
            if (i2 == 0) {
                if (z) {
                    a(this.f11253h, this.f11247b, 49);
                    a(this.f11255j, 1.0f, 1.0f, 0);
                } else {
                    a(this.f11253h, this.f11247b, 17);
                    a(this.f11255j, 0.5f, 0.5f, 4);
                }
                this.f11254i.setVisibility(4);
            } else if (i2 != 1) {
                if (i2 == 2) {
                    a(this.f11253h, this.f11247b, 17);
                    this.f11255j.setVisibility(8);
                    this.f11254i.setVisibility(8);
                }
            } else if (z) {
                a(this.f11253h, (int) (((float) this.f11247b) + this.f11248c), 49);
                a(this.f11255j, 1.0f, 1.0f, 0);
                TextView textView5 = this.f11254i;
                float f2 = this.f11249d;
                a(textView5, f2, f2, 4);
            } else {
                a(this.f11253h, this.f11247b, 49);
                TextView textView6 = this.f11255j;
                float f3 = this.f11250e;
                a(textView6, f3, f3, 4);
                a(this.f11254i, 1.0f, 1.0f, 0);
            }
        } else if (this.f11252g) {
            if (z) {
                a(this.f11253h, this.f11247b, 49);
                a(this.f11255j, 1.0f, 1.0f, 0);
            } else {
                a(this.f11253h, this.f11247b, 17);
                a(this.f11255j, 0.5f, 0.5f, 4);
            }
            this.f11254i.setVisibility(4);
        } else if (z) {
            a(this.f11253h, (int) (((float) this.f11247b) + this.f11248c), 49);
            a(this.f11255j, 1.0f, 1.0f, 0);
            TextView textView7 = this.f11254i;
            float f4 = this.f11249d;
            a(textView7, f4, f4, 4);
        } else {
            a(this.f11253h, this.f11247b, 49);
            TextView textView8 = this.f11255j;
            float f5 = this.f11250e;
            a(textView8, f5, f5, 4);
            a(this.f11254i, 1.0f, 1.0f, 0);
        }
        refreshDrawableState();
        setSelected(z);
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.f11254i.setEnabled(z);
        this.f11255j.setEnabled(z);
        this.f11253h.setEnabled(z);
        if (z) {
            z.a((View) this, s.a(getContext(), 1002));
        } else {
            z.a((View) this, (s) null);
        }
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                drawable = constantState.newDrawable();
            }
            drawable = b.i.c.a.a.i(drawable).mutate();
            b.i.c.a.a.a(drawable, this.m);
        }
        this.f11253h.setImageDrawable(drawable);
    }

    public void setIconSize(int i2) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f11253h.getLayoutParams();
        layoutParams.width = i2;
        layoutParams.height = i2;
        this.f11253h.setLayoutParams(layoutParams);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.m = colorStateList;
        o oVar = this.f11257l;
        if (oVar != null) {
            setIcon(oVar.getIcon());
        }
    }

    public void setItemBackground(int i2) {
        setItemBackground(i2 == 0 ? null : b.i.b.a.c(getContext(), i2));
    }

    public void setItemPosition(int i2) {
        this.f11256k = i2;
    }

    public void setLabelVisibilityMode(int i2) {
        if (this.f11251f != i2) {
            this.f11251f = i2;
            if (this.f11257l != null) {
                setChecked(this.f11257l.isChecked());
            }
        }
    }

    public void setShifting(boolean z) {
        if (this.f11252g != z) {
            this.f11252g = z;
            if (this.f11257l != null) {
                setChecked(this.f11257l.isChecked());
            }
        }
    }

    public void setTextAppearanceActive(int i2) {
        j.e(this.f11255j, i2);
        a(this.f11254i.getTextSize(), this.f11255j.getTextSize());
    }

    public void setTextAppearanceInactive(int i2) {
        j.e(this.f11254i, i2);
        a(this.f11254i.getTextSize(), this.f11255j.getTextSize());
    }

    public void setTextColor(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f11254i.setTextColor(colorStateList);
            this.f11255j.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        this.f11254i.setText(charSequence);
        this.f11255j.setText(charSequence);
        o oVar = this.f11257l;
        if (oVar == null || TextUtils.isEmpty(oVar.getContentDescription())) {
            setContentDescription(charSequence);
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11256k = -1;
        Resources resources = getResources();
        LayoutInflater.from(context).inflate(h.design_bottom_navigation_item, this, true);
        setBackgroundResource(e.design_bottom_navigation_item_background);
        this.f11247b = resources.getDimensionPixelSize(d.design_bottom_navigation_margin);
        this.f11253h = (ImageView) findViewById(f.icon);
        this.f11254i = (TextView) findViewById(f.smallLabel);
        this.f11255j = (TextView) findViewById(f.largeLabel);
        z.g(this.f11254i, 2);
        z.g(this.f11255j, 2);
        setFocusable(true);
        a(this.f11254i.getTextSize(), this.f11255j.getTextSize());
    }

    public void setItemBackground(Drawable drawable) {
        z.a((View) this, drawable);
    }

    public final void a(View view, int i2, int i3) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.topMargin = i2;
        layoutParams.gravity = i3;
        view.setLayoutParams(layoutParams);
    }

    public final void a(View view, float f2, float f3, int i2) {
        view.setScaleX(f2);
        view.setScaleY(f3);
        view.setVisibility(i2);
    }

    public final void a(float f2, float f3) {
        this.f11248c = f2 - f3;
        this.f11249d = (f3 * 1.0f) / f2;
        this.f11250e = (f2 * 1.0f) / f3;
    }
}
