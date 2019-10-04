package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import b.b.a;
import b.b.g.C;
import b.b.g.C0218i;
import b.b.g.C0220k;
import b.b.g.ma;
import b.i.k.u;
import b.i.l.k;

public class AppCompatCheckBox extends CheckBox implements k, u {

    /* renamed from: a  reason: collision with root package name */
    public final C0220k f367a;

    /* renamed from: b  reason: collision with root package name */
    public final C0218i f368b;

    /* renamed from: c  reason: collision with root package name */
    public final C f369c;

    public AppCompatCheckBox(Context context) {
        this(context, null);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f368b;
        if (iVar != null) {
            iVar.a();
        }
        C c2 = this.f369c;
        if (c2 != null) {
            c2.a();
        }
    }

    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0220k kVar = this.f367a;
        return kVar != null ? kVar.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f368b;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f368b;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        C0220k kVar = this.f367a;
        if (kVar != null) {
            return kVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0220k kVar = this.f367a;
        if (kVar != null) {
            return kVar.c();
        }
        return null;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f368b;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f368b;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0220k kVar = this.f367a;
        if (kVar != null) {
            kVar.d();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f368b;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f368b;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0220k kVar = this.f367a;
        if (kVar != null) {
            kVar.a(colorStateList);
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0220k kVar = this.f367a;
        if (kVar != null) {
            kVar.a(mode);
        }
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.checkboxStyle);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        this.f367a = new C0220k(this);
        this.f367a.a(attributeSet, i2);
        this.f368b = new C0218i(this);
        this.f368b.a(attributeSet, i2);
        this.f369c = new C(this);
        this.f369c.a(attributeSet, i2);
    }

    public void setButtonDrawable(int i2) {
        setButtonDrawable(b.b.b.a.a.c(getContext(), i2));
    }
}
