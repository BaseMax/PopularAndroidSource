package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import com.google.android.material.a;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.k;

public class ChipGroup extends FlowLayout {

    /* renamed from: a  reason: collision with root package name */
    private int f3862a;

    /* renamed from: b  reason: collision with root package name */
    private int f3863b;
    /* access modifiers changed from: private */
    public boolean c;
    private b d;
    /* access modifiers changed from: private */
    public final a e;
    private c f;
    /* access modifiers changed from: private */
    public int g;
    /* access modifiers changed from: private */
    public boolean h;

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        /* synthetic */ a(ChipGroup chipGroup, byte b2) {
            this();
        }

        public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!ChipGroup.this.h) {
                int id = compoundButton.getId();
                if (z) {
                    if (!(ChipGroup.this.g == -1 || ChipGroup.this.g == id || !ChipGroup.this.c)) {
                        ChipGroup chipGroup = ChipGroup.this;
                        chipGroup.a(chipGroup.g, false);
                    }
                    ChipGroup.this.setCheckedId(id);
                    return;
                }
                if (ChipGroup.this.g == id) {
                    ChipGroup.this.setCheckedId(-1);
                }
            }
        }
    }

    public interface b {
        void onCheckedChanged(ChipGroup chipGroup, int i);
    }

    class c implements ViewGroup.OnHierarchyChangeListener {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public ViewGroup.OnHierarchyChangeListener f3866b;

        private c() {
        }

        /* synthetic */ c(ChipGroup chipGroup, byte b2) {
            this();
        }

        public final void onChildViewAdded(View view, View view2) {
            int i;
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        i = View.generateViewId();
                    } else {
                        i = view2.hashCode();
                    }
                    view2.setId(i);
                }
                ((Chip) view2).setOnCheckedChangeListenerInternal(ChipGroup.this.e);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f3866b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        public final void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f3866b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.chipGroupStyle);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new a(this, (byte) 0);
        this.f = new c(this, (byte) 0);
        this.g = -1;
        this.h = false;
        TypedArray obtainStyledAttributes = k.obtainStyledAttributes(context, attributeSet, a.k.ChipGroup, i, a.j.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(a.k.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(obtainStyledAttributes.getDimensionPixelOffset(a.k.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(obtainStyledAttributes.getDimensionPixelOffset(a.k.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(obtainStyledAttributes.getBoolean(a.k.ChipGroup_singleLine, false));
        setSingleSelection(obtainStyledAttributes.getBoolean(a.k.ChipGroup_singleSelection, false));
        int resourceId = obtainStyledAttributes.getResourceId(a.k.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.g = resourceId;
        }
        obtainStyledAttributes.recycle();
        super.setOnHierarchyChangeListener(this.f);
    }

    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        ViewGroup.OnHierarchyChangeListener unused = this.f.f3866b = onHierarchyChangeListener;
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        int i = this.g;
        if (i != -1) {
            a(i, true);
            setCheckedId(this.g);
        }
    }

    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                int i2 = this.g;
                if (i2 != -1 && this.c) {
                    a(i2, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
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
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void check(int i) {
        int i2 = this.g;
        if (i != i2) {
            if (i2 != -1 && this.c) {
                a(i2, false);
            }
            if (i != -1) {
                a(i, true);
            }
            setCheckedId(i);
        }
    }

    public int getCheckedChipId() {
        if (this.c) {
            return this.g;
        }
        return -1;
    }

    public void clearCheck() {
        this.h = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.h = false;
        setCheckedId(-1);
    }

    public void setOnCheckedChangeListener(b bVar) {
        this.d = bVar;
    }

    /* access modifiers changed from: private */
    public void setCheckedId(int i) {
        this.g = i;
        b bVar = this.d;
        if (bVar != null && this.c) {
            bVar.onCheckedChanged(this, i);
        }
    }

    /* access modifiers changed from: private */
    public void a(int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.h = true;
            ((Chip) findViewById).setChecked(z);
            this.h = false;
        }
    }

    public void setChipSpacing(int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingResource(int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    public int getChipSpacingHorizontal() {
        return this.f3862a;
    }

    public void setChipSpacingHorizontal(int i) {
        if (this.f3862a != i) {
            this.f3862a = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    public int getChipSpacingVertical() {
        return this.f3863b;
    }

    public void setChipSpacingVertical(int i) {
        if (this.f3863b != i) {
            this.f3863b = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    public void setSingleLine(int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    public boolean isSingleSelection() {
        return this.c;
    }

    public void setSingleSelection(boolean z) {
        if (this.c != z) {
            this.c = z;
            clearCheck();
        }
    }

    public void setSingleSelection(int i) {
        setSingleSelection(getResources().getBoolean(i));
    }
}
