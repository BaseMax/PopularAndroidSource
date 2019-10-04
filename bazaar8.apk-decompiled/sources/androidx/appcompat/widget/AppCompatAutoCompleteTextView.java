package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import android.widget.TextView;
import b.b.b.a.a;
import b.b.g.C;
import b.b.g.C0218i;
import b.b.g.C0223n;
import b.b.g.ma;
import b.b.g.pa;
import b.i.k.u;
import b.i.l.j;

public class AppCompatAutoCompleteTextView extends AutoCompleteTextView implements u {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f362a = {16843126};

    /* renamed from: b  reason: collision with root package name */
    public final C0218i f363b;

    /* renamed from: c  reason: collision with root package name */
    public final C f364c;

    public AppCompatAutoCompleteTextView(Context context) {
        this(context, null);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f363b;
        if (iVar != null) {
            iVar.a();
        }
        C c2 = this.f364c;
        if (c2 != null) {
            c2.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f363b;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f363b;
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
        C0218i iVar = this.f363b;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f363b;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(j.a((TextView) this, callback));
    }

    public void setDropDownBackgroundResource(int i2) {
        setDropDownBackgroundDrawable(a.c(getContext(), i2));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f363b;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f363b;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C c2 = this.f364c;
        if (c2 != null) {
            c2.a(context, i2);
        }
    }

    public AppCompatAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, b.b.a.autoCompleteTextViewStyle);
    }

    public AppCompatAutoCompleteTextView(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        pa a2 = pa.a(getContext(), attributeSet, f362a, i2, 0);
        if (a2.g(0)) {
            setDropDownBackgroundDrawable(a2.b(0));
        }
        a2.a();
        this.f363b = new C0218i(this);
        this.f363b.a(attributeSet, i2);
        this.f364c = new C(this);
        this.f364c.a(attributeSet, i2);
        this.f364c.a();
    }
}
