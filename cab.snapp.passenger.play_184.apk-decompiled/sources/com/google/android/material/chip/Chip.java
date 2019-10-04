package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.material.a;
import com.google.android.material.a.h;
import com.google.android.material.chip.a;
import com.google.android.material.f.b;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

public class Chip extends AppCompatCheckBox implements a.C0070a {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final Rect f3857a = new Rect();

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f3858b = {16842913};
    /* access modifiers changed from: private */
    public a c;
    private RippleDrawable d;
    private View.OnClickListener e;
    private CompoundButton.OnCheckedChangeListener f;
    private boolean g;
    private int h;
    private boolean i;
    private boolean j;
    private boolean k;
    private final a l;
    private final Rect m;
    private final RectF n;
    private final ResourcesCompat.FontCallback o;

    class a extends ExploreByTouchHelper {
        a(Chip chip) {
            super(chip);
        }

        public final int getVirtualViewAt(float f, float f2) {
            return (!Chip.this.d() || !Chip.this.getCloseIconTouchBounds().contains(f, f2)) ? -1 : 0;
        }

        public final void getVisibleVirtualViews(List<Integer> list) {
            if (Chip.this.d()) {
                list.add(0);
            }
        }

        public final void onPopulateNodeForVirtualView(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (Chip.this.d()) {
                CharSequence closeIconContentDescription = Chip.this.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfoCompat.setContentDescription(closeIconContentDescription);
                } else {
                    CharSequence text = Chip.this.getText();
                    Context context = Chip.this.getContext();
                    int i2 = a.i.mtrl_chip_close_icon_content_description;
                    Object[] objArr = new Object[1];
                    if (TextUtils.isEmpty(text)) {
                        text = "";
                    }
                    objArr[0] = text;
                    accessibilityNodeInfoCompat.setContentDescription(context.getString(i2, objArr).trim());
                }
                accessibilityNodeInfoCompat.setBoundsInParent(Chip.this.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.addAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_CLICK);
                accessibilityNodeInfoCompat.setEnabled(Chip.this.isEnabled());
                return;
            }
            accessibilityNodeInfoCompat.setContentDescription("");
            accessibilityNodeInfoCompat.setBoundsInParent(Chip.f3857a);
        }

        public final void onPopulateNodeForHost(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.setCheckable(Chip.this.c != null && Chip.this.c.isCheckable());
            accessibilityNodeInfoCompat.setClassName(Chip.class.getName());
            CharSequence text = Chip.this.getText();
            if (Build.VERSION.SDK_INT >= 23) {
                accessibilityNodeInfoCompat.setText(text);
            } else {
                accessibilityNodeInfoCompat.setContentDescription(text);
            }
        }

