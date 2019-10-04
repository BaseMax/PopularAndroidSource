package c.e.a.c.e;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import b.D.C0156b;
import b.D.E;
import b.D.H;
import b.D.K;
import b.b.b.a.a;
import b.b.f.a.k;
import b.b.f.a.o;
import b.b.f.a.u;
import b.i.j.e;
import b.i.j.g;
import b.i.k.z;
import b.p.a.a.b;
import com.google.android.material.bottomnavigation.BottomNavigationPresenter;

/* compiled from: BottomNavigationMenuView */
public class d extends ViewGroup implements u {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f11259a = {16842912};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f11260b = {-16842910};

    /* renamed from: c  reason: collision with root package name */
    public final K f11261c;

    /* renamed from: d  reason: collision with root package name */
    public final int f11262d;

    /* renamed from: e  reason: collision with root package name */
    public final int f11263e;

    /* renamed from: f  reason: collision with root package name */
    public final int f11264f;

    /* renamed from: g  reason: collision with root package name */
    public final int f11265g;

    /* renamed from: h  reason: collision with root package name */
    public final int f11266h;

    /* renamed from: i  reason: collision with root package name */
    public final View.OnClickListener f11267i;

    /* renamed from: j  reason: collision with root package name */
    public final e<a> f11268j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11269k;

    /* renamed from: l  reason: collision with root package name */
    public int f11270l;
    public a[] m;
    public int n;
    public int o;
    public ColorStateList p;
    public int q;
    public ColorStateList r;
    public final ColorStateList s;
    public int t;
    public int u;
    public Drawable v;
    public int w;
    public int[] x;
    public BottomNavigationPresenter y;
    public k z;

    public d(Context context) {
        this(context, null);
    }

    private a getNewItem() {
        a a2 = this.f11268j.a();
        return a2 == null ? new a(getContext()) : a2;
    }

    public final boolean a(int i2, int i3) {
        if (i2 == -1) {
            if (i3 > 3) {
                return true;
            }
        } else if (i2 == 0) {
            return true;
        }
        return false;
    }

    public void c() {
        k kVar = this.z;
        if (!(kVar == null || this.m == null)) {
            int size = kVar.size();
            if (size != this.m.length) {
                a();
                return;
            }
            int i2 = this.n;
            for (int i3 = 0; i3 < size; i3++) {
                MenuItem item = this.z.getItem(i3);
                if (item.isChecked()) {
                    this.n = item.getItemId();
                    this.o = i3;
                }
            }
            if (i2 != this.n) {
                H.a(this, this.f11261c);
            }
            boolean a2 = a(this.f11270l, this.z.n().size());
            for (int i4 = 0; i4 < size; i4++) {
                this.y.b(true);
                this.m[i4].setLabelVisibilityMode(this.f11270l);
                this.m[i4].setShifting(a2);
                this.m[i4].a((o) this.z.getItem(i4), 0);
                this.y.b(false);
            }
        }
    }

    public ColorStateList getIconTintList() {
        return this.p;
    }

    public Drawable getItemBackground() {
        a[] aVarArr = this.m;
        if (aVarArr == null || aVarArr.length <= 0) {
            return this.v;
        }
        return aVarArr[0].getBackground();
    }

    @Deprecated
    public int getItemBackgroundRes() {
        return this.w;
    }

    public int getItemIconSize() {
        return this.q;
    }

    public int getItemTextAppearanceActive() {
        return this.u;
    }

    public int getItemTextAppearanceInactive() {
        return this.t;
    }

    public ColorStateList getItemTextColor() {
        return this.r;
    }

    public int getLabelVisibilityMode() {
        return this.f11270l;
    }

    public int getSelectedItemId() {
        return this.n;
    }

