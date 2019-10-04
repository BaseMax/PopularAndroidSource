package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import b.b.a;
import b.b.f;
import b.b.f.a.o;
import b.b.f.a.u;
import b.b.g;
import b.b.g.pa;
import b.b.j;
import b.i.k.z;

public class ListMenuItemView extends LinearLayout implements u.a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a  reason: collision with root package name */
    public o f307a;

    /* renamed from: b  reason: collision with root package name */
    public ImageView f308b;

    /* renamed from: c  reason: collision with root package name */
    public RadioButton f309c;

    /* renamed from: d  reason: collision with root package name */
    public TextView f310d;

    /* renamed from: e  reason: collision with root package name */
    public CheckBox f311e;

    /* renamed from: f  reason: collision with root package name */
    public TextView f312f;

    /* renamed from: g  reason: collision with root package name */
    public ImageView f313g;

    /* renamed from: h  reason: collision with root package name */
    public ImageView f314h;

    /* renamed from: i  reason: collision with root package name */
    public LinearLayout f315i;

    /* renamed from: j  reason: collision with root package name */
    public Drawable f316j;

    /* renamed from: k  reason: collision with root package name */
    public int f317k;

    /* renamed from: l  reason: collision with root package name */
    public Context f318l;
    public boolean m;
    public Drawable n;
    public boolean o;
    public int p;
    public LayoutInflater q;
    public boolean r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.listMenuViewStyle);
    }

    private LayoutInflater getInflater() {
        if (this.q == null) {
            this.q = LayoutInflater.from(getContext());
        }
        return this.q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f313g;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    public void a(o oVar, int i2) {
        this.f307a = oVar;
        this.p = i2;
        setVisibility(oVar.isVisible() ? 0 : 8);
        setTitle(oVar.a((u.a) this));
        setCheckable(oVar.isCheckable());
        a(oVar.m(), oVar.d());
        setIcon(oVar.getIcon());
        setEnabled(oVar.isEnabled());
        setSubMenuArrowVisible(oVar.hasSubMenu());
        setContentDescription(oVar.getContentDescription());
    }

    public boolean a() {
        return false;
    }

    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f314h;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f314h.getLayoutParams();
            rect.top += this.f314h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    public final void b() {
        this.f311e = (CheckBox) getInflater().inflate(g.abc_list_menu_item_checkbox, this, false);
        a(this.f311e);
    }

    public final void c() {
        this.f308b = (ImageView) getInflater().inflate(g.abc_list_menu_item_icon, this, false);
        a((View) this.f308b, 0);
    }

    public final void d() {
        this.f309c = (RadioButton) getInflater().inflate(g.abc_list_menu_item_radio, this, false);
        a(this.f309c);
    }

    public o getItemData() {
        return this.f307a;
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        z.a((View) this, this.f316j);
        this.f310d = (TextView) findViewById(f.title);
        int i2 = this.f317k;
        if (i2 != -1) {
            this.f310d.setTextAppearance(this.f318l, i2);
        }
        this.f312f = (TextView) findViewById(f.shortcut);
        this.f313g = (ImageView) findViewById(f.submenuarrow);
        ImageView imageView = this.f313g;
        if (imageView != null) {
            imageView.setImageDrawable(this.n);
        }
        this.f314h = (ImageView) findViewById(f.group_divider);
        this.f315i = (LinearLayout) findViewById(f.content);
    }

    public void onMeasure(int i2, int i3) {
        if (this.f308b != null && this.m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f308b.getLayoutParams();
            if (layoutParams.height > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = layoutParams.height;
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        CompoundButton compoundButton2;
        if (z || this.f309c != null || this.f311e != null) {
            if (this.f307a.i()) {
                if (this.f309c == null) {
                    d();
                }
                compoundButton2 = this.f309c;
                compoundButton = this.f311e;
            } else {
                if (this.f311e == null) {
                    b();
                }
                compoundButton2 = this.f311e;
                compoundButton = this.f309c;
            }
            if (z) {
                compoundButton2.setChecked(this.f307a.isChecked());
                if (compoundButton2.getVisibility() != 0) {
                    compoundButton2.setVisibility(0);
                }
                if (!(compoundButton == null || compoundButton.getVisibility() == 8)) {
                    compoundButton.setVisibility(8);
                }
            } else {
                CheckBox checkBox = this.f311e;
                if (checkBox != null) {
                    checkBox.setVisibility(8);
                }
                RadioButton radioButton = this.f309c;
                if (radioButton != null) {
                    radioButton.setVisibility(8);
                }
            }
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if (this.f307a.i()) {
            if (this.f309c == null) {
                d();
            }
            compoundButton = this.f309c;
        } else {
            if (this.f311e == null) {
                b();
            }
            compoundButton = this.f311e;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.r = z;
        this.m = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f314h;
        if (imageView != null) {
            imageView.setVisibility((this.o || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z = this.f307a.l() || this.r;
        if (!z && !this.m) {
            return;
        }
        if (this.f308b != null || drawable != null || this.m) {
            if (this.f308b == null) {
                c();
            }
            if (drawable != null || this.m) {
                ImageView imageView = this.f308b;
                if (!z) {
                    drawable = null;
                }
                imageView.setImageDrawable(drawable);
                if (this.f308b.getVisibility() != 0) {
                    this.f308b.setVisibility(0);
                }
            } else {
                this.f308b.setVisibility(8);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f310d.setText(charSequence);
            if (this.f310d.getVisibility() != 0) {
                this.f310d.setVisibility(0);
            }
        } else if (this.f310d.getVisibility() != 8) {
            this.f310d.setVisibility(8);
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        pa a2 = pa.a(getContext(), attributeSet, j.MenuView, i2, 0);
        this.f316j = a2.b(j.MenuView_android_itemBackground);
        this.f317k = a2.g(j.MenuView_android_itemTextAppearance, -1);
        this.m = a2.a(j.MenuView_preserveIconSpacing, false);
        this.f318l = context;
        this.n = a2.b(j.MenuView_subMenuArrow);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, a.dropDownListViewStyle, 0);
        this.o = obtainStyledAttributes.hasValue(0);
        a2.a();
        obtainStyledAttributes.recycle();
    }

    public final void a(View view) {
        a(view, -1);
    }

    public final void a(View view, int i2) {
        LinearLayout linearLayout = this.f315i;
        if (linearLayout != null) {
            linearLayout.addView(view, i2);
        } else {
            addView(view, i2);
        }
    }

    public void a(boolean z, char c2) {
        int i2 = (!z || !this.f307a.m()) ? 8 : 0;
        if (i2 == 0) {
            this.f312f.setText(this.f307a.e());
        }
        if (this.f312f.getVisibility() != i2) {
            this.f312f.setVisibility(i2);
        }
    }
}
