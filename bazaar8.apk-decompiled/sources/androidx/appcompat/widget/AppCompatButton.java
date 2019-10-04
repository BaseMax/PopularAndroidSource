package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.TextView;
import b.b.a;
import b.b.g.C;
import b.b.g.C0218i;
import b.b.g.ma;
import b.i.k.u;
import b.i.l.b;
import b.i.l.j;

public class AppCompatButton extends Button implements u, b {

    /* renamed from: a  reason: collision with root package name */
    public final C0218i f365a;

    /* renamed from: b  reason: collision with root package name */
    public final C f366b;

    public AppCompatButton(Context context) {
        this(context, null);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f365a;
        if (iVar != null) {
            iVar.a();
        }
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a();
        }
    }

    public int getAutoSizeMaxTextSize() {
        if (b.f2874a) {
            return super.getAutoSizeMaxTextSize();
        }
        C c2 = this.f366b;
        if (c2 != null) {
            return c2.c();
        }
        return -1;
    }

    public int getAutoSizeMinTextSize() {
        if (b.f2874a) {
            return super.getAutoSizeMinTextSize();
        }
        C c2 = this.f366b;
        if (c2 != null) {
            return c2.d();
        }
        return -1;
    }

    public int getAutoSizeStepGranularity() {
        if (b.f2874a) {
            return super.getAutoSizeStepGranularity();
        }
        C c2 = this.f366b;
        if (c2 != null) {
            return c2.e();
        }
        return -1;
    }

    public int[] getAutoSizeTextAvailableSizes() {
        if (b.f2874a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C c2 = this.f366b;
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
        C c2 = this.f366b;
        if (c2 != null) {
            return c2.g();
        }
        return 0;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f365a;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f365a;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(z, i2, i3, i4, i5);
        }
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        C c2 = this.f366b;
        if (c2 != null && !b.f2874a && c2.j()) {
            this.f366b.b();
        }
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i3, int i4, int i5) {
        if (b.f2874a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i2, i3, i4, i5);
            return;
        }
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(i2, i3, i4, i5);
        }
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) {
        if (b.f2874a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
            return;
        }
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(iArr, i2);
        }
    }

    public void setAutoSizeTextTypeWithDefaults(int i2) {
        if (b.f2874a) {
            super.setAutoSizeTextTypeWithDefaults(i2);
            return;
        }
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(i2);
        }
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f365a;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f365a;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(j.a((TextView) this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(z);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f365a;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f365a;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(context, i2);
        }
    }

    public void setTextSize(int i2, float f2) {
        if (b.f2874a) {
            super.setTextSize(i2, f2);
            return;
        }
        C c2 = this.f366b;
        if (c2 != null) {
            c2.a(i2, f2);
        }
    }

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        this.f365a = new C0218i(this);
        this.f365a.a(attributeSet, i2);
        this.f366b = new C(this);
        this.f366b.a(attributeSet, i2);
        this.f366b.a();
    }
}
