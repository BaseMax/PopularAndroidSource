package c.e.a.c.h;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import c.e.a.c.j;
import c.e.a.c.k;
import c.e.a.c.l.h;
import c.e.a.c.l.p;

/* compiled from: ChipGroup */
public class d extends h {

    /* renamed from: d  reason: collision with root package name */
    public int f11307d;

    /* renamed from: e  reason: collision with root package name */
    public int f11308e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11309f;

    /* renamed from: g  reason: collision with root package name */
    public c f11310g;

    /* renamed from: h  reason: collision with root package name */
    public final a f11311h;

    /* renamed from: i  reason: collision with root package name */
    public C0132d f11312i;

    /* renamed from: j  reason: collision with root package name */
    public int f11313j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f11314k;

    /* compiled from: ChipGroup */
    private class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!d.this.f11314k) {
                int id = compoundButton.getId();
                if (z) {
                    if (!(d.this.f11313j == -1 || d.this.f11313j == id || !d.this.f11309f)) {
                        d dVar = d.this;
                        dVar.a(dVar.f11313j, false);
                    }
                    d.this.setCheckedId(id);
                } else if (d.this.f11313j == id) {
                    d.this.setCheckedId(-1);
                }
            }
        }
    }

    /* compiled from: ChipGroup */
    public static class b extends ViewGroup.MarginLayoutParams {
        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(int i2, int i3) {
            super(i2, i3);
        }
    }

    /* compiled from: ChipGroup */
    public interface c {
        void a(d dVar, int i2);
    }

    /* renamed from: c.e.a.c.h.d$d  reason: collision with other inner class name */
    /* compiled from: ChipGroup */
    private class C0132d implements ViewGroup.OnHierarchyChangeListener {

        /* renamed from: a  reason: collision with root package name */
        public ViewGroup.OnHierarchyChangeListener f11316a;

        public C0132d() {
        }

        public void onChildViewAdded(View view, View view2) {
            int i2;
            if (view == d.this && (view2 instanceof a)) {
                if (view2.getId() == -1) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        i2 = View.generateViewId();
                    } else {
                        i2 = view2.hashCode();
                    }
                    view2.setId(i2);
                }
                ((a) view2).setOnCheckedChangeListenerInternal(d.this.f11311h);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f11316a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public void onChildViewRemoved(View view, View view2) {
            if (view == d.this && (view2 instanceof a)) {
                ((a) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f11316a;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public d(Context context) {
        this(context, null);
    }

    /* access modifiers changed from: private */
    public void setCheckedId(int i2) {
        this.f11313j = i2;
        c cVar = this.f11310g;
        if (cVar != null && this.f11309f) {
            cVar.a(this, i2);
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof a) {
            a aVar = (a) view;
            if (aVar.isChecked()) {
                int i3 = this.f11313j;
                if (i3 != -1 && this.f11309f) {
                    a(i3, false);
                }
                setCheckedId(aVar.getId());
            }
        }
        super.addView(view, i2, layoutParams);
    }

    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        if (this.f11309f) {
            return this.f11313j;
        }
        return -1;
    }

    public int getChipSpacingHorizontal() {
        return this.f11307d;
    }

    public int getChipSpacingVertical() {
        return this.f11308e;
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.f11313j;
        if (i2 != -1) {
            a(i2, true);
            setCheckedId(this.f11313j);
        }
    }

    public void setChipSpacing(int i2) {
        setChipSpacingHorizontal(i2);
        setChipSpacingVertical(i2);
    }

    public void setChipSpacingHorizontal(int i2) {
        if (this.f11307d != i2) {
            this.f11307d = i2;
            setItemSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i2) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingResource(int i2) {
        setChipSpacing(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingVertical(int i2) {
        if (this.f11308e != i2) {
            this.f11308e = i2;
            setLineSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i2) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i2));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i2) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void setOnCheckedChangeListener(c cVar) {
        this.f11310g = cVar;
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        ViewGroup.OnHierarchyChangeListener unused = this.f11312i.f11316a = onHierarchyChangeListener;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(int i2) {
        setSingleLine(getResources().getBoolean(i2));
    }

    public void setSingleSelection(boolean z) {
        if (this.f11309f != z) {
            this.f11309f = z;
            b();
        }
    }

    public d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.e.a.c.b.chipGroupStyle);
    }

    public void b() {
        this.f11314k = true;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof a) {
                ((a) childAt).setChecked(false);
            }
        }
        this.f11314k = false;
        setCheckedId(-1);
    }

    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    public d(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11311h = new a();
        this.f11312i = new C0132d();
        this.f11313j = -1;
        this.f11314k = false;
        TypedArray c2 = p.c(context, attributeSet, k.ChipGroup, i2, j.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = c2.getDimensionPixelOffset(k.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(c2.getDimensionPixelOffset(k.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(c2.getDimensionPixelOffset(k.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(c2.getBoolean(k.ChipGroup_singleLine, false));
        setSingleSelection(c2.getBoolean(k.ChipGroup_singleSelection, false));
        int resourceId = c2.getResourceId(k.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.f11313j = resourceId;
        }
        c2.recycle();
        super.setOnHierarchyChangeListener(this.f11312i);
    }

    public final void a(int i2, boolean z) {
        View findViewById = findViewById(i2);
        if (findViewById instanceof a) {
            this.f11314k = true;
            ((a) findViewById).setChecked(z);
            this.f11314k = false;
        }
    }

    public void setSingleSelection(int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }
}
