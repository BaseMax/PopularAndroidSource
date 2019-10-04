package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import b.b.b.a.a;
import b.b.g.B;
import b.b.g.C;
import b.b.g.C0218i;
import b.b.g.C0223n;
import b.b.g.ma;
import b.i.i.c;
import b.i.k.u;
import b.i.l.b;
import b.i.l.j;
import b.i.l.l;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class AppCompatTextView extends TextView implements u, l, b {

    /* renamed from: a  reason: collision with root package name */
    public final C0218i f396a;

    /* renamed from: b  reason: collision with root package name */
    public final C f397b;

    /* renamed from: c  reason: collision with root package name */
    public final B f398c;

    /* renamed from: d  reason: collision with root package name */
    public Future<c> f399d;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public final void d() {
        Future<c> future = this.f399d;
        if (future != null) {
            try {
                this.f399d = null;
                j.a((TextView) this, future.get());
            } catch (InterruptedException | ExecutionException unused) {
            }
        }
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f396a;
        if (iVar != null) {
            iVar.a();
        }
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a();
        }
    }

    public int getAutoSizeMaxTextSize() {
        if (b.f2874a) {
            return super.getAutoSizeMaxTextSize();
        }
        C c2 = this.f397b;
        if (c2 != null) {
            return c2.c();
        }
        return -1;
    }

    public int getAutoSizeMinTextSize() {
        if (b.f2874a) {
            return super.getAutoSizeMinTextSize();
        }
        C c2 = this.f397b;
        if (c2 != null) {
            return c2.d();
        }
        return -1;
    }

    public int getAutoSizeStepGranularity() {
        if (b.f2874a) {
            return super.getAutoSizeStepGranularity();
        }
        C c2 = this.f397b;
        if (c2 != null) {
            return c2.e();
        }
        return -1;
    }

    public int[] getAutoSizeTextAvailableSizes() {
        if (b.f2874a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C c2 = this.f397b;
        if (c2 != null) {
            return c2.f();
        }
        return new int[0];
    }

    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        int i2 = 0;
        if (b.f2874a) {
            if (super.getAutoSizeTextType() == 1) {
                i2 = 1;
            }
            return i2;
        }
        C c2 = this.f397b;
        if (c2 != null) {
            return c2.g();
        }
        return 0;
    }

    public int getFirstBaselineToTopHeight() {
        return j.e(this);
    }

    public int getLastBaselineToBottomHeight() {
        return j.f(this);
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f396a;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f396a;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f397b.h();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f397b.i();
    }

    public CharSequence getText() {
        d();
        return super.getText();
    }

    public TextClassifier getTextClassifier() {
        if (Build.VERSION.SDK_INT < 28) {
            B b2 = this.f398c;
            if (b2 != null) {
                return b2.a();
            }
        }
        return super.getTextClassifier();
    }

    public c.a getTextMetricsParamsCompat() {
        return j.i(this);
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0223n.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a(z, i2, i3, i4, i5);
        }
    }

    public void onMeasure(int i2, int i3) {
        d();
        super.onMeasure(i2, i3);
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        C c2 = this.f397b;
        if (c2 != null && !b.f2874a && c2.j()) {
            this.f397b.b();
        }
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (b.f2874a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a(i2, i3, i4, i5);
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) {
        if (b.f2874a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a(iArr, i2);
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (b.f2874a) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a(i2);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f396a;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f396a;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C c2 = this.f397b;
        if (c2 != null) {
            c2.k();
        }
    }

    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C c2 = this.f397b;
        if (c2 != null) {
            c2.k();
        }
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C c2 = this.f397b;
        if (c2 != null) {
            c2.k();
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C c2 = this.f397b;
        if (c2 != null) {
            c2.k();
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(j.a((TextView) this, callback));
    }

    public void setFirstBaselineToTopHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setFirstBaselineToTopHeight(i2);
        } else {
            j.b(this, i2);
        }
    }

    public void setLastBaselineToBottomHeight(int i2) {
        if (Build.VERSION.SDK_INT >= 28) {
            super.setLastBaselineToBottomHeight(i2);
        } else {
            j.c(this, i2);
        }
    }

    public void setLineHeight(int i2) {
        j.d(this, i2);
    }

    public void setPrecomputedText(c cVar) {
        j.a((TextView) this, cVar);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f396a;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f396a;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f397b.a(colorStateList);
        this.f397b.a();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f397b.a(mode);
        this.f397b.a();
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a(context, i2);
        }
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        if (Build.VERSION.SDK_INT < 28) {
            B b2 = this.f398c;
            if (b2 != null) {
                b2.a(textClassifier);
                return;
            }
        }
        super.setTextClassifier(textClassifier);
    }

    public void setTextFuture(Future<c> future) {
        this.f399d = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(c.a aVar) {
        j.a((TextView) this, aVar);
    }

    public void setTextSize(int i2, float f2) {
        if (b.f2874a) {
            super.setTextSize(i2, f2);
            return;
        }
        C c2 = this.f397b;
        if (c2 != null) {
            c2.a(i2, f2);
        }
    }

    public void setTypeface(Typeface typeface, int i2) {
        Typeface a2 = (typeface == null || i2 <= 0) ? null : b.i.c.c.a(getContext(), typeface, i2);
        if (a2 != null) {
            typeface = a2;
        }
        super.setTypeface(typeface, i2);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        this.f396a = new C0218i(this);
        this.f396a.a(attributeSet, i2);
        this.f397b = new C(this);
        this.f397b.a(attributeSet, i2);
        this.f397b.a();
        this.f398c = new B(this);
    }

    public void setCompoundDrawablesRelativeWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable c2 = i2 != 0 ? a.c(context, i2) : null;
        Drawable c3 = i3 != 0 ? a.c(context, i3) : null;
        Drawable c4 = i4 != 0 ? a.c(context, i4) : null;
        if (i5 != 0) {
            drawable = a.c(context, i5);
        }
        setCompoundDrawablesRelativeWithIntrinsicBounds(c2, c3, c4, drawable);
        C c5 = this.f397b;
        if (c5 != null) {
            c5.k();
        }
    }

    public void setCompoundDrawablesWithIntrinsicBounds(int i2, int i3, int i4, int i5) {
        Context context = getContext();
        Drawable drawable = null;
        Drawable c2 = i2 != 0 ? a.c(context, i2) : null;
        Drawable c3 = i3 != 0 ? a.c(context, i3) : null;
        Drawable c4 = i4 != 0 ? a.c(context, i4) : null;
        if (i5 != 0) {
            drawable = a.c(context, i5);
        }
        setCompoundDrawablesWithIntrinsicBounds(c2, c3, c4, drawable);
        C c5 = this.f397b;
        if (c5 != null) {
            c5.k();
        }
    }
}