        public final boolean onPerformActionForVirtualView(int i, int i2, Bundle bundle) {
            if (i2 == 16 && i == 0) {
                return Chip.this.performCloseIconClick();
            }
            return false;
        }
    }

    public Chip(Context context) {
        this(context, null);
    }

    public Chip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.chipStyle);
    }

    public Chip(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = Integer.MIN_VALUE;
        this.m = new Rect();
        this.n = new RectF();
        this.o = new ResourcesCompat.FontCallback() {
            public final void onFontRetrievalFailed(int i) {
            }

            public final void onFontRetrieved(Typeface typeface) {
                Chip chip = Chip.this;
                chip.setText(chip.getText());
                Chip.this.requestLayout();
                Chip.this.invalidate();
            }
        };
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            } else if (attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) == 1 && attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) == 1) {
                attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627);
            } else {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
        }
        a createFromAttributes = a.createFromAttributes(context, attributeSet, i2, a.j.Widget_MaterialComponents_Chip_Action);
        setChipDrawable(createFromAttributes);
        this.l = new a(this);
        ViewCompat.setAccessibilityDelegate(this, this.l);
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new ViewOutlineProvider() {
                public final void getOutline(View view, Outline outline) {
                    if (Chip.this.c != null) {
                        Chip.this.c.getOutline(outline);
                    } else {
                        outline.setAlpha(0.0f);
                    }
                }
            });
        }
        setChecked(this.g);
        createFromAttributes.f3868a = false;
        setText(createFromAttributes.getText());
        setEllipsize(createFromAttributes.getEllipsize());
        setIncludeFontPadding(false);
        if (getTextAppearance() != null) {
            a(getTextAppearance());
        }
        setSingleLine();
        setGravity(8388627);
        b();
    }

    private void b() {
        if (!TextUtils.isEmpty(getText())) {
            a aVar = this.c;
            if (aVar != null) {
                float chipStartPadding = aVar.getChipStartPadding() + this.c.getChipEndPadding() + this.c.getTextStartPadding() + this.c.getTextEndPadding();
                if ((this.c.isChipIconVisible() && this.c.getChipIcon() != null) || (this.c.getCheckedIcon() != null && this.c.isCheckedIconVisible() && isChecked())) {
                    chipStartPadding += this.c.getIconStartPadding() + this.c.getIconEndPadding() + this.c.getChipIconSize();
                }
                if (this.c.isCloseIconVisible() && this.c.getCloseIcon() != null) {
                    chipStartPadding += this.c.getCloseIconStartPadding() + this.c.getCloseIconEndPadding() + this.c.getCloseIconSize();
                }
                if (((float) ViewCompat.getPaddingEnd(this)) != chipStartPadding) {
                    ViewCompat.setPaddingRelative(this, ViewCompat.getPaddingStart(this), getPaddingTop(), (int) chipStartPadding, getPaddingBottom());
                }
            }
        }
    }

    public Drawable getChipDrawable() {
        return this.c;
    }

    public void setChipDrawable(a aVar) {
        a aVar2 = this.c;
        if (aVar2 != aVar) {
            if (aVar2 != null) {
                aVar2.setDelegate(null);
            }
            this.c = aVar;
            this.c.setDelegate(this);
            if (com.google.android.material.g.a.USE_FRAMEWORK_RIPPLE) {
                this.d = new RippleDrawable(com.google.android.material.g.a.convertToRippleDrawableColor(this.c.getRippleColor()), this.c, null);
                this.c.setUseCompatRipple(false);
                ViewCompat.setBackground(this, this.d);
                return;
            }
            this.c.setUseCompatRipple(true);
            ViewCompat.setBackground(this, this.c);
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 1);
        if (isChecked()) {
            mergeDrawableStates(onCreateDrawableState, f3858b);
        }
        return onCreateDrawableState;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        if (!TextUtils.isEmpty(getText())) {
            a aVar = this.c;
            if (aVar != null && !aVar.f3868a) {
                int save = canvas.save();
                float chipStartPadding = getChipStartPadding() + this.c.b() + getTextStartPadding();
                if (ViewCompat.getLayoutDirection(this) != 0) {
                    chipStartPadding = -chipStartPadding;
                }
                canvas.translate(chipStartPadding, 0.0f);
                super.onDraw(canvas);
                canvas.restoreToCount(save);
                return;
            }
        }
        super.onDraw(canvas);
    }

    public void setGravity(int i2) {
        if (i2 == 8388627) {
            super.setGravity(i2);
        }
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        throw new UnsupportedOperationException("Do not set the background tint list; Chip manages its own background drawable.");
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        throw new UnsupportedOperationException("Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setBackgroundColor(int i2) {
        throw new UnsupportedOperationException("Do not set the background color; Chip manages its own background drawable.");
    }

    public void setBackgroundResource(int i2) {
        throw new UnsupportedOperationException("Do not set the background resource; Chip manages its own background drawable.");
    }

    public void setBackground(Drawable drawable) {
        if (drawable == this.c || drawable == this.d) {
            super.setBackground(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background; Chip manages its own background drawable.");
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.c || drawable == this.d) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        throw new UnsupportedOperationException("Do not set the background drawable; Chip manages its own background drawable.");
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        if (i2 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (i4 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i2, i3, i4, i5);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        } else if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        } else {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
    }

    public TextUtils.TruncateAt getEllipsize() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getEllipsize();
        }
        return null;
    }

    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.c != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                a aVar = this.c;
                if (aVar != null) {
                    aVar.setEllipsize(truncateAt);
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setLines(int i2) {
        if (i2 <= 1) {
            super.setLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMinLines(int i2) {
        if (i2 <= 1) {
            super.setMinLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxLines(int i2) {
        if (i2 <= 1) {
            super.setMaxLines(i2);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    public void setMaxWidth(int i2) {
        super.setMaxWidth(i2);
        a aVar = this.c;
        if (aVar != null) {
            aVar.setMaxWidth(i2);
        }
    }

    public void onChipDrawableSizeChange() {
        b();
        requestLayout();
        if (Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setChecked(boolean z) {
        a aVar = this.c;
        if (aVar == null) {
            this.g = z;
            return;
        }
        if (aVar.isCheckable()) {
            boolean isChecked = isChecked();
            super.setChecked(z);
            if (isChecked != z) {
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = this.f;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(this, z);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void setOnCheckedChangeListenerInternal(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.e = onClickListener;
    }

    public boolean performCloseIconClick() {
        boolean z;
        playSoundEffect(0);
        View.OnClickListener onClickListener = this.e;
        if (onClickListener != null) {
            onClickListener.onClick(this);
            z = true;
        } else {
            z = false;
        }
        this.l.sendEventForVirtualView(0, 1);
        return z;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001e, code lost:
        if (r0 != 3) goto L_0x0040;
     */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x0043  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 0
            r3 = 1
            if (r0 == 0) goto L_0x0039
            if (r0 == r3) goto L_0x002b
            r4 = 2
            if (r0 == r4) goto L_0x0021
            r1 = 3
            if (r0 == r1) goto L_0x0034
            goto L_0x0040
        L_0x0021:
            boolean r0 = r5.i
            if (r0 == 0) goto L_0x0040
            if (r1 != 0) goto L_0x003e
            r5.setCloseIconPressed(r2)
            goto L_0x003e
        L_0x002b:
            boolean r0 = r5.i
            if (r0 == 0) goto L_0x0034
            r5.performCloseIconClick()
            r0 = 1
            goto L_0x0035
        L_0x0034:
            r0 = 0
        L_0x0035:
            r5.setCloseIconPressed(r2)
            goto L_0x0041
        L_0x0039:
            if (r1 == 0) goto L_0x0040
            r5.setCloseIconPressed(r3)
        L_0x003e:
            r0 = 1
            goto L_0x0041
        L_0x0040:
            r0 = 0
        L_0x0041:
            if (r0 != 0) goto L_0x004b
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L_0x004a
            goto L_0x004b
        L_0x004a:
            return r2
        L_0x004b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    private boolean a(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 10) {
            try {
                Field declaredField = ExploreByTouchHelper.class.getDeclaredField("mHoveredVirtualViewId");
                declaredField.setAccessible(true);
                if (((Integer) declaredField.get(this.l)).intValue() != Integer.MIN_VALUE) {
                    Method declaredMethod = ExploreByTouchHelper.class.getDeclaredMethod("updateHoveredVirtualView", new Class[]{Integer.TYPE});
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(this.l, new Object[]{Integer.MIN_VALUE});
                    return true;
                }
            } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return a(motionEvent) || this.l.dispatchHoverEvent(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return this.l.dispatchKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* access modifiers changed from: protected */
    public void onFocusChanged(boolean z, int i2, Rect rect) {
        if (z) {
            setFocusedVirtualView(-1);
        } else {
            setFocusedVirtualView(Integer.MIN_VALUE);
        }
        invalidate();
        super.onFocusChanged(z, i2, rect);
        this.l.onFocusChanged(z, i2, rect);
    }

    /* JADX WARNING: Removed duplicated region for block: B:33:0x0069  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onKeyDown(int r7, android.view.KeyEvent r8) {
        /*
            r6 = this;
            int r0 = r8.getKeyCode()
            r1 = 61
            r2 = 0
            r3 = 1
            if (r0 == r1) goto L_0x0041
            r1 = 66
            if (r0 == r1) goto L_0x0031
            switch(r0) {
                case 21: goto L_0x0022;
                case 22: goto L_0x0012;
                case 23: goto L_0x0031;
                default: goto L_0x0011;
            }
        L_0x0011:
            goto L_0x006d
        L_0x0012:
            boolean r0 = r8.hasNoModifiers()
            if (r0 == 0) goto L_0x006d
            boolean r0 = com.google.android.material.internal.l.isLayoutRtl(r6)
            r0 = r0 ^ r3
            boolean r2 = r6.a((boolean) r0)
            goto L_0x006d
        L_0x0022:
            boolean r0 = r8.hasNoModifiers()
            if (r0 == 0) goto L_0x006d
            boolean r0 = com.google.android.material.internal.l.isLayoutRtl(r6)
            boolean r2 = r6.a((boolean) r0)
            goto L_0x006d
        L_0x0031:
            int r0 = r6.h
            r1 = -1
            if (r0 == r1) goto L_0x003d
            if (r0 == 0) goto L_0x0039
            goto L_0x006d
        L_0x0039:
            r6.performCloseIconClick()
            return r3
        L_0x003d:
            r6.performClick()
            return r3
        L_0x0041:
            boolean r0 = r8.hasNoModifiers()
            if (r0 == 0) goto L_0x0049
            r0 = 2
            goto L_0x0052
        L_0x0049:
            boolean r0 = r8.hasModifiers(r3)
            if (r0 == 0) goto L_0x0051
            r0 = 1
            goto L_0x0052
        L_0x0051:
            r0 = 0
        L_0x0052:
            if (r0 == 0) goto L_0x006d
            android.view.ViewParent r1 = r6.getParent()
            r4 = r6
        L_0x0059:
            android.view.View r4 = r4.focusSearch(r0)
            if (r4 == 0) goto L_0x0067
            if (r4 == r6) goto L_0x0067
            android.view.ViewParent r5 = r4.getParent()
            if (r5 == r1) goto L_0x0059
        L_0x0067:
            if (r4 == 0) goto L_0x006d
            r4.requestFocus()
            return r3
        L_0x006d:
            if (r2 == 0) goto L_0x0073
            r6.invalidate()
            return r3
        L_0x0073:
            boolean r7 = super.onKeyDown(r7, r8)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    private boolean a(boolean z) {
        c();
        if (z) {
            if (this.h == -1) {
                setFocusedVirtualView(0);
                return true;
            }
        } else if (this.h == 0) {
            setFocusedVirtualView(-1);
            return true;
        }
        return false;
    }

    private void c() {
        if (this.h == Integer.MIN_VALUE) {
            setFocusedVirtualView(-1);
        }
    }

    public void getFocusedRect(Rect rect) {
        if (this.h == 0) {
            rect.set(getCloseIconTouchBoundsInt());
        } else {
            super.getFocusedRect(rect);
        }
    }

    private void setFocusedVirtualView(int i2) {
        int i3 = this.h;
        if (i3 != i2) {
            if (i3 == 0) {
                setCloseIconFocused(false);
            }
            this.h = i2;
            if (i2 == 0) {
                setCloseIconFocused(true);
            }
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.i != z) {
            this.i = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconHovered(boolean z) {
        if (this.j != z) {
            this.j = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconFocused(boolean z) {
        if (this.k != z) {
            this.k = z;
            refreshDrawableState();
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        a aVar = this.c;
        int i2 = 0;
        if (aVar != null && aVar.isCloseIconStateful()) {
            a aVar2 = this.c;
            int i3 = isEnabled() ? 1 : 0;
            if (this.k) {
                i3++;
            }
            if (this.j) {
                i3++;
            }
            if (this.i) {
                i3++;
            }
            if (isChecked()) {
                i3++;
            }
            int[] iArr = new int[i3];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i2 = 1;
            }
            if (this.k) {
                iArr[i2] = 16842908;
                i2++;
            }
            if (this.j) {
                iArr[i2] = 16843623;
                i2++;
            }
            if (this.i) {
                iArr[i2] = 16842919;
                i2++;
            }
            if (isChecked()) {
                iArr[i2] = 16842913;
            }
            i2 = aVar2.setCloseIconState(iArr);
        }
        if (i2 != 0) {
            invalidate();
        }
    }

    /* access modifiers changed from: private */
    public boolean d() {
        a aVar = this.c;
        return (aVar == null || aVar.getCloseIcon() == null) ? false : true;
    }

    /* access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        this.n.setEmpty();
        if (d()) {
            this.c.getCloseIconTouchBounds(this.n);
        }
        return this.n;
    }

    /* access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        this.m.set((int) closeIconTouchBounds.left, (int) closeIconTouchBounds.top, (int) closeIconTouchBounds.right, (int) closeIconTouchBounds.bottom);
        return this.m;
    }

    public PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i2) {
        if (!getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) || !isEnabled()) {
            return null;
        }
        return PointerIcon.getSystemIcon(getContext(), 1002);
    }

    public ColorStateList getChipBackgroundColor() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipBackgroundColor();
        }
        return null;
    }

    public void setChipBackgroundColorResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipBackgroundColorResource(i2);
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipBackgroundColor(colorStateList);
        }
    }

    public float getChipMinHeight() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipMinHeight();
        }
        return 0.0f;
    }

    public void setChipMinHeightResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipMinHeightResource(i2);
        }
    }

    public void setChipMinHeight(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipMinHeight(f2);
        }
    }

    public float getChipCornerRadius() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipCornerRadius();
        }
        return 0.0f;
    }

    public void setChipCornerRadiusResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipCornerRadiusResource(i2);
        }
    }

    public void setChipCornerRadius(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipCornerRadius(f2);
        }
    }

    public ColorStateList getChipStrokeColor() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipStrokeColor();
        }
        return null;
    }

    public void setChipStrokeColorResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipStrokeColorResource(i2);
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipStrokeColor(colorStateList);
        }
    }

    public float getChipStrokeWidth() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipStrokeWidth();
        }
        return 0.0f;
    }

    public void setChipStrokeWidthResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipStrokeWidthResource(i2);
        }
    }

    public void setChipStrokeWidth(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipStrokeWidth(f2);
        }
    }

    public ColorStateList getRippleColor() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getRippleColor();
        }
        return null;
    }

    public void setRippleColorResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setRippleColorResource(i2);
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setRippleColor(colorStateList);
        }
    }

    public CharSequence getText() {
        a aVar = this.c;
        return aVar != null ? aVar.getText() : "";
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        if (this.c != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            CharSequence unicodeWrap = BidiFormatter.getInstance().unicodeWrap(charSequence);
            if (this.c.f3868a) {
                unicodeWrap = null;
            }
            super.setText(unicodeWrap, bufferType);
            a aVar = this.c;
            if (aVar != null) {
                aVar.setText(charSequence);
            }
        }
    }

    @Deprecated
    public void setChipTextResource(int i2) {
        setText(getResources().getString(i2));
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    private b getTextAppearance() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getTextAppearance();
        }
        return null;
    }

    private void a(b bVar) {
        TextPaint paint = getPaint();
        paint.drawableState = this.c.getState();
        bVar.updateDrawState(getContext(), paint, this.o);
    }

    public void setTextAppearanceResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextAppearanceResource(i2);
        }
        setTextAppearance(getContext(), i2);
    }

    public void setTextAppearance(b bVar) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextAppearance(bVar);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(getContext(), getPaint(), this.o);
            a(bVar);
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextAppearanceResource(i2);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(context, getPaint(), this.o);
            a(getTextAppearance());
        }
    }

    public void setTextAppearance(int i2) {
        super.setTextAppearance(i2);
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextAppearanceResource(i2);
        }
        if (getTextAppearance() != null) {
            getTextAppearance().updateMeasureState(getContext(), getPaint(), this.o);
            a(getTextAppearance());
        }
    }

    public boolean isChipIconVisible() {
        a aVar = this.c;
        return aVar != null && aVar.isChipIconVisible();
    }

    @Deprecated
    public boolean isChipIconEnabled() {
        return isChipIconVisible();
    }

    public void setChipIconVisible(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconVisible(i2);
        }
    }

    public void setChipIconVisible(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconVisible(z);
        }
    }

    @Deprecated
    public void setChipIconEnabledResource(int i2) {
        setChipIconVisible(i2);
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    public Drawable getChipIcon() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipIcon();
        }
        return null;
    }

    public void setChipIconResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconResource(i2);
        }
    }

    public void setChipIcon(Drawable drawable) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIcon(drawable);
        }
    }

    public ColorStateList getChipIconTint() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipIconTint();
        }
        return null;
    }

    public void setChipIconTintResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconTintResource(i2);
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconTint(colorStateList);
        }
    }

    public float getChipIconSize() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipIconSize();
        }
        return 0.0f;
    }

    public void setChipIconSizeResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconSizeResource(i2);
        }
    }

    public void setChipIconSize(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipIconSize(f2);
        }
    }

    public boolean isCloseIconVisible() {
        a aVar = this.c;
        return aVar != null && aVar.isCloseIconVisible();
    }

    @Deprecated
    public boolean isCloseIconEnabled() {
        return isCloseIconVisible();
    }

    public void setCloseIconVisible(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconVisible(i2);
        }
    }

    public void setCloseIconVisible(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconVisible(z);
        }
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i2) {
        setCloseIconVisible(i2);
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    public Drawable getCloseIcon() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCloseIcon();
        }
        return null;
    }

    public void setCloseIconResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconResource(i2);
        }
    }

    public void setCloseIcon(Drawable drawable) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIcon(drawable);
        }
    }

    public ColorStateList getCloseIconTint() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCloseIconTint();
        }
        return null;
    }

    public void setCloseIconTintResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconTintResource(i2);
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconTint(colorStateList);
        }
    }

    public float getCloseIconSize() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCloseIconSize();
        }
        return 0.0f;
    }

    public void setCloseIconSizeResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconSizeResource(i2);
        }
    }

    public void setCloseIconSize(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconSize(f2);
        }
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconContentDescription(charSequence);
        }
    }

    public CharSequence getCloseIconContentDescription() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCloseIconContentDescription();
        }
        return null;
    }

    public boolean isCheckable() {
        a aVar = this.c;
        return aVar != null && aVar.isCheckable();
    }

    public void setCheckableResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCheckableResource(i2);
        }
    }

    public void setCheckable(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCheckable(z);
        }
    }

    public boolean isCheckedIconVisible() {
        a aVar = this.c;
        return aVar != null && aVar.isCheckedIconVisible();
    }

    @Deprecated
    public boolean isCheckedIconEnabled() {
        return isCheckedIconVisible();
    }

    public void setCheckedIconVisible(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCheckedIconVisible(i2);
        }
    }

    public void setCheckedIconVisible(boolean z) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCheckedIconVisible(z);
        }
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i2) {
        setCheckedIconVisible(i2);
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    public Drawable getCheckedIcon() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCheckedIcon();
        }
        return null;
    }

    public void setCheckedIconResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCheckedIconResource(i2);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCheckedIcon(drawable);
        }
    }

    public h getShowMotionSpec() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getShowMotionSpec();
        }
        return null;
    }

    public void setShowMotionSpecResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setShowMotionSpecResource(i2);
        }
    }

    public void setShowMotionSpec(h hVar) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setShowMotionSpec(hVar);
        }
    }

    public h getHideMotionSpec() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getHideMotionSpec();
        }
        return null;
    }

    public void setHideMotionSpecResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setHideMotionSpecResource(i2);
        }
    }

    public void setHideMotionSpec(h hVar) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setHideMotionSpec(hVar);
        }
    }

    public float getChipStartPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipStartPadding();
        }
        return 0.0f;
    }

    public void setChipStartPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipStartPaddingResource(i2);
        }
    }

    public void setChipStartPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipStartPadding(f2);
        }
    }

    public float getIconStartPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getIconStartPadding();
        }
        return 0.0f;
    }

    public void setIconStartPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setIconStartPaddingResource(i2);
        }
    }

    public void setIconStartPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setIconStartPadding(f2);
        }
    }

    public float getIconEndPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getIconEndPadding();
        }
        return 0.0f;
    }

    public void setIconEndPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setIconEndPaddingResource(i2);
        }
    }

    public void setIconEndPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setIconEndPadding(f2);
        }
    }

    public float getTextStartPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getTextStartPadding();
        }
        return 0.0f;
    }

    public void setTextStartPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextStartPaddingResource(i2);
        }
    }

    public void setTextStartPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextStartPadding(f2);
        }
    }

    public float getTextEndPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getTextEndPadding();
        }
        return 0.0f;
    }

    public void setTextEndPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextEndPaddingResource(i2);
        }
    }

    public void setTextEndPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setTextEndPadding(f2);
        }
    }

    public float getCloseIconStartPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCloseIconStartPadding();
        }
        return 0.0f;
    }

    public void setCloseIconStartPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconStartPaddingResource(i2);
        }
    }

    public void setCloseIconStartPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconStartPadding(f2);
        }
    }

    public float getCloseIconEndPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getCloseIconEndPadding();
        }
        return 0.0f;
    }

    public void setCloseIconEndPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconEndPaddingResource(i2);
        }
    }

    public void setCloseIconEndPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setCloseIconEndPadding(f2);
        }
    }

    public float getChipEndPadding() {
        a aVar = this.c;
        if (aVar != null) {
            return aVar.getChipEndPadding();
        }
        return 0.0f;
    }

    public void setChipEndPaddingResource(int i2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipEndPaddingResource(i2);
        }
    }

    public void setChipEndPadding(float f2) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.setChipEndPadding(f2);
        }
    }
}
