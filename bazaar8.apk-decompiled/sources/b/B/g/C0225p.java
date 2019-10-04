package b.b.g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;
import b.b.a;
import b.i.k.u;

/* renamed from: b.b.g.p  reason: case insensitive filesystem */
/* compiled from: AppCompatMultiAutoCompleteTextView */
public class C0225p extends MultiAutoCompleteTextView implements u {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2220a = {16843126};

    /* renamed from: b  reason: collision with root package name */
    public final C0218i f2221b;

    /* renamed from: c  reason: collision with root package name */
    public final C f2222c;

    public C0225p(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.autoCompleteTextViewStyle);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            iVar.a();
        }
        C c2 = this.f2222c;
        if (c2 != null) {
            c2.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0223n.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setDropDownBackgroundResource(int i2) {
        setDropDownBackgroundDrawable(b.b.b.a.a.c(getContext(), i2));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f2221b;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C c2 = this.f2222c;
        if (c2 != null) {
            c2.a(context, i2);
        }
    }

    public C0225p(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        pa a2 = pa.a(getContext(), attributeSet, f2220a, i2, 0);
        if (a2.g(0)) {
            setDropDownBackgroundDrawable(a2.b(0));
        }
        a2.a();
        this.f2221b = new C0218i(this);
        this.f2221b.a(attributeSet, i2);
        this.f2222c = new C(this);
        this.f2222c.a(attributeSet, i2);
        this.f2222c.a();
    }
}
