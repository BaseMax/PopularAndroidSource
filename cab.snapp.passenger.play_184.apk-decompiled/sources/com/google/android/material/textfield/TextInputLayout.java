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
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
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
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.a;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.c;
import com.google.android.material.internal.d;
import com.google.android.material.internal.e;
import com.google.android.material.internal.k;
import com.google.android.material.internal.l;

public class TextInputLayout extends LinearLayout {
    public static final int BOX_BACKGROUND_FILLED = 1;
    public static final int BOX_BACKGROUND_NONE = 0;
    public static final int BOX_BACKGROUND_OUTLINE = 2;
    private int A;
    private int B;
    private Drawable C;
    private final Rect D;
    private final RectF E;
    private Typeface F;
    private boolean G;
    private Drawable H;
    private CharSequence I;
    private CheckableImageButton J;
    private boolean K;
    private Drawable L;
    private Drawable M;
    private ColorStateList N;
    private boolean O;
    private PorterDuff.Mode P;
    private boolean Q;
    private ColorStateList R;
    private ColorStateList S;
    private final int T;
    private final int U;
    private int V;
    private final int W;

    /* renamed from: a  reason: collision with root package name */
    EditText f4008a;
    private boolean aa;
    private boolean ab;
    private ValueAnimator ac;
    private boolean ad;
    private boolean ae;
    /* access modifiers changed from: private */
    public boolean af;

    /* renamed from: b  reason: collision with root package name */
    boolean f4009b;
    boolean c;
    final c d;
    private final FrameLayout e;
    private CharSequence f;
    private final b g;
    private int h;
    private boolean i;
    private TextView j;
    private final int k;
    private final int l;
    private boolean m;
    private CharSequence n;
    private GradientDrawable o;
    private final int p;
    private final int q;
    private int r;
    private final int s;
    private float t;
    private float u;
    private float v;
    private float w;
    private int x;
    private final int y;
    private final int z;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() {
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            public final SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };

        /* renamed from: a  reason: collision with root package name */
        CharSequence f4013a;

