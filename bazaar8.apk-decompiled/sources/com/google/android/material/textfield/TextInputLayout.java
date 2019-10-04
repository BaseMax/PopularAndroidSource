package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.customview.view.AbsSavedState;
import b.b.g.C0222m;
import b.b.g.H;
import b.b.g.pa;
import b.i.k.C0258a;
import b.i.k.a.d;
import b.i.k.z;
import b.i.l.j;
import c.e.a.c.b;
import c.e.a.c.h;
import c.e.a.c.i;
import c.e.a.c.k;
import c.e.a.c.l.e;
import c.e.a.c.l.f;
import c.e.a.c.l.g;
import c.e.a.c.l.p;
import c.e.a.c.l.q;
import c.e.a.c.v.c;
import com.google.android.material.internal.CheckableImageButton;

public class TextInputLayout extends LinearLayout {
    public int A;
    public Drawable B;
    public final Rect C;
    public final RectF D;
    public Typeface E;
    public boolean F;
    public Drawable G;
    public CharSequence H;
    public CheckableImageButton I;
    public boolean J;
    public Drawable K;
    public Drawable L;
    public ColorStateList M;
    public boolean N;
    public PorterDuff.Mode O;
    public boolean P;
    public ColorStateList Q;
    public ColorStateList R;
    public final int S;
    public final int T;
    public int U;
    public final int V;
    public boolean W;

    /* renamed from: a  reason: collision with root package name */
    public final FrameLayout f13454a;
    public final e aa;

    /* renamed from: b  reason: collision with root package name */
    public EditText f13455b;
    public boolean ba;

    /* renamed from: c  reason: collision with root package name */
    public CharSequence f13456c;
    public ValueAnimator ca;

    /* renamed from: d  reason: collision with root package name */
    public final c f13457d;
    public boolean da;

    /* renamed from: e  reason: collision with root package name */
    public boolean f13458e;
    public boolean ea;

    /* renamed from: f  reason: collision with root package name */
    public int f13459f;
    public boolean fa;

    /* renamed from: g  reason: collision with root package name */
    public boolean f13460g;

    /* renamed from: h  reason: collision with root package name */
    public TextView f13461h;

    /* renamed from: i  reason: collision with root package name */
    public final int f13462i;

    /* renamed from: j  reason: collision with root package name */
    public final int f13463j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f13464k;

    /* renamed from: l  reason: collision with root package name */
    public CharSequence f13465l;
    public boolean m;
    public GradientDrawable n;
    public final int o;
    public final int p;
    public int q;
    public final int r;
    public float s;
    public float t;
    public float u;
    public float v;
    public int w;
    public final int x;
    public final int y;
    public int z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new h();

