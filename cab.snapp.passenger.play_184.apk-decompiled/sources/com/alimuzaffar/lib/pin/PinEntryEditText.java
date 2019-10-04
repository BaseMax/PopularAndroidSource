package com.alimuzaffar.lib.pin;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.legacy.view.ViewCompat;
import com.alimuzaffar.lib.pin.a;

public class PinEntryEditText extends AppCompatEditText {
    public static final String DEFAULT_MASK = "●";
    protected int[] A = {-16711936, SupportMenu.CATEGORY_MASK, -16777216, -7829368};
    protected ColorStateList B = new ColorStateList(this.z, this.A);

    /* renamed from: a  reason: collision with root package name */
    protected String f1947a = null;

    /* renamed from: b  reason: collision with root package name */
    protected StringBuilder f1948b = null;
    protected String c = null;
    protected int d = 0;
    protected float e = 24.0f;
    protected float f;
    protected float g = 4.0f;
    protected float h = 8.0f;
    protected int i = 4;
    protected RectF[] j;
    protected float[] k;
    protected Paint l;
    protected Paint m;
    protected Paint n;
    protected Drawable o;
    protected Rect p = new Rect();
    protected boolean q = false;
    protected View.OnClickListener r;
    protected a s = null;
    protected float t = 1.0f;
    protected float u = 2.0f;
    protected Paint v;
    protected boolean w = false;
    protected boolean x = false;
    protected ColorStateList y;
    protected int[][] z = {new int[]{16842913}, new int[]{16842914}, new int[]{16842908}, new int[]{-16842908}};

    public interface a {
        void onPinEntered(CharSequence charSequence);
    }