        /* renamed from: b  reason: collision with root package name */
        boolean f4014b;

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f4013a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f4014b = parcel.readInt() != 1 ? false : true;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f4013a, parcel, i);
            parcel.writeInt(this.f4014b ? 1 : 0);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + this.f4013a + "}";
        }
    }

    public static class a extends AccessibilityDelegateCompat {

        /* renamed from: a  reason: collision with root package name */
        private final TextInputLayout f4015a;

        public a(TextInputLayout textInputLayout) {
            this.f4015a = textInputLayout;
        }

        public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            EditText editText = this.f4015a.getEditText();
            Editable text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f4015a.getHint();
            CharSequence error = this.f4015a.getError();
            CharSequence counterOverflowDescription = this.f4015a.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !TextUtils.isEmpty(error);
            boolean z4 = false;
            boolean z5 = z3 || !TextUtils.isEmpty(counterOverflowDescription);
            if (z) {
                accessibilityNodeInfoCompat.setText(text);
            } else if (z2) {
                accessibilityNodeInfoCompat.setText(hint);
            }
            if (z2) {
                accessibilityNodeInfoCompat.setHintText(hint);
                if (!z && z2) {
                    z4 = true;
                }
                accessibilityNodeInfoCompat.setShowingHintText(z4);
            }
            if (z5) {
                if (!z3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfoCompat.setError(error);
                accessibilityNodeInfoCompat.setContentInvalid(true);
            }
        }

        public final void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
            super.onPopulateAccessibilityEvent(view, accessibilityEvent);
            EditText editText = this.f4015a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            if (TextUtils.isEmpty(text)) {
                text = this.f4015a.getHint();
            }
            if (!TextUtils.isEmpty(text)) {
                accessibilityEvent.getText().add(text);
            }
        }
    }

    public TextInputLayout(Context context) {
        this(context, null);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.textInputStyle);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = new b(this);
        this.D = new Rect();
        this.E = new RectF();
        this.d = new c(this);
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.e = new FrameLayout(context);
        this.e.setAddStatesFromChildren(true);
        addView(this.e);
        this.d.setTextSizeInterpolator(com.google.android.material.a.a.LINEAR_INTERPOLATOR);
        this.d.setPositionInterpolator(com.google.android.material.a.a.LINEAR_INTERPOLATOR);
        this.d.setCollapsedTextGravity(8388659);
        TintTypedArray obtainTintedStyledAttributes = k.obtainTintedStyledAttributes(context, attributeSet, a.k.TextInputLayout, i2, a.j.Widget_Design_TextInputLayout, new int[0]);
        this.m = obtainTintedStyledAttributes.getBoolean(a.k.TextInputLayout_hintEnabled, true);
        setHint(obtainTintedStyledAttributes.getText(a.k.TextInputLayout_android_hint));
        this.ab = obtainTintedStyledAttributes.getBoolean(a.k.TextInputLayout_hintAnimationEnabled, true);
        this.p = context.getResources().getDimensionPixelOffset(a.d.mtrl_textinput_box_bottom_offset);
        this.q = context.getResources().getDimensionPixelOffset(a.d.mtrl_textinput_box_label_cutout_padding);
        this.s = obtainTintedStyledAttributes.getDimensionPixelOffset(a.k.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.t = obtainTintedStyledAttributes.getDimension(a.k.TextInputLayout_boxCornerRadiusTopStart, 0.0f);
        this.u = obtainTintedStyledAttributes.getDimension(a.k.TextInputLayout_boxCornerRadiusTopEnd, 0.0f);
        this.v = obtainTintedStyledAttributes.getDimension(a.k.TextInputLayout_boxCornerRadiusBottomEnd, 0.0f);
        this.w = obtainTintedStyledAttributes.getDimension(a.k.TextInputLayout_boxCornerRadiusBottomStart, 0.0f);
        this.B = obtainTintedStyledAttributes.getColor(a.k.TextInputLayout_boxBackgroundColor, 0);
        this.V = obtainTintedStyledAttributes.getColor(a.k.TextInputLayout_boxStrokeColor, 0);
        this.y = context.getResources().getDimensionPixelSize(a.d.mtrl_textinput_box_stroke_width_default);
        this.z = context.getResources().getDimensionPixelSize(a.d.mtrl_textinput_box_stroke_width_focused);
        this.x = this.y;
        setBoxBackgroundMode(obtainTintedStyledAttributes.getInt(a.k.TextInputLayout_boxBackgroundMode, 0));
        if (obtainTintedStyledAttributes.hasValue(a.k.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateList = obtainTintedStyledAttributes.getColorStateList(a.k.TextInputLayout_android_textColorHint);
            this.S = colorStateList;
            this.R = colorStateList;
        }
        this.T = ContextCompat.getColor(context, a.c.mtrl_textinput_default_box_stroke_color);
        this.W = ContextCompat.getColor(context, a.c.mtrl_textinput_disabled_color);
        this.U = ContextCompat.getColor(context, a.c.mtrl_textinput_hovered_box_stroke_color);
        if (obtainTintedStyledAttributes.getResourceId(a.k.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(obtainTintedStyledAttributes.getResourceId(a.k.TextInputLayout_hintTextAppearance, 0));
        }
        int resourceId = obtainTintedStyledAttributes.getResourceId(a.k.TextInputLayout_errorTextAppearance, 0);
        boolean z2 = obtainTintedStyledAttributes.getBoolean(a.k.TextInputLayout_errorEnabled, false);
        int resourceId2 = obtainTintedStyledAttributes.getResourceId(a.k.TextInputLayout_helperTextTextAppearance, 0);
        boolean z3 = obtainTintedStyledAttributes.getBoolean(a.k.TextInputLayout_helperTextEnabled, false);
        CharSequence text = obtainTintedStyledAttributes.getText(a.k.TextInputLayout_helperText);
        boolean z4 = obtainTintedStyledAttributes.getBoolean(a.k.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(obtainTintedStyledAttributes.getInt(a.k.TextInputLayout_counterMaxLength, -1));
        this.l = obtainTintedStyledAttributes.getResourceId(a.k.TextInputLayout_counterTextAppearance, 0);
        this.k = obtainTintedStyledAttributes.getResourceId(a.k.TextInputLayout_counterOverflowTextAppearance, 0);
        this.G = obtainTintedStyledAttributes.getBoolean(a.k.TextInputLayout_passwordToggleEnabled, false);
        this.H = obtainTintedStyledAttributes.getDrawable(a.k.TextInputLayout_passwordToggleDrawable);
        this.I = obtainTintedStyledAttributes.getText(a.k.TextInputLayout_passwordToggleContentDescription);
        if (obtainTintedStyledAttributes.hasValue(a.k.TextInputLayout_passwordToggleTint)) {
            this.O = true;
            this.N = obtainTintedStyledAttributes.getColorStateList(a.k.TextInputLayout_passwordToggleTint);
        }
        if (obtainTintedStyledAttributes.hasValue(a.k.TextInputLayout_passwordToggleTintMode)) {
            this.Q = true;
            this.P = l.parseTintMode(obtainTintedStyledAttributes.getInt(a.k.TextInputLayout_passwordToggleTintMode, -1), null);
        }
        obtainTintedStyledAttributes.recycle();
        setHelperTextEnabled(z3);
        setHelperText(text);
        setHelperTextTextAppearance(resourceId2);
        setErrorEnabled(z2);
        setErrorTextAppearance(resourceId);
        setCounterEnabled(z4);
        p();
        ViewCompat.setImportantForAccessibility(this, 2);
    }

    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & -113) | 16;
            this.e.addView(view, layoutParams2);
            this.e.setLayoutParams(layoutParams);
            e();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    private Drawable getBoxBackground() {
        int i2 = this.r;
        if (i2 == 1 || i2 == 2) {
            return this.o;
        }
        throw new IllegalStateException();
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 != this.r) {
            this.r = i2;
            c();
        }
    }

    private void c() {
        d();
        if (this.r != 0) {
            e();
        }
        f();
    }

    private void d() {
        int i2 = this.r;
        if (i2 == 0) {
            this.o = null;
        } else if (i2 != 2 || !this.m || (this.o instanceof a)) {
            if (!(this.o instanceof GradientDrawable)) {
                this.o = new GradientDrawable();
            }
        } else {
            this.o = new a();
        }
    }

    public void setBoxStrokeColor(int i2) {
        if (this.V != i2) {
            this.V = i2;
            b();
        }
    }

    public int getBoxStrokeColor() {
        return this.V;
    }

    public void setBoxBackgroundColorResource(int i2) {
        setBoxBackgroundColor(ContextCompat.getColor(getContext(), i2));
    }

    public void setBoxBackgroundColor(int i2) {
        if (this.B != i2) {
            this.B = i2;
            k();
        }
    }

    public int getBoxBackgroundColor() {
        return this.B;
    }

    public void setBoxCornerRadiiResources(int i2, int i3, int i4, int i5) {
        setBoxCornerRadii(getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i3), getContext().getResources().getDimension(i4), getContext().getResources().getDimension(i5));
    }

    public void setBoxCornerRadii(float f2, float f3, float f4, float f5) {
        if (this.t != f2 || this.u != f3 || this.v != f5 || this.w != f4) {
            this.t = f2;
            this.u = f3;
            this.v = f5;
            this.w = f4;
            k();
        }
    }

    public float getBoxCornerRadiusTopStart() {
        return this.t;
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.u;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.v;
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.w;
    }

    private float[] getCornerRadiiAsArray() {
        if (!l.isLayoutRtl(this)) {
            float f2 = this.t;
            float f3 = this.u;
            float f4 = this.v;
            float f5 = this.w;
            return new float[]{f2, f2, f3, f3, f4, f4, f5, f5};
        }
        float f6 = this.u;
        float f7 = this.t;
        float f8 = this.w;
        float f9 = this.v;
        return new float[]{f6, f6, f7, f7, f8, f8, f9, f9};
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.F) {
            this.F = typeface;
            this.d.setTypefaces(typeface);
            b bVar = this.g;
            if (typeface != bVar.n) {
                bVar.n = typeface;
                b.a(bVar.h, typeface);
                b.a(bVar.l, typeface);
            }
            TextView textView = this.j;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    public Typeface getTypeface() {
        return this.F;
    }

    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i2) {
        if (this.f != null) {
            EditText editText = this.f4008a;
            if (editText != null) {
                boolean z2 = this.c;
                this.c = false;
                CharSequence hint = editText.getHint();
                this.f4008a.setHint(this.f);
                try {
                    super.dispatchProvideAutofillStructure(viewStructure, i2);
                    return;
                } finally {
                    this.f4008a.setHint(hint);
                    this.c = z2;
                }
            }
        }
        super.dispatchProvideAutofillStructure(viewStructure, i2);
    }

    private void setEditText(EditText editText) {
        if (this.f4008a == null) {
            this.f4008a = editText;
            c();
            setTextInputAccessibilityDelegate(new a(this));
            if (!n()) {
                this.d.setTypefaces(this.f4008a.getTypeface());
            }
            this.d.setExpandedTextSize(this.f4008a.getTextSize());
            int gravity = this.f4008a.getGravity();
            this.d.setCollapsedTextGravity((gravity & -113) | 48);
            this.d.setExpandedTextGravity(gravity);
            this.f4008a.addTextChangedListener(new TextWatcher() {
                public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public final void afterTextChanged(Editable editable) {
                    TextInputLayout textInputLayout = TextInputLayout.this;
                    textInputLayout.a(!textInputLayout.af, false);
                    if (TextInputLayout.this.f4009b) {
                        TextInputLayout.this.a(editable.length());
                    }
                }
            });
            if (this.R == null) {
                this.R = this.f4008a.getHintTextColors();
            }
            if (this.m) {
                if (TextUtils.isEmpty(this.n)) {
                    this.f = this.f4008a.getHint();
                    setHint(this.f);
                    this.f4008a.setHint(null);
                }
                this.c = true;
            }
            if (this.j != null) {
                a(this.f4008a.getText().length());
            }
            this.g.c();
            m();
            a(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void e() {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.e.getLayoutParams();
        int h2 = h();
        if (h2 != layoutParams.topMargin) {
            layoutParams.topMargin = h2;
            this.e.requestLayout();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(boolean z2, boolean z3) {
        boolean isEnabled = isEnabled();
        EditText editText = this.f4008a;
        boolean z4 = true;
        boolean z5 = editText != null && !TextUtils.isEmpty(editText.getText());
        EditText editText2 = this.f4008a;
        if (editText2 == null || !editText2.hasFocus()) {
            z4 = false;
        }
        boolean d2 = this.g.d();
        ColorStateList colorStateList = this.R;
        if (colorStateList != null) {
            this.d.setCollapsedTextColor(colorStateList);
            this.d.setExpandedTextColor(this.R);
        }
        if (!isEnabled) {
            this.d.setCollapsedTextColor(ColorStateList.valueOf(this.W));
            this.d.setExpandedTextColor(ColorStateList.valueOf(this.W));
        } else if (d2) {
            this.d.setCollapsedTextColor(this.g.f());
        } else {
            if (this.i) {
                TextView textView = this.j;
                if (textView != null) {
                    this.d.setCollapsedTextColor(textView.getTextColors());
                }
            }
            if (z4) {
                ColorStateList colorStateList2 = this.S;
                if (colorStateList2 != null) {
                    this.d.setCollapsedTextColor(colorStateList2);
                }
            }
        }
        if (z5 || (isEnabled() && (z4 || d2))) {
            if (z3 || this.aa) {
                a(z2);
            }
        } else if (z3 || !this.aa) {
            b(z2);
        }
    }

    public EditText getEditText() {
        return this.f4008a;
    }

    public void setHint(CharSequence charSequence) {
        if (this.m) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.n)) {
            this.n = charSequence;
            this.d.setText(charSequence);
            if (!this.aa) {
                r();
            }
        }
    }

    public CharSequence getHint() {
        if (this.m) {
            return this.n;
        }
        return null;
    }

    public void setHintEnabled(boolean z2) {
        if (z2 != this.m) {
            this.m = z2;
            if (!this.m) {
                this.c = false;
                if (!TextUtils.isEmpty(this.n) && TextUtils.isEmpty(this.f4008a.getHint())) {
                    this.f4008a.setHint(this.n);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f4008a.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.n)) {
                        setHint(hint);
                    }
                    this.f4008a.setHint(null);
                }
                this.c = true;
            }
            if (this.f4008a != null) {
                e();
            }
        }
    }

    public boolean isHintEnabled() {
        return this.m;
    }

    public void setHintTextAppearance(int i2) {
        this.d.setCollapsedTextAppearance(i2);
        this.S = this.d.getCollapsedTextColor();
        if (this.f4008a != null) {
            a(false, false);
            e();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.R = colorStateList;
        this.S = colorStateList;
        if (this.f4008a != null) {
            a(false, false);
        }
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.R;
    }

    public void setErrorEnabled(boolean z2) {
        b bVar = this.g;
        if (bVar.g != z2) {
            bVar.b();
            if (z2) {
                bVar.h = new AppCompatTextView(bVar.f4018a);
                bVar.h.setId(a.f.textinput_error);
                if (bVar.n != null) {
                    bVar.h.setTypeface(bVar.n);
                }
                bVar.a(bVar.i);
                bVar.h.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(bVar.h, 1);
                bVar.a(bVar.h, 0);
            } else {
                bVar.a();
                bVar.b(bVar.h, 0);
                bVar.h = null;
                bVar.f4019b.a();
                bVar.f4019b.b();
            }
            bVar.g = z2;
        }
    }

    public void setErrorTextAppearance(int i2) {
        this.g.a(i2);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        b bVar = this.g;
        if (bVar.h != null) {
            bVar.h.setTextColor(colorStateList);
        }
    }

    public int getErrorCurrentTextColors() {
        return this.g.e();
    }

    public void setHelperTextTextAppearance(int i2) {
        this.g.b(i2);
    }

    public boolean isErrorEnabled() {
        return this.g.g;
    }

    public void setHelperTextEnabled(boolean z2) {
        b bVar = this.g;
        if (bVar.k != z2) {
            bVar.b();
            if (z2) {
                bVar.l = new AppCompatTextView(bVar.f4018a);
                bVar.l.setId(a.f.textinput_helper_text);
                if (bVar.n != null) {
                    bVar.l.setTypeface(bVar.n);
                }
                bVar.l.setVisibility(4);
                ViewCompat.setAccessibilityLiveRegion(bVar.l, 1);
                bVar.b(bVar.m);
                bVar.a(bVar.l, 1);
            } else {
                bVar.b();
                if (bVar.d == 2) {
                    bVar.e = 0;
                }
                bVar.a(bVar.d, bVar.e, bVar.a(bVar.l, (CharSequence) null));
                bVar.b(bVar.l, 1);
                bVar.l = null;
                bVar.f4019b.a();
                bVar.f4019b.b();
            }
            bVar.k = z2;
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            if (!isHelperTextEnabled()) {
                setHelperTextEnabled(true);
            }
            b bVar = this.g;
            bVar.b();
            bVar.j = charSequence;
            bVar.l.setText(charSequence);
            if (bVar.d != 2) {
                bVar.e = 2;
            }
            bVar.a(bVar.d, bVar.e, bVar.a(bVar.l, charSequence));
        } else if (isHelperTextEnabled()) {
            setHelperTextEnabled(false);
        }
    }

    public boolean isHelperTextEnabled() {
        return this.g.k;
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        b bVar = this.g;
        if (bVar.l != null) {
            bVar.l.setTextColor(colorStateList);
        }
    }

    public int getHelperTextCurrentTextColor() {
        b bVar = this.g;
        if (bVar.l != null) {
            return bVar.l.getCurrentTextColor();
        }
        return -1;
    }

    public void setError(CharSequence charSequence) {
        if (!this.g.g) {
            if (!TextUtils.isEmpty(charSequence)) {
                setErrorEnabled(true);
            } else {
                return;
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            b bVar = this.g;
            bVar.b();
            bVar.f = charSequence;
            bVar.h.setText(charSequence);
            if (bVar.d != 1) {
                bVar.e = 1;
            }
            bVar.a(bVar.d, bVar.e, bVar.a(bVar.h, charSequence));
            return;
        }
        this.g.a();
    }

    public void setCounterEnabled(boolean z2) {
        if (this.f4009b != z2) {
            if (z2) {
                this.j = new AppCompatTextView(getContext());
                this.j.setId(a.f.textinput_counter);
                Typeface typeface = this.F;
                if (typeface != null) {
                    this.j.setTypeface(typeface);
                }
                this.j.setMaxLines(1);
                a(this.j, this.l);
                this.g.a(this.j, 2);
                EditText editText = this.f4008a;
                if (editText == null) {
                    a(0);
                } else {
                    a(editText.getText().length());
                }
            } else {
                this.g.b(this.j, 2);
                this.j = null;
            }
            this.f4009b = z2;
        }
    }

    public boolean isCounterEnabled() {
        return this.f4009b;
    }

    public void setCounterMaxLength(int i2) {
        if (this.h != i2) {
            if (i2 > 0) {
                this.h = i2;
            } else {
                this.h = -1;
            }
            if (this.f4009b) {
                EditText editText = this.f4008a;
                a(editText == null ? 0 : editText.getText().length());
            }
        }
    }

    public void setEnabled(boolean z2) {
        a((ViewGroup) this, z2);
        super.setEnabled(z2);
    }

    private static void a(ViewGroup viewGroup, boolean z2) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z2);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z2);
            }
        }
    }

    public int getCounterMaxLength() {
        return this.h;
    }

    /* access modifiers changed from: package-private */
    public CharSequence getCounterOverflowDescription() {
        if (this.f4009b && this.i) {
            TextView textView = this.j;
            if (textView != null) {
                return textView.getContentDescription();
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void a(int i2) {
        boolean z2 = this.i;
        if (this.h == -1) {
            this.j.setText(String.valueOf(i2));
            this.j.setContentDescription(null);
            this.i = false;
        } else {
            if (ViewCompat.getAccessibilityLiveRegion(this.j) == 1) {
                ViewCompat.setAccessibilityLiveRegion(this.j, 0);
            }
            this.i = i2 > this.h;
            boolean z3 = this.i;
            if (z2 != z3) {
                a(this.j, z3 ? this.k : this.l);
                if (this.i) {
                    ViewCompat.setAccessibilityLiveRegion(this.j, 1);
                }
            }
            this.j.setText(getContext().getString(a.i.character_counter_pattern, new Object[]{Integer.valueOf(i2), Integer.valueOf(this.h)}));
            this.j.setContentDescription(getContext().getString(a.i.character_counter_content_description, new Object[]{Integer.valueOf(i2), Integer.valueOf(this.h)}));
        }
        if (this.f4008a != null && z2 != this.i) {
            a(false, false);
            b();
            a();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(TextView textView, int i2) {
        boolean z2 = true;
        try {
            TextViewCompat.setTextAppearance(textView, i2);
            if (Build.VERSION.SDK_INT < 23 || textView.getTextColors().getDefaultColor() != -65281) {
                z2 = false;
            }
        } catch (Exception unused) {
        }
        if (z2) {
            TextViewCompat.setTextAppearance(textView, a.j.TextAppearance_AppCompat_Caption);
            textView.setTextColor(ContextCompat.getColor(getContext(), a.c.design_error));
        }
    }

    private void f() {
        if (this.r != 0 && this.o != null && this.f4008a != null && getRight() != 0) {
            int left = this.f4008a.getLeft();
            int g2 = g();
            int right = this.f4008a.getRight();
            int bottom = this.f4008a.getBottom() + this.p;
            if (this.r == 2) {
                int i2 = this.z;
                left += i2 / 2;
                g2 -= i2 / 2;
                right -= i2 / 2;
                bottom += i2 / 2;
            }
            this.o.setBounds(left, g2, right, bottom);
            k();
            i();
        }
    }

    private int g() {
        EditText editText = this.f4008a;
        if (editText == null) {
            return 0;
        }
        int i2 = this.r;
        if (i2 == 1) {
            return editText.getTop();
        }
        if (i2 != 2) {
            return 0;
        }
        return editText.getTop() + h();
    }

    private int h() {
        float collapsedTextHeight;
        if (!this.m) {
            return 0;
        }
        int i2 = this.r;
        if (i2 == 0 || i2 == 1) {
            collapsedTextHeight = this.d.getCollapsedTextHeight();
        } else if (i2 != 2) {
            return 0;
        } else {
            collapsedTextHeight = this.d.getCollapsedTextHeight() / 2.0f;
        }
        return (int) collapsedTextHeight;
    }

    private void i() {
        EditText editText = this.f4008a;
        if (editText != null) {
            Drawable background = editText.getBackground();
            if (background != null) {
                if (DrawableUtils.canSafelyMutateDrawable(background)) {
                    background = background.mutate();
                }
                d.getDescendantRect(this, this.f4008a, new Rect());
                Rect bounds = background.getBounds();
                if (bounds.left != bounds.right) {
                    Rect rect = new Rect();
                    background.getPadding(rect);
                    background.setBounds(bounds.left - rect.left, bounds.top, bounds.right + (rect.right * 2), this.f4008a.getBottom());
                }
            }
        }
    }

    private void j() {
        int i2 = this.r;
        if (i2 != 1) {
            if (i2 == 2 && this.V == 0) {
                this.V = this.S.getColorForState(getDrawableState(), this.S.getDefaultColor());
            }
            return;
        }
        this.x = 0;
    }

    private void k() {
        if (this.o != null) {
            j();
            EditText editText = this.f4008a;
            if (editText != null && this.r == 2) {
                if (editText.getBackground() != null) {
                    this.C = this.f4008a.getBackground();
                }
                ViewCompat.setBackground(this.f4008a, null);
            }
            EditText editText2 = this.f4008a;
            if (editText2 != null && this.r == 1) {
                Drawable drawable = this.C;
                if (drawable != null) {
                    ViewCompat.setBackground(editText2, drawable);
                }
            }
            int i2 = this.x;
            if (i2 >= 0) {
                int i3 = this.A;
                if (i3 != 0) {
                    this.o.setStroke(i2, i3);
                }
            }
            this.o.setCornerRadii(getCornerRadiiAsArray());
            this.o.setColor(this.B);
            invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        EditText editText = this.f4008a;
        if (editText != null) {
            Drawable background = editText.getBackground();
            if (background != null) {
                l();
                if (DrawableUtils.canSafelyMutateDrawable(background)) {
                    background = background.mutate();
                }
                if (this.g.d()) {
                    background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(this.g.e(), PorterDuff.Mode.SRC_IN));
                    return;
                }
                if (this.i) {
                    TextView textView = this.j;
                    if (textView != null) {
                        background.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
                        return;
                    }
                }
                DrawableCompat.clearColorFilter(background);
                this.f4008a.refreshDrawableState();
            }
        }
    }

    private void l() {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 == 21 || i2 == 22) {
            Drawable background = this.f4008a.getBackground();
            if (background != null && !this.ad) {
                Drawable newDrawable = background.getConstantState().newDrawable();
                if (background instanceof DrawableContainer) {
                    this.ad = e.setContainerConstantState((DrawableContainer) background, newDrawable.getConstantState());
                }
                if (!this.ad) {
                    ViewCompat.setBackground(this.f4008a, newDrawable);
                    this.ad = true;
                    c();
                }
            }
        }
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        if (this.g.d()) {
            savedState.f4013a = getError();
        }
        savedState.f4014b = this.K;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setError(savedState.f4013a);
        if (savedState.f4014b) {
            passwordVisibilityToggleRequested(true);
        }
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.af = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.af = false;
    }

    public CharSequence getError() {
        if (this.g.g) {
            return this.g.f;
        }
        return null;
    }

    public CharSequence getHelperText() {
        if (this.g.k) {
            return this.g.j;
        }
        return null;
    }

    public boolean isHintAnimationEnabled() {
        return this.ab;
    }

    public void setHintAnimationEnabled(boolean z2) {
        this.ab = z2;
    }

    public void draw(Canvas canvas) {
        GradientDrawable gradientDrawable = this.o;
        if (gradientDrawable != null) {
            gradientDrawable.draw(canvas);
        }
        super.draw(canvas);
        if (this.m) {
            this.d.draw(canvas);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        m();
        super.onMeasure(i2, i3);
    }

    private void m() {
        if (this.f4008a != null) {
            if (o()) {
                if (this.J == null) {
                    this.J = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(a.h.design_text_input_password_icon, this.e, false);
                    this.J.setImageDrawable(this.H);
                    this.J.setContentDescription(this.I);
                    this.e.addView(this.J);
                    this.J.setOnClickListener(new View.OnClickListener() {
                        public final void onClick(View view) {
                            TextInputLayout.this.passwordVisibilityToggleRequested(false);
                        }
                    });
                }
                EditText editText = this.f4008a;
                if (editText != null && ViewCompat.getMinimumHeight(editText) <= 0) {
                    this.f4008a.setMinimumHeight(ViewCompat.getMinimumHeight(this.J));
                }
                this.J.setVisibility(0);
                this.J.setChecked(this.K);
                if (this.L == null) {
                    this.L = new ColorDrawable();
                }
                this.L.setBounds(0, 0, this.J.getMeasuredWidth(), 1);
                Drawable[] compoundDrawablesRelative = TextViewCompat.getCompoundDrawablesRelative(this.f4008a);
                if (compoundDrawablesRelative[2] != this.L) {
                    this.M = compoundDrawablesRelative[2];
                }
                TextViewCompat.setCompoundDrawablesRelative(this.f4008a, compoundDrawablesRelative[0], compoundDrawablesRelative[1], this.L, compoundDrawablesRelative[3]);
                this.J.setPadding(this.f4008a.getPaddingLeft(), this.f4008a.getPaddingTop(), this.f4008a.getPaddingRight(), this.f4008a.getPaddingBottom());
                return;
            }
            CheckableImageButton checkableImageButton = this.J;
            if (checkableImageButton != null && checkableImageButton.getVisibility() == 0) {
                this.J.setVisibility(8);
            }
            if (this.L != null) {
                Drawable[] compoundDrawablesRelative2 = TextViewCompat.getCompoundDrawablesRelative(this.f4008a);
                if (compoundDrawablesRelative2[2] == this.L) {
                    TextViewCompat.setCompoundDrawablesRelative(this.f4008a, compoundDrawablesRelative2[0], compoundDrawablesRelative2[1], this.M, compoundDrawablesRelative2[3]);
                    this.L = null;
                }
            }
        }
    }

    public void setPasswordVisibilityToggleDrawable(int i2) {
        setPasswordVisibilityToggleDrawable(i2 != 0 ? AppCompatResources.getDrawable(getContext(), i2) : null);
    }

    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.H = drawable;
        CheckableImageButton checkableImageButton = this.J;
        if (checkableImageButton != null) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public void setPasswordVisibilityToggleContentDescription(int i2) {
        setPasswordVisibilityToggleContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.I = charSequence;
        CheckableImageButton checkableImageButton = this.J;
        if (checkableImageButton != null) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.H;
    }

    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.I;
    }

    public boolean isPasswordVisibilityToggleEnabled() {
        return this.G;
    }

    public void setPasswordVisibilityToggleEnabled(boolean z2) {
        if (this.G != z2) {
            this.G = z2;
            if (!z2 && this.K) {
                EditText editText = this.f4008a;
                if (editText != null) {
                    editText.setTransformationMethod(PasswordTransformationMethod.getInstance());
                }
            }
            this.K = false;
            m();
        }
    }

    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.N = colorStateList;
        this.O = true;
        p();
    }

    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.P = mode;
        this.Q = true;
        p();
    }

    public void passwordVisibilityToggleRequested(boolean z2) {
        if (this.G) {
            int selectionEnd = this.f4008a.getSelectionEnd();
            if (n()) {
                this.f4008a.setTransformationMethod(null);
                this.K = true;
            } else {
                this.f4008a.setTransformationMethod(PasswordTransformationMethod.getInstance());
                this.K = false;
            }
            this.J.setChecked(this.K);
            if (z2) {
                this.J.jumpDrawablesToCurrentState();
            }
            this.f4008a.setSelection(selectionEnd);
        }
    }

    public void setTextInputAccessibilityDelegate(a aVar) {
        EditText editText = this.f4008a;
        if (editText != null) {
            ViewCompat.setAccessibilityDelegate(editText, aVar);
        }
    }

    private boolean n() {
        EditText editText = this.f4008a;
        return editText != null && (editText.getTransformationMethod() instanceof PasswordTransformationMethod);
    }

    private boolean o() {
        return this.G && (n() || this.K);
    }

    private void p() {
        if (this.H == null) {
            return;
        }
        if (this.O || this.Q) {
            this.H = DrawableCompat.wrap(this.H).mutate();
            if (this.O) {
                DrawableCompat.setTintList(this.H, this.N);
            }
            if (this.Q) {
                DrawableCompat.setTintMode(this.H, this.P);
            }
            CheckableImageButton checkableImageButton = this.J;
            if (checkableImageButton != null) {
                Drawable drawable = checkableImageButton.getDrawable();
                Drawable drawable2 = this.H;
                if (drawable != drawable2) {
                    this.J.setImageDrawable(drawable2);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int i6;
        super.onLayout(z2, i2, i3, i4, i5);
        if (this.o != null) {
            f();
        }
        if (this.m) {
            EditText editText = this.f4008a;
            if (editText != null) {
                Rect rect = this.D;
                d.getDescendantRect(this, editText, rect);
                int compoundPaddingLeft = rect.left + this.f4008a.getCompoundPaddingLeft();
                int compoundPaddingRight = rect.right - this.f4008a.getCompoundPaddingRight();
                int i7 = this.r;
                if (i7 == 1) {
                    i6 = getBoxBackground().getBounds().top + this.s;
                } else if (i7 != 2) {
                    i6 = getPaddingTop();
                } else {
                    i6 = getBoxBackground().getBounds().top - h();
                }
                this.d.setExpandedBounds(compoundPaddingLeft, rect.top + this.f4008a.getCompoundPaddingTop(), compoundPaddingRight, rect.bottom - this.f4008a.getCompoundPaddingBottom());
                this.d.setCollapsedBounds(compoundPaddingLeft, i6, compoundPaddingRight, (i5 - i3) - getPaddingBottom());
                this.d.recalculate();
                if (q() && !this.aa) {
                    r();
                }
            }
        }
    }

    private void a(boolean z2) {
        ValueAnimator valueAnimator = this.ac;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.ac.cancel();
        }
        if (!z2 || !this.ab) {
            this.d.setExpansionFraction(1.0f);
        } else {
            a(1.0f);
        }
        this.aa = false;
        if (q()) {
            r();
        }
    }

    private boolean q() {
        return this.m && !TextUtils.isEmpty(this.n) && (this.o instanceof a);
    }

    private void r() {
        if (q()) {
            RectF rectF = this.E;
            this.d.getCollapsedTextActualBounds(rectF);
            a(rectF);
            ((a) this.o).a(rectF);
        }
    }

    private void s() {
        if (q()) {
            ((a) this.o).a(0.0f, 0.0f, 0.0f, 0.0f);
        }
    }

    private void a(RectF rectF) {
        rectF.left -= (float) this.q;
        rectF.top -= (float) this.q;
        rectF.right += (float) this.q;
        rectF.bottom += (float) this.q;
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        if (!this.ae) {
            boolean z2 = true;
            this.ae = true;
            super.drawableStateChanged();
            int[] drawableState = getDrawableState();
            if (!ViewCompat.isLaidOut(this) || !isEnabled()) {
                z2 = false;
            }
            a(z2, false);
            a();
            f();
            b();
            c cVar = this.d;
            if (cVar != null ? cVar.setState(drawableState) | false : false) {
                invalidate();
            }
            this.ae = false;
        }
    }

    /* access modifiers changed from: package-private */
    public final void b() {
        if (this.o != null && this.r != 0) {
            EditText editText = this.f4008a;
            boolean z2 = true;
            boolean z3 = editText != null && editText.hasFocus();
            EditText editText2 = this.f4008a;
            if (editText2 == null || !editText2.isHovered()) {
                z2 = false;
            }
            if (this.r == 2) {
                if (!isEnabled()) {
                    this.A = this.W;
                } else if (this.g.d()) {
                    this.A = this.g.e();
                } else {
                    if (this.i) {
                        TextView textView = this.j;
                        if (textView != null) {
                            this.A = textView.getCurrentTextColor();
                        }
                    }
                    if (z3) {
                        this.A = this.V;
                    } else if (z2) {
                        this.A = this.U;
                    } else {
                        this.A = this.T;
                    }
                }
                if ((z2 || z3) && isEnabled()) {
                    this.x = this.z;
                } else {
                    this.x = this.y;
                }
                k();
            }
        }
    }

    private void b(boolean z2) {
        ValueAnimator valueAnimator = this.ac;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.ac.cancel();
        }
        if (!z2 || !this.ab) {
            this.d.setExpansionFraction(0.0f);
        } else {
            a(0.0f);
        }
        if (q() && ((a) this.o).a()) {
            s();
        }
        this.aa = true;
    }

    private void a(float f2) {
        if (this.d.getExpansionFraction() != f2) {
            if (this.ac == null) {
                this.ac = new ValueAnimator();
                this.ac.setInterpolator(com.google.android.material.a.a.FAST_OUT_SLOW_IN_INTERPOLATOR);
                this.ac.setDuration(167);
                this.ac.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        TextInputLayout.this.d.setExpansionFraction(((Float) valueAnimator.getAnimatedValue()).floatValue());
                    }
                });
            }
            this.ac.setFloatValues(new float[]{this.d.getExpansionFraction(), f2});
            this.ac.start();
        }
    }

    /* access modifiers changed from: package-private */
    public final int getHintCurrentCollapsedTextColor() {
        return this.d.getCurrentCollapsedTextColor();
    }

    /* access modifiers changed from: package-private */
    public final float getHintCollapsedTextHeight() {
        return this.d.getCollapsedTextHeight();
    }

    /* access modifiers changed from: package-private */
    public final int getErrorTextCurrentColor() {
        return this.g.e();
    }
}