    public int getWindowAnimations() {
        return 0;
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int childCount = getChildCount();
        int i6 = i4 - i2;
        int i7 = i5 - i3;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                if (z.m(this) == 1) {
                    int i10 = i6 - i8;
                    childAt.layout(i10 - childAt.getMeasuredWidth(), 0, i10, i7);
                } else {
                    childAt.layout(i8, 0, childAt.getMeasuredWidth() + i8, i7);
                }
                i8 += childAt.getMeasuredWidth();
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = this.z.n().size();
        int childCount = getChildCount();
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f11266h, 1073741824);
        if (!a(this.f11270l, size2) || !this.f11269k) {
            int min = Math.min(size / (size2 == 0 ? 1 : size2), this.f11264f);
            int i4 = size - (size2 * min);
            for (int i5 = 0; i5 < childCount; i5++) {
                if (getChildAt(i5).getVisibility() != 8) {
                    int[] iArr = this.x;
                    iArr[i5] = min;
                    if (i4 > 0) {
                        iArr[i5] = iArr[i5] + 1;
                        i4--;
                    }
                } else {
                    this.x[i5] = 0;
                }
            }
        } else {
            View childAt = getChildAt(this.o);
            int i6 = this.f11265g;
            if (childAt.getVisibility() != 8) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(this.f11264f, Integer.MIN_VALUE), makeMeasureSpec);
                i6 = Math.max(i6, childAt.getMeasuredWidth());
            }
            int i7 = size2 - (childAt.getVisibility() != 8 ? 1 : 0);
            int min2 = Math.min(size - (this.f11263e * i7), Math.min(i6, this.f11264f));
            int i8 = size - min2;
            int min3 = Math.min(i8 / (i7 == 0 ? 1 : i7), this.f11262d);
            int i9 = i8 - (i7 * min3);
            int i10 = 0;
            while (i10 < childCount) {
                if (getChildAt(i10).getVisibility() != 8) {
                    this.x[i10] = i10 == this.o ? min2 : min3;
                    if (i9 > 0) {
                        int[] iArr2 = this.x;
                        iArr2[i10] = iArr2[i10] + 1;
                        i9--;
                    }
                } else {
                    this.x[i10] = 0;
                }
                i10++;
            }
        }
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt2 = getChildAt(i12);
            if (childAt2.getVisibility() != 8) {
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(this.x[i12], 1073741824), makeMeasureSpec);
                childAt2.getLayoutParams().width = childAt2.getMeasuredWidth();
                i11 += childAt2.getMeasuredWidth();
            }
        }
        setMeasuredDimension(View.resolveSizeAndState(i11, View.MeasureSpec.makeMeasureSpec(i11, 1073741824), 0), View.resolveSizeAndState(this.f11266h, makeMeasureSpec, 0));
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.p = colorStateList;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a iconTintList : aVarArr) {
                iconTintList.setIconTintList(colorStateList);
            }
        }
    }

    public void setItemBackground(Drawable drawable) {
        this.v = drawable;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a itemBackground : aVarArr) {
                itemBackground.setItemBackground(drawable);
            }
        }
    }

    public void setItemBackgroundRes(int i2) {
        this.w = i2;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a itemBackground : aVarArr) {
                itemBackground.setItemBackground(i2);
            }
        }
    }

    public void setItemHorizontalTranslationEnabled(boolean z2) {
        this.f11269k = z2;
    }

    public void setItemIconSize(int i2) {
        this.q = i2;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a iconSize : aVarArr) {
                iconSize.setIconSize(i2);
            }
        }
    }

    public void setItemTextAppearanceActive(int i2) {
        this.u = i2;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.setTextAppearanceActive(i2);
                ColorStateList colorStateList = this.r;
                if (colorStateList != null) {
                    aVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextAppearanceInactive(int i2) {
        this.t = i2;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                aVar.setTextAppearanceInactive(i2);
                ColorStateList colorStateList = this.r;
                if (colorStateList != null) {
                    aVar.setTextColor(colorStateList);
                }
            }
        }
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.r = colorStateList;
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a textColor : aVarArr) {
                textColor.setTextColor(colorStateList);
            }
        }
    }

    public void setLabelVisibilityMode(int i2) {
        this.f11270l = i2;
    }

    public void setPresenter(BottomNavigationPresenter bottomNavigationPresenter) {
        this.y = bottomNavigationPresenter;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11268j = new g(5);
        this.n = 0;
        this.o = 0;
        Resources resources = getResources();
        this.f11262d = resources.getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_item_max_width);
        this.f11263e = resources.getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_item_min_width);
        this.f11264f = resources.getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_active_item_max_width);
        this.f11265g = resources.getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_active_item_min_width);
        this.f11266h = resources.getDimensionPixelSize(c.e.a.c.d.design_bottom_navigation_height);
        this.s = a(16842808);
        this.f11261c = new C0156b();
        this.f11261c.b(0);
        this.f11261c.a(115);
        this.f11261c.a((TimeInterpolator) new b());
        this.f11261c.a((E) new c.e.a.c.l.o());
        this.f11267i = new c(this);
        this.x = new int[5];
    }

    public void a(k kVar) {
        this.z = kVar;
    }

    public boolean b() {
        return this.f11269k;
    }

    public ColorStateList a(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList b2 = a.b(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(b.b.a.colorPrimary, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = b2.getDefaultColor();
        return new ColorStateList(new int[][]{f11260b, f11259a, ViewGroup.EMPTY_STATE_SET}, new int[]{b2.getColorForState(f11260b, defaultColor), i3, defaultColor});
    }

    public void b(int i2) {
        int size = this.z.size();
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = this.z.getItem(i3);
            if (i2 == item.getItemId()) {
                this.n = i2;
                this.o = i3;
                item.setChecked(true);
                return;
            }
        }
    }

    public void a() {
        removeAllViews();
        a[] aVarArr = this.m;
        if (aVarArr != null) {
            for (a aVar : aVarArr) {
                if (aVar != null) {
                    this.f11268j.a(aVar);
                }
            }
        }
        if (this.z.size() == 0) {
            this.n = 0;
            this.o = 0;
            this.m = null;
            return;
        }
        this.m = new a[this.z.size()];
        boolean a2 = a(this.f11270l, this.z.n().size());
        for (int i2 = 0; i2 < this.z.size(); i2++) {
            this.y.b(true);
            this.z.getItem(i2).setCheckable(true);
            this.y.b(false);
            a newItem = getNewItem();
            this.m[i2] = newItem;
            newItem.setIconTintList(this.p);
            newItem.setIconSize(this.q);
            newItem.setTextColor(this.s);
            newItem.setTextAppearanceInactive(this.t);
            newItem.setTextAppearanceActive(this.u);
            newItem.setTextColor(this.r);
            Drawable drawable = this.v;
            if (drawable != null) {
                newItem.setItemBackground(drawable);
            } else {
                newItem.setItemBackground(this.w);
            }
            newItem.setShifting(a2);
            newItem.setLabelVisibilityMode(this.f11270l);
            newItem.a((o) this.z.getItem(i2), 0);
            newItem.setItemPosition(i2);
            newItem.setOnClickListener(this.f11267i);
            addView(newItem);
        }
        this.o = Math.min(this.z.size() - 1, this.o);
        this.z.getItem(this.o).setChecked(true);
    }
}