    public PinEntryEditText(Context context) {
        super(context);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context, attributeSet);
    }

    public PinEntryEditText(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        a(context, attributeSet);
    }

    public void setMaxLength(int i2) {
        this.i = i2;
        this.g = (float) i2;
        setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2)});
        setText(null);
        invalidate();
    }

    public void setMask(String str) {
        this.f1947a = str;
        this.f1948b = null;
        invalidate();
    }

    public void setSingleCharHint(String str) {
        this.c = str;
        invalidate();
    }

    /* JADX INFO: finally extract failed */
    private void a(Context context, AttributeSet attributeSet) {
        float f2 = context.getResources().getDisplayMetrics().density;
        this.t *= f2;
        this.u *= f2;
        this.e *= f2;
        this.h = f2 * this.h;
        boolean z2 = false;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.c.PinEntryEditText, 0, 0);
        try {
            TypedValue typedValue = new TypedValue();
            obtainStyledAttributes.getValue(a.c.PinEntryEditText_pinAnimationType, typedValue);
            this.d = typedValue.data;
            this.f1947a = obtainStyledAttributes.getString(a.c.PinEntryEditText_pinCharacterMask);
            this.c = obtainStyledAttributes.getString(a.c.PinEntryEditText_pinRepeatedHint);
            this.t = obtainStyledAttributes.getDimension(a.c.PinEntryEditText_pinLineStroke, this.t);
            this.u = obtainStyledAttributes.getDimension(a.c.PinEntryEditText_pinLineStrokeSelected, this.u);
            this.e = obtainStyledAttributes.getDimension(a.c.PinEntryEditText_pinCharacterSpacing, this.e);
            this.h = obtainStyledAttributes.getDimension(a.c.PinEntryEditText_pinTextBottomPadding, this.h);
            this.q = obtainStyledAttributes.getBoolean(a.c.PinEntryEditText_pinBackgroundIsSquare, this.q);
            this.o = obtainStyledAttributes.getDrawable(a.c.PinEntryEditText_pinBackgroundDrawable);
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(a.c.PinEntryEditText_pinLineColors);
            if (colorStateList != null) {
                this.B = colorStateList;
            }
            obtainStyledAttributes.recycle();
            this.l = new Paint(getPaint());
            this.m = new Paint(getPaint());
            this.n = new Paint(getPaint());
            this.v = new Paint(getPaint());
            this.v.setStrokeWidth(this.t);
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(a.C0031a.colorControlActivated, typedValue2, true);
            this.A[0] = typedValue2.data;
            int i2 = -7829368;
            this.A[1] = isInEditMode() ? -7829368 : ContextCompat.getColor(context, a.b.pin_normal);
            if (!isInEditMode()) {
                i2 = ContextCompat.getColor(context, a.b.pin_normal);
            }
            this.A[2] = i2;
            setBackgroundResource(0);
            this.i = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLength", 4);
            this.g = (float) this.i;
            super.setCustomSelectionActionModeCallback(new ActionMode.Callback() {
                public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
                    return false;
                }

                public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }

                public final void onDestroyActionMode(ActionMode actionMode) {
                }

                public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
                    return false;
                }
            });
            super.setOnClickListener(new View.OnClickListener() {
                public final void onClick(View view) {
                    PinEntryEditText pinEntryEditText = PinEntryEditText.this;
                    pinEntryEditText.setSelection(pinEntryEditText.getText().length());
                    if (PinEntryEditText.this.r != null) {
                        PinEntryEditText.this.r.onClick(view);
                    }
                }
            });
            super.setOnLongClickListener(new View.OnLongClickListener() {
                public final boolean onLongClick(View view) {
                    PinEntryEditText pinEntryEditText = PinEntryEditText.this;
                    pinEntryEditText.setSelection(pinEntryEditText.getText().length());
                    return true;
                }
            });
            if ((getInputType() & 128) == 128 && TextUtils.isEmpty(this.f1947a)) {
                this.f1947a = DEFAULT_MASK;
            } else if ((getInputType() & 16) == 16 && TextUtils.isEmpty(this.f1947a)) {
                this.f1947a = DEFAULT_MASK;
            }
            if (!TextUtils.isEmpty(this.f1947a)) {
                this.f1948b = getMaskChars();
            }
            getPaint().getTextBounds("|", 0, 1, this.p);
            if (this.d >= 0) {
                z2 = true;
            }
            this.w = z2;
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public void setInputType(int i2) {
        super.setInputType(i2);
        if ((i2 & 128) != 128 && (i2 & 16) != 16) {
            setMask(null);
        } else if (TextUtils.isEmpty(this.f1947a)) {
            setMask(DEFAULT_MASK);
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        int i6;
        float f2;
        super.onSizeChanged(i2, i3, i4, i5);
        this.y = getTextColors();
        ColorStateList colorStateList = this.y;
        if (colorStateList != null) {
            this.m.setColor(colorStateList.getDefaultColor());
            this.l.setColor(this.y.getDefaultColor());
            this.n.setColor(getCurrentHintTextColor());
        }
        int width = (getWidth() - ViewCompat.getPaddingEnd(this)) - ViewCompat.getPaddingStart(this);
        float f3 = this.e;
        if (f3 < 0.0f) {
            this.f = ((float) width) / ((this.g * 2.0f) - 1.0f);
        } else {
            float f4 = this.g;
            this.f = (((float) width) - (f3 * (f4 - 1.0f))) / f4;
        }
        float f5 = this.g;
        this.j = new RectF[((int) f5)];
        this.k = new float[((int) f5)];
        int height = getHeight() - getPaddingBottom();
        int i7 = 1;
        if (ViewCompat.getLayoutDirection(this) == 1) {
            i7 = -1;
            i6 = (int) (((float) (getWidth() - ViewCompat.getPaddingStart(this))) - this.f);
        } else {
            i6 = ViewCompat.getPaddingStart(this);
        }
        for (int i8 = 0; ((float) i8) < this.g; i8++) {
            float f6 = (float) i6;
            float f7 = (float) height;
            this.j[i8] = new RectF(f6, f7, this.f + f6, f7);
            if (this.o != null) {
                if (this.q) {
                    this.j[i8].top = (float) getPaddingTop();
                    RectF[] rectFArr = this.j;
                    rectFArr[i8].right = rectFArr[i8].width() + f6;
                } else {
                    this.j[i8].top -= ((float) this.p.height()) + (this.h * 2.0f);
                }
            }
            float f8 = this.e;
            if (f8 < 0.0f) {
                f2 = f6 + (((float) i7) * this.f * 2.0f);
            } else {
                f2 = f6 + (((float) i7) * (this.f + f8));
            }
            i6 = (int) f2;
            this.k[i8] = this.j[i8].bottom - this.h;
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        if (this.q) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            if (mode == 1073741824) {
                i5 = View.MeasureSpec.getSize(i2);
                f2 = (float) i5;
                f3 = this.g;
                f4 = this.e;
            } else {
                if (mode2 == 1073741824) {
                    i4 = View.MeasureSpec.getSize(i3);
                    f5 = this.g;
                    f6 = ((float) i4) * f5;
                    f7 = this.e;
                } else if (mode == Integer.MIN_VALUE) {
                    i5 = View.MeasureSpec.getSize(i2);
                    f2 = (float) i5;
                    f3 = this.g;
                    f4 = this.e;
                } else if (mode2 == Integer.MIN_VALUE) {
                    i4 = View.MeasureSpec.getSize(i3);
                    f5 = this.g;
                    f6 = ((float) i4) * f5;
                    f7 = this.e;
                } else {
                    i5 = getPaddingLeft() + getPaddingRight() + getSuggestedMinimumWidth();
                    f2 = (float) i5;
                    f3 = this.g;
                    f4 = this.e;
                }
                i5 = (int) (f6 + ((f7 * f5) - 1.0f));
                setMeasuredDimension(resolveSizeAndState(i5, i2, 1), resolveSizeAndState(i4, i3, 0));
                return;
            }
            i4 = (int) ((f2 - (f3 - (f4 * 1.0f))) / f3);
            setMeasuredDimension(resolveSizeAndState(i5, i2, 1), resolveSizeAndState(i4, i3, 0));
            return;
        }
        super.onMeasure(i2, i3);
    }

    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.r = onClickListener;
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        throw new RuntimeException("setCustomSelectionActionModeCallback() not supported.");
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        float f2;
        int i2;
        Canvas canvas2 = canvas;
        CharSequence fullText = getFullText();
        int length = fullText.length();
        float[] fArr = new float[length];
        getPaint().getTextWidths(fullText, 0, length, fArr);
        String str = this.c;
        if (str != null) {
            float[] fArr2 = new float[str.length()];
            getPaint().getTextWidths(this.c, fArr2);
            float f3 = 0.0f;
            for (float f4 : fArr2) {
                f3 += f4;
            }
            f2 = f3;
        } else {
            f2 = 0.0f;
        }
        int i3 = 0;
        while (((float) i3) < this.g) {
            if (this.o != null) {
                boolean z2 = i3 < length;
                boolean z3 = i3 == length;
                if (this.x) {
                    this.o.setState(new int[]{16842914});
                } else if (isFocused()) {
                    this.o.setState(new int[]{16842908});
                    if (z3) {
                        this.o.setState(new int[]{16842908, 16842913});
                    } else if (z2) {
                        this.o.setState(new int[]{16842908, 16842912});
                    }
                } else if (z2) {
                    this.o.setState(new int[]{-16842908, 16842912});
                } else {
                    this.o.setState(new int[]{-16842908});
                }
                this.o.setBounds((int) this.j[i3].left, (int) this.j[i3].top, (int) this.j[i3].right, (int) this.j[i3].bottom);
                this.o.draw(canvas2);
            }
            float f5 = this.j[i3].left + (this.f / 2.0f);
            if (length <= i3) {
                i2 = 1;
                String str2 = this.c;
                if (str2 != null) {
                    canvas2.drawText(str2, f5 - (f2 / 2.0f), this.k[i3], this.n);
                }
            } else if (!this.w || i3 != length - 1) {
                i2 = 1;
                canvas.drawText(fullText, i3, i3 + 1, f5 - (fArr[i3] / 2.0f), this.k[i3], this.l);
            } else {
                i2 = 1;
                canvas.drawText(fullText, i3, i3 + 1, f5 - (fArr[i3] / 2.0f), this.k[i3], this.m);
            }
            if (this.o == null) {
                boolean z4 = i3 <= length;
                if (this.x) {
                    Paint paint = this.v;
                    int[] iArr = new int[i2];
                    iArr[0] = 16842914;
                    paint.setColor(a(iArr));
                } else if (isFocused()) {
                    this.v.setStrokeWidth(this.u);
                    Paint paint2 = this.v;
                    int[] iArr2 = new int[i2];
                    iArr2[0] = 16842908;
                    paint2.setColor(a(iArr2));
                    if (z4) {
                        Paint paint3 = this.v;
                        int[] iArr3 = new int[i2];
                        iArr3[0] = 16842913;
                        paint3.setColor(a(iArr3));
                    }
                } else {
                    this.v.setStrokeWidth(this.t);
                    Paint paint4 = this.v;
                    int[] iArr4 = new int[i2];
                    iArr4[0] = -16842908;
                    paint4.setColor(a(iArr4));
                }
                canvas.drawLine(this.j[i3].left, this.j[i3].top, this.j[i3].right, this.j[i3].bottom, this.v);
            }
            i3++;
        }
    }

    private CharSequence getFullText() {
        if (TextUtils.isEmpty(this.f1947a)) {
            return getText();
        }
        return getMaskChars();
    }

    private StringBuilder getMaskChars() {
        if (this.f1948b == null) {
            this.f1948b = new StringBuilder();
        }
        int length = getText().length();
        while (this.f1948b.length() != length) {
            if (this.f1948b.length() < length) {
                this.f1948b.append(this.f1947a);
            } else {
                StringBuilder sb = this.f1948b;
                sb.deleteCharAt(sb.length() - 1);
            }
        }
        return this.f1948b;
    }

    private int a(int... iArr) {
        return this.B.getColorForState(iArr, -7829368);
    }

    public void setError(boolean z2) {
        this.x = z2;
        invalidate();
    }

    public boolean isError() {
        return this.x;
    }

    public void focus() {
        requestFocus();
        ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
    }

    public void setTypeface(Typeface typeface) {
        super.setTypeface(typeface);
        setCustomTypeface(typeface);
    }

    public void setTypeface(Typeface typeface, int i2) {
        super.setTypeface(typeface, i2);
        setCustomTypeface(typeface);
    }

    private void setCustomTypeface(Typeface typeface) {
        Paint paint = this.l;
        if (paint != null) {
            paint.setTypeface(typeface);
            this.m.setTypeface(typeface);
            this.n.setTypeface(typeface);
            this.v.setTypeface(typeface);
        }
    }

    public void setPinLineColors(ColorStateList colorStateList) {
        this.B = colorStateList;
        invalidate();
    }

    public void setPinBackground(Drawable drawable) {
        this.o = drawable;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onTextChanged(CharSequence charSequence, final int i2, int i3, int i4) {
        setError(false);
        RectF[] rectFArr = this.j;
        if (rectFArr == null || !this.w) {
            if (this.s != null && charSequence.length() == this.i) {
                this.s.onPinEntered(charSequence);
            }
            return;
        }
        int i5 = this.d;
        if (i5 == -1) {
            invalidate();
            return;
        }
        if (i4 > i3) {
            if (i5 == 0) {
                ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, getPaint().getTextSize()});
                ofFloat.setDuration(200);
                ofFloat.setInterpolator(new OvershootInterpolator());
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        PinEntryEditText.this.m.setTextSize(((Float) valueAnimator.getAnimatedValue()).floatValue());
                        PinEntryEditText.this.invalidate();
                    }
                });
                if (getText().length() == this.i && this.s != null) {
                    ofFloat.addListener(new Animator.AnimatorListener() {
                        public final void onAnimationCancel(Animator animator) {
                        }

                        public final void onAnimationRepeat(Animator animator) {
                        }

                        public final void onAnimationStart(Animator animator) {
                        }

                        public final void onAnimationEnd(Animator animator) {
                            PinEntryEditText.this.s.onPinEntered(PinEntryEditText.this.getText());
                        }
                    });
                }
                ofFloat.start();
                return;
            }
            this.k[i2] = rectFArr[i2].bottom - this.h;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{this.k[i2] + getPaint().getTextSize(), this.k[i2]});
            ofFloat2.setDuration(300);
            ofFloat2.setInterpolator(new OvershootInterpolator());
            ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PinEntryEditText.this.k[i2] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    PinEntryEditText.this.invalidate();
                }
            });
            this.m.setAlpha(255);
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{0, 255});
            ofInt.setDuration(300);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    PinEntryEditText.this.m.setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                }
            });
            AnimatorSet animatorSet = new AnimatorSet();
            if (charSequence.length() == this.i && this.s != null) {
                animatorSet.addListener(new Animator.AnimatorListener() {
                    public final void onAnimationCancel(Animator animator) {
                    }

                    public final void onAnimationRepeat(Animator animator) {
                    }

                    public final void onAnimationStart(Animator animator) {
                    }

                    public final void onAnimationEnd(Animator animator) {
                        PinEntryEditText.this.s.onPinEntered(PinEntryEditText.this.getText());
                    }
                });
            }
            animatorSet.playTogether(new Animator[]{ofFloat2, ofInt});
            animatorSet.start();
        }
    }

    public void setAnimateText(boolean z2) {
        this.w = z2;
    }

    public void setOnPinEnteredListener(a aVar) {
        this.s = aVar;
    }
}