        /* renamed from: c  reason: collision with root package name */
        public CharSequence f13466c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13467d;

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + this.f13466c + "}";
        }

        public void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            TextUtils.writeToParcel(this.f13466c, parcel, i2);
            parcel.writeInt(this.f13467d ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f13466c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f13467d = parcel.readInt() != 1 ? false : true;
        }
    }

    public static class a extends C0258a {

        /* renamed from: d  reason: collision with root package name */
        public final TextInputLayout f13468d;

        public a(TextInputLayout textInputLayout) {
            this.f13468d = textInputLayout;
        }

        public void a(View view, d dVar) {
            super.a(view, dVar);
            EditText editText = this.f13468d.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f13468d.getHint();
            CharSequence error = this.f13468d.getError();
            CharSequence counterOverflowDescription = this.f13468d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !TextUtils.isEmpty(error);
            boolean z4 = false;
            boolean z5 = z3 || !TextUtils.isEmpty(counterOverflowDescription);
            if (z) {
                dVar.g((CharSequence) text);
            } else if (z2) {
                dVar.g(hint);
            }
            if (z2) {
                dVar.d(hint);
                if (!z && z2) {
                    z4 = true;
                }
                dVar.l(z4);
            }
            if (z5) {
                if (!z3) {
                    error = counterOverflowDescription;
                }
                dVar.c(error);
                dVar.d(true);
            }
        }

        public void c(View view, AccessibilityEvent accessibilityEvent) {
            super.c(view, accessibilityEvent);
            EditText editText = this.f13468d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            if (TextUtils.isEmpty(text)) {
                text = this.f13468d.getHint();
            }
            if (!TextUtils.isEmpty(text)) {
                accessibilityEvent.getText().add(text);
            }
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    private Drawable getBoxBackground() {
        int i2 = this.q;
        if (i2 == 1 || i2 == 2) {
            return this.n;
        }
        throw new IllegalStateException();
    }

    private float[] getCornerRadiiAsArray() {
        if (!q.a(this)) {
            float f2 = this.s;
            float f3 = this.t;
            float f4 = this.u;
            float f5 = this.v;
            return new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
        }
        float f6 = this.t;
        float f7 = this.s;
        float f8 = this.v;
        float f9 = this.u;
        return new float[]{f6, f6, f7, f7, f8, f8, f9, f9};
    }

    private void setEditText(EditText editText) {
        if (this.f13455b == null) {
            if (!(editText instanceof c.e.a.c.v.d)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.f13455b = editText;
            m();
            setTextInputAccessibilityDelegate(new a(this));
            if (!j()) {
                this.aa.c(this.f13455b.getTypeface());
            }
            this.aa.d(this.f13455b.getTextSize());
            int gravity = this.f13455b.getGravity();
            this.aa.c((gravity & -113) | 48);
            this.aa.e(gravity);
            this.f13455b.addTextChangedListener(new e(this));
            if (this.Q == null) {
                this.Q = this.f13455b.getHintTextColors();
            }
            if (this.f13464k) {
                if (TextUtils.isEmpty(this.f13465l)) {
                    this.f13456c = this.f13455b.getHint();
                    setHint(this.f13456c);
                    this.f13455b.setHint(null);
                }
                this.m = true;
            }
            if (this.f13461h != null) {
                a(this.f13455b.getText().length());
            }
            this.f13457d.a();
            t();
            a(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.f13465l)) {
            this.f13465l = charSequence;
            this.aa.b(charSequence);
            if (!this.W) {
                n();
            }
        }
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & -113) | 16;
            this.f13454a.addView(view, layoutParams2);
            this.f13454a.setLayoutParams(layoutParams);
            s();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    public final void b() {
        if (this.G == null) {
            return;
        }
        if (this.N || this.P) {
            this.G = b.i.c.a.a.i(this.G).mutate();
            if (this.N) {
                b.i.c.a.a.a(this.G, this.M);
            }
            if (this.P) {
                b.i.c.a.a.a(this.G, this.O);
            }
            CheckableImageButton checkableImageButton = this.I;
            if (checkableImageButton != null) {
                Drawable drawable = checkableImageButton.getDrawable();
                Drawable drawable2 = this.G;
                if (drawable != drawable2) {
                    this.I.setImageDrawable(drawable2);
                }
            }
        }
    }

    public final void c() {
        int i2 = this.q;
        if (i2 == 0) {
            this.n = null;
        } else if (i2 == 2 && this.f13464k && !(this.n instanceof c.e.a.c.v.a)) {
            this.n = new c.e.a.c.v.a();
        } else if (!(this.n instanceof GradientDrawable)) {
            this.n = new GradientDrawable();
        }
    }

    public void d(boolean z2) {
        a(z2, false);
    }

    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        if (this.f13456c != null) {
            EditText editText = this.f13455b;
            if (editText != null) {
                boolean z2 = this.m;
                this.m = false;
                CharSequence hint = editText.getHint();
                this.f13455b.setHint(this.f13456c);
                try {
                    super.dispatchProvideAutofillStructure(viewStructure, i2);
                    return;
                } finally {
                    this.f13455b.setHint(hint);
                    this.m = z2;
                }
            }
        }
        super.dispatchProvideAutofillStructure(viewStructure, i2);
    }

    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.fa = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.fa = false;
    }

    public void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.n;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.f13464k) {
            this.aa.a(canvas);
        }
    }

    public void drawableStateChanged() {
        if (!this.ea) {
            boolean z2 = true;
            this.ea = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            if (!z.B(this) || !isEnabled()) {
                z2 = false;
            }
            d(z2);
            q();
            u();
            v();
            e eVar = this.aa;
            if (eVar != null ? eVar.a(drawableState) | false : false) {
                invalidate();
            }
            this.ea = false;
        }
    }

    public final int e() {
        int i2 = this.q;
        if (i2 == 1) {
            return getBoxBackground().getBounds().top + this.r;
        }
        if (i2 != 2) {
            return getPaddingTop();
        }
        return getBoxBackground().getBounds().top - f();
    }

    public final int f() {
        float h2;
        if (!this.f13464k) {
            return 0;
        }
        int i2 = this.q;
        if (i2 == 0 || i2 == 1) {
            h2 = this.aa.h();
        } else if (i2 != 2) {
            return 0;
        } else {
            h2 = this.aa.h() / 2.0f;
        }
        return (int) h2;
    }

    public final void g() {
        if (h()) {
            ((c.e.a.c.v.a) this.n).b();
        }
    }

    public int getBoxBackgroundColor() {
        return this.A;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.u;
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.v;
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.t;
    }

    public float getBoxCornerRadiusTopStart() {
        return this.s;
    }

    public int getBoxStrokeColor() {
        return this.U;
    }

    public int getCounterMaxLength() {
        return this.f13459f;
    }

    public CharSequence getCounterOverflowDescription() {
        if (this.f13458e && this.f13460g) {
            TextView textView = this.f13461h;
            if (textView != null) {
                return textView.getContentDescription();
            }
        }
        return null;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.Q;
    }

    public EditText getEditText() {
        return this.f13455b;
    }

    public CharSequence getError() {
        if (this.f13457d.l()) {
            return this.f13457d.e();
        }
        return null;
    }

    public int getErrorCurrentTextColors() {
        return this.f13457d.f();
    }

    public final int getErrorTextCurrentColor() {
        return this.f13457d.f();
    }

    public CharSequence getHelperText() {
        if (this.f13457d.m()) {
            return this.f13457d.h();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f13457d.i();
    }

    public CharSequence getHint() {
        if (this.f13464k) {
            return this.f13465l;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.aa.h();
    }

    public final int getHintCurrentCollapsedTextColor() {
        return this.aa.j();
    }

    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.H;
    }

    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.G;
    }

    public Typeface getTypeface() {
        return this.E;
    }

    public final boolean h() {
        return this.f13464k && !TextUtils.isEmpty(this.f13465l) && (this.n instanceof c.e.a.c.v.a);
    }

    public final void i() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 21 || i2 == 22) {
            Drawable background = this.f13455b.getBackground();
            if (background != null && !this.da) {
                Drawable newDrawable = background.getConstantState().newDrawable();
                if (background instanceof DrawableContainer) {
                    this.da = g.a((DrawableContainer) background, newDrawable.getConstantState());
                }
                if (!this.da) {
                    z.a((View) this.f13455b, newDrawable);
                    this.da = true;
                    m();
                }
            }
        }
    }

    public final boolean j() {
        EditText editText = this.f13455b;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    public boolean k() {
        return this.f13457d.m();
    }

    public boolean l() {
        return this.m;
    }

    public final void m() {
        c();
        if (this.q != 0) {
            s();
        }
        u();
    }

    public final void n() {
        if (h()) {
            RectF rectF = this.D;
            this.aa.a(rectF);
            a(rectF);
            ((c.e.a.c.v.a) this.n).a(rectF);
        }
    }

    public final void o() {
        int i2 = this.q;
        if (i2 == 1) {
            this.w = 0;
        } else if (i2 == 2 && this.U == 0) {
            this.U = this.R.getColorForState(getDrawableState(), this.R.getDefaultColor());
        }
    }

    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.n != null) {
            u();
        }
        if (this.f13464k) {
            EditText editText = this.f13455b;
            if (editText != null) {
                Rect rect = this.C;
                f.a((ViewGroup) this, (View) editText, rect);
                int compoundPaddingLeft = rect.left + this.f13455b.getCompoundPaddingLeft();
                int compoundPaddingRight = rect.right - this.f13455b.getCompoundPaddingRight();
                int e2 = e();
                this.aa.b(compoundPaddingLeft, rect.top + this.f13455b.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f13455b.getCompoundPaddingBottom());
                this.aa.a(compoundPaddingLeft, e2, compoundPaddingRight, (i5 - i3) - getPaddingBottom());
                this.aa.r();
                if (h() && !this.W) {
                    n();
                }
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        t();
        super.onMeasure(i2, i3);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        setError(savedState.f13466c);
        if (savedState.f13467d) {
            c(true);
        }
        requestLayout();
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.f13457d.d()) {
            savedState.f13466c = getError();
        }
        savedState.f13467d = this.J;
        return savedState;
    }

    public final boolean p() {
        return this.F && (j() || this.J);
    }

    public void q() {
        EditText editText = this.f13455b;
        if (editText != null) {
            Drawable background = editText.getBackground();
            if (background != null) {
                i();
                if (H.a(background)) {
                    background = background.mutate();
                }
                if (this.f13457d.d()) {
                    background.setColorFilter(C0222m.a(this.f13457d.f(), PorterDuff.Mode.SRC_IN));
                } else {
                    if (this.f13460g) {
                        TextView textView = this.f13461h;
                        if (textView != null) {
                            background.setColorFilter(C0222m.a(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
                        }
                    }
                    b.i.c.a.a.b(background);
                    this.f13455b.refreshDrawableState();
                }
            }
        }
    }

    public final void r() {
        EditText editText = this.f13455b;
        if (editText != null) {
            Drawable background = editText.getBackground();
            if (background != null) {
                if (H.a(background)) {
                    background = background.mutate();
                }
                f.a((ViewGroup) this, (View) this.f13455b, new Rect());
                Rect bounds = background.getBounds();
                if (bounds.left != bounds.right) {
                    Rect rect = new Rect();
                    background.getPadding(rect);
                    background.setBounds(bounds.left - rect.left, bounds.top, bounds.right + (rect.right * 2), this.f13455b.getBottom());
                }
            }
        }
    }

    public final void s() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f13454a.getLayoutParams();
        int f2 = f();
        if (f2 != layoutParams.topMargin) {
            layoutParams.topMargin = f2;
            this.f13454a.requestLayout();
        }
    }

    public void setBoxBackgroundColor(int i2) {
        if (this.A != i2) {
            this.A = i2;
            a();
        }
    }

    public void setBoxBackgroundColorResource(int i2) {
        setBoxBackgroundColor(b.i.b.a.a(getContext(), i2));
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 != this.q) {
            this.q = i2;
            m();
        }
    }

    public void setBoxStrokeColor(int i2) {
        if (this.U != i2) {
            this.U = i2;
            v();
        }
    }

    public void setCounterEnabled(boolean z2) {
        if (this.f13458e != z2) {
            if (z2) {
                this.f13461h = new AppCompatTextView(getContext());
                this.f13461h.setId(c.e.a.c.f.textinput_counter);
                Typeface typeface = this.E;
                if (typeface != null) {
                    this.f13461h.setTypeface(typeface);
                }
                this.f13461h.setMaxLines(1);
                a(this.f13461h, this.f13463j);
                this.f13457d.a(this.f13461h, 2);
                EditText editText = this.f13455b;
                if (editText == null) {
                    a(0);
                } else {
                    a(editText.getText().length());
                }
            } else {
                this.f13457d.b(this.f13461h, 2);
                this.f13461h = null;
            }
            this.f13458e = z2;
        }
    }

    public void setCounterMaxLength(int i2) {
        if (this.f13459f != i2) {
            if (i2 > 0) {
                this.f13459f = i2;
            } else {
                this.f13459f = -1;
            }
            if (this.f13458e) {
                EditText editText = this.f13455b;
                a(editText == null ? 0 : editText.getText().length());
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.Q = colorStateList;
        this.R = colorStateList;
        if (this.f13455b != null) {
            d(false);
        }
    }

    public void setEnabled(boolean z2) {
        a((ViewGroup) this, z2);
        super.setEnabled(z2);
    }

    public void setError(CharSequence charSequence) {
        if (!this.f13457d.l()) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.f13457d.a(charSequence);
        } else {
            this.f13457d.j();
        }
    }

    public void setErrorEnabled(boolean z2) {
        this.f13457d.a(z2);
    }

    public void setErrorTextAppearance(int i2) {
        this.f13457d.d(i2);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f13457d.a(colorStateList);
    }

    public void setHelperText(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (!k()) {
                setHelperTextEnabled(true);
            }
            this.f13457d.b(charSequence);
        } else if (k()) {
            setHelperTextEnabled(false);
        }
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f13457d.b(colorStateList);
    }

    public void setHelperTextEnabled(boolean z2) {
        this.f13457d.b(z2);
    }

    public void setHelperTextTextAppearance(int i2) {
        this.f13457d.e(i2);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f13464k) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z2) {
        this.ba = z2;
    }

    public void setHintEnabled(boolean z2) {
        if (z2 != this.f13464k) {
            this.f13464k = z2;
            if (!this.f13464k) {
                this.m = false;
                if (!TextUtils.isEmpty(this.f13465l) && TextUtils.isEmpty(this.f13455b.getHint())) {
                    this.f13455b.setHint(this.f13465l);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f13455b.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f13465l)) {
                        setHint(hint);
                    }
                    this.f13455b.setHint(null);
                }
                this.m = true;
            }
            if (this.f13455b != null) {
                s();
            }
        }
    }

    public void setHintTextAppearance(int i2) {
        this.aa.b(i2);
        this.R = this.aa.f();
        if (this.f13455b != null) {
            d(false);
            s();
        }
    }

    public void setPasswordVisibilityToggleContentDescription(int i2) {
        setPasswordVisibilityToggleContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setPasswordVisibilityToggleDrawable(int i2) {
        setPasswordVisibilityToggleDrawable(i2 != 0 ? b.b.b.a.a.c(getContext(), i2) : null);
    }

    public void setPasswordVisibilityToggleEnabled(boolean z2) {
        if (this.F != z2) {
            this.F = z2;
            if (!z2 && this.J) {
                EditText editText = this.f13455b;
                if (editText != null) {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
            }
            this.J = false;
            t();
        }
    }

    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.M = colorStateList;
        this.N = true;
        b();
    }

    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.O = mode;
        this.P = true;
        b();
    }

    public void setTextInputAccessibilityDelegate(a aVar) {
        EditText editText = this.f13455b;
        if (editText != null) {
            z.a((View) editText, (C0258a) aVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.E) {
            this.E = typeface;
            this.aa.c(typeface);
            this.f13457d.a(typeface);
            TextView textView = this.f13461h;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.f13455b != null) {
            if (p()) {
                if (this.I == null) {
                    this.I = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(h.design_text_input_password_icon, this.f13454a, false);
                    this.I.setImageDrawable(this.G);
                    this.I.setContentDescription(this.H);
                    this.f13454a.addView(this.I);
                    this.I.setOnClickListener(new f(this));
                }
                EditText editText = this.f13455b;
                if (editText != null && z.n(editText) <= 0) {
                    this.f13455b.setMinimumHeight(z.n(this.I));
                }
                this.I.setVisibility(0);
                this.I.setChecked(this.J);
                if (this.K == null) {
                    this.K = new ColorDrawable();
                }
                this.K.setBounds(0, 0, this.I.getMeasuredWidth(), 1);
                Drawable[] d2 = j.d(this.f13455b);
                if (d2[2] != this.K) {
                    this.L = d2[2];
                }
                j.a((TextView) this.f13455b, d2[0], d2[1], this.K, d2[3]);
                this.I.setPadding(this.f13455b.getPaddingLeft(), this.f13455b.getPaddingTop(), this.f13455b.getPaddingRight(), this.f13455b.getPaddingBottom());
            } else {
                CheckableImageButton checkableImageButton = this.I;
                if (checkableImageButton != null && checkableImageButton.getVisibility() == 0) {
                    this.I.setVisibility(8);
                }
                if (this.K != null) {
                    Drawable[] d3 = j.d(this.f13455b);
                    if (d3[2] == this.K) {
                        j.a((TextView) this.f13455b, d3[0], d3[1], this.L, d3[3]);
                        this.K = null;
                    }
                }
            }
        }
    }

    public final void u() {
        if (this.q != 0 && this.n != null && this.f13455b != null && getRight() != 0) {
            int left = this.f13455b.getLeft();
            int d2 = d();
            int right = this.f13455b.getRight();
            int bottom = this.f13455b.getBottom() + this.o;
            if (this.q == 2) {
                int i2 = this.y;
                left += i2 / 2;
                d2 -= i2 / 2;
                right -= i2 / 2;
                bottom += i2 / 2;
            }
            this.n.setBounds(left, d2, right, bottom);
            a();
            r();
        }
    }

    public void v() {
        if (this.n != null && this.q != 0) {
            EditText editText = this.f13455b;
            boolean z2 = true;
            boolean z3 = editText != null && editText.hasFocus();
            EditText editText2 = this.f13455b;
            if (editText2 == null || !editText2.isHovered()) {
                z2 = false;
            }
            if (this.q == 2) {
                if (!isEnabled()) {
                    this.z = this.V;
                } else if (this.f13457d.d()) {
                    this.z = this.f13457d.f();
                } else {
                    if (this.f13460g) {
                        TextView textView = this.f13461h;
                        if (textView != null) {
                            this.z = textView.getCurrentTextColor();
                        }
                    }
                    if (z3) {
                        this.z = this.U;
                    } else if (z2) {
                        this.z = this.T;
                    } else {
                        this.z = this.S;
                    }
                }
                if ((z2 || z3) && isEnabled()) {
                    this.w = this.y;
                } else {
                    this.w = this.x;
                }
                a();
            }
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.textInputStyle);
    }

    public final void a(boolean z2, boolean z3) {
        boolean isEnabled = isEnabled();
        EditText editText = this.f13455b;
        boolean z4 = true;
        boolean z5 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f13455b;
        if (editText2 == null || !editText2.hasFocus()) {
            z4 = false;
        }
        boolean d2 = this.f13457d.d();
        ColorStateList colorStateList = this.Q;
        if (colorStateList != null) {
            this.aa.a(colorStateList);
            this.aa.b(this.Q);
        }
        if (!isEnabled) {
            this.aa.a(ColorStateList.valueOf(this.V));
            this.aa.b(ColorStateList.valueOf(this.V));
        } else if (d2) {
            this.aa.a(this.f13457d.g());
        } else {
            if (this.f13460g) {
                TextView textView = this.f13461h;
                if (textView != null) {
                    this.aa.a(textView.getTextColors());
                }
            }
            if (z4) {
                ColorStateList colorStateList2 = this.R;
                if (colorStateList2 != null) {
                    this.aa.a(colorStateList2);
                }
            }
        }
        if (z5 || (isEnabled() && (z4 || d2))) {
            if (z3 || this.W) {
                a(z2);
            }
        } else if (z3 || !this.W) {
            b(z2);
        }
    }

    public final int d() {
        EditText editText = this.f13455b;
        if (editText == null) {
            return 0;
        }
        int i2 = this.q;
        if (i2 == 1) {
            return editText.getTop();
        }
        if (i2 != 2) {
            return 0;
        }
        return editText.getTop() + f();
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f13457d = new c(this);
        this.C = new Rect();
        this.D = new RectF();
        this.aa = new e(this);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.f13454a = new FrameLayout(context);
        this.f13454a.setAddStatesFromChildren(true);
        addView(this.f13454a);
        this.aa.b(c.e.a.c.a.a.f11184a);
        this.aa.a(c.e.a.c.a.a.f11184a);
        this.aa.c(8388659);
        pa d2 = p.d(context, attributeSet, k.TextInputLayout, i2, c.e.a.c.j.Widget_Design_TextInputLayout, new int[0]);
        this.f13464k = d2.a(k.TextInputLayout_hintEnabled, true);
        setHint(d2.e(k.TextInputLayout_android_hint));
        this.ba = d2.a(k.TextInputLayout_hintAnimationEnabled, true);
        this.o = context.getResources().getDimensionPixelOffset(c.e.a.c.d.mtrl_textinput_box_bottom_offset);
        this.p = context.getResources().getDimensionPixelOffset(c.e.a.c.d.mtrl_textinput_box_label_cutout_padding);
        this.r = d2.b(k.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.s = d2.a(k.TextInputLayout_boxCornerRadiusTopStart, 0.0f);
        this.t = d2.a(k.TextInputLayout_boxCornerRadiusTopEnd, 0.0f);
        this.u = d2.a(k.TextInputLayout_boxCornerRadiusBottomEnd, 0.0f);
        this.v = d2.a(k.TextInputLayout_boxCornerRadiusBottomStart, 0.0f);
        this.A = d2.a(k.TextInputLayout_boxBackgroundColor, 0);
        this.U = d2.a(k.TextInputLayout_boxStrokeColor, 0);
        this.x = context.getResources().getDimensionPixelSize(c.e.a.c.d.mtrl_textinput_box_stroke_width_default);
        this.y = context.getResources().getDimensionPixelSize(c.e.a.c.d.mtrl_textinput_box_stroke_width_focused);
        this.w = this.x;
        setBoxBackgroundMode(d2.d(k.TextInputLayout_boxBackgroundMode, 0));
        if (d2.g(k.TextInputLayout_android_textColorHint)) {
            ColorStateList a2 = d2.a(k.TextInputLayout_android_textColorHint);
            this.R = a2;
            this.Q = a2;
        }
        this.S = b.i.b.a.a(context, c.e.a.c.c.mtrl_textinput_default_box_stroke_color);
        this.V = b.i.b.a.a(context, c.e.a.c.c.mtrl_textinput_disabled_color);
        this.T = b.i.b.a.a(context, c.e.a.c.c.mtrl_textinput_hovered_box_stroke_color);
        if (d2.g(k.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(d2.g(k.TextInputLayout_hintTextAppearance, 0));
        }
        int g2 = d2.g(k.TextInputLayout_errorTextAppearance, 0);
        boolean a3 = d2.a(k.TextInputLayout_errorEnabled, false);
        int g3 = d2.g(k.TextInputLayout_helperTextTextAppearance, 0);
        boolean a4 = d2.a(k.TextInputLayout_helperTextEnabled, false);
        CharSequence e2 = d2.e(k.TextInputLayout_helperText);
        boolean a5 = d2.a(k.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(d2.d(k.TextInputLayout_counterMaxLength, -1));
        this.f13463j = d2.g(k.TextInputLayout_counterTextAppearance, 0);
        this.f13462i = d2.g(k.TextInputLayout_counterOverflowTextAppearance, 0);
        this.F = d2.a(k.TextInputLayout_passwordToggleEnabled, false);
        this.G = d2.b(k.TextInputLayout_passwordToggleDrawable);
        this.H = d2.e(k.TextInputLayout_passwordToggleContentDescription);
        if (d2.g(k.TextInputLayout_passwordToggleTint)) {
            this.N = true;
            this.M = d2.a(k.TextInputLayout_passwordToggleTint);
        }
        if (d2.g(k.TextInputLayout_passwordToggleTintMode)) {
            this.P = true;
            this.O = q.a(d2.d(k.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        d2.a();
        setHelperTextEnabled(a4);
        setHelperText(e2);
        setHelperTextTextAppearance(g3);
        setErrorEnabled(a3);
        setErrorTextAppearance(g2);
        setCounterEnabled(a5);
        b();
        z.g(this, 2);
    }

    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.H = charSequence;
        CheckableImageButton checkableImageButton = this.I;
        if (checkableImageButton != null) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.G = drawable;
        CheckableImageButton checkableImageButton = this.I;
        if (checkableImageButton != null) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void c(boolean z2) {
        if (this.F) {
            int selectionEnd = this.f13455b.getSelectionEnd();
            if (j()) {
                this.f13455b.setTransformationMethod(null);
                this.J = true;
            } else {
                this.f13455b.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.J = false;
            }
            this.I.setChecked(this.J);
            if (z2) {
                this.I.jumpDrawablesToCurrentState();
            }
            this.f13455b.setSelection(selectionEnd);
        }
    }

    public final void b(boolean z2) {
        ValueAnimator valueAnimator = this.ca;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.ca.cancel();
        }
        if (!z2 || !this.ba) {
            this.aa.e(0.0f);
        } else {
            a(0.0f);
        }
        if (h() && ((c.e.a.c.v.a) this.n).a()) {
            g();
        }
        this.W = true;
    }

    public static void a(ViewGroup viewGroup, boolean z2) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z2);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z2);
            }
        }
    }

    public void a(int i2) {
        boolean z2 = this.f13460g;
        if (this.f13459f == -1) {
            this.f13461h.setText(String.valueOf(i2));
            this.f13461h.setContentDescription(null);
            this.f13460g = false;
        } else {
            if (z.c(this.f13461h) == 1) {
                z.f(this.f13461h, 0);
            }
            this.f13460g = i2 > this.f13459f;
            boolean z3 = this.f13460g;
            if (z2 != z3) {
                a(this.f13461h, z3 ? this.f13462i : this.f13463j);
                if (this.f13460g) {
                    z.f(this.f13461h, 1);
                }
            }
            this.f13461h.setText(getContext().getString(i.character_counter_pattern, new Object[]{Integer.valueOf(i2), Integer.valueOf(this.f13459f)}));
            this.f13461h.setContentDescription(getContext().getString(i.character_counter_content_description, new Object[]{Integer.valueOf(i2), Integer.valueOf(this.f13459f)}));
        }
        if (this.f13455b != null && z2 != this.f13460g) {
            d(false);
            v();
            q();
        }
    }

    public void a(TextView textView, int i2) {
        boolean z2 = true;
        try {
            j.e(textView, i2);
            if (Build.VERSION.SDK_INT < 23 || textView.getTextColors().getDefaultColor() != -65281) {
                z2 = false;
            }
        } catch (Exception unused) {
        }
        if (z2) {
            j.e(textView, c.e.a.c.j.TextAppearance_AppCompat_Caption);
            textView.setTextColor(b.i.b.a.a(getContext(), c.e.a.c.c.design_error));
        }
    }

    public final void a() {
        if (this.n != null) {
            o();
            EditText editText = this.f13455b;
            if (editText != null && this.q == 2) {
                if (editText.getBackground() != null) {
                    this.B = this.f13455b.getBackground();
                }
                z.a((View) this.f13455b, (Drawable) null);
            }
            EditText editText2 = this.f13455b;
            if (editText2 != null && this.q == 1) {
                Drawable drawable = this.B;
                if (drawable != null) {
                    z.a((View) editText2, drawable);
                }
            }
            int i2 = this.w;
            if (i2 > -1) {
                int i3 = this.z;
                if (i3 != 0) {
                    this.n.setStroke(i2, i3);
                }
            }
            this.n.setCornerRadii(getCornerRadiiAsArray());
            this.n.setColor(this.A);
            invalidate();
        }
    }

    public final void a(boolean z2) {
        ValueAnimator valueAnimator = this.ca;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.ca.cancel();
        }
        if (!z2 || !this.ba) {
            this.aa.e(1.0f);
        } else {
            a(1.0f);
        }
        this.W = false;
        if (h()) {
            n();
        }
    }

    public final void a(RectF rectF) {
        float f2 = rectF.left;
        int i2 = this.p;
        rectF.left = f2 - ((float) i2);
        rectF.top -= (float) i2;
        rectF.right += (float) i2;
        rectF.bottom += (float) i2;
    }

    public void a(float f2) {
        if (this.aa.n() != f2) {
            if (this.ca == null) {
                this.ca = new ValueAnimator();
                this.ca.setInterpolator(c.e.a.c.a.a.f11185b);
                this.ca.setDuration(167);
                this.ca.addUpdateListener(new g(this));
            }
            this.ca.setFloatValues(new float[]{this.aa.n(), f2});
            this.ca.start();
        }
    }
}
