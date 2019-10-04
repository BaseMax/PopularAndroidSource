package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import b.b.a;
import b.b.g.B;
import b.b.g.C;
import b.b.g.C0218i;
import b.b.g.C0223n;
import b.b.g.ma;
import b.i.k.u;
import b.i.l.j;

public class AppCompatEditText extends EditText implements u {

    /* renamed from: a  reason: collision with root package name */
    public final C0218i f370a;

    /* renamed from: b  reason: collision with root package name */
    public final C f371b;

    /* renamed from: c  reason: collision with root package name */
    public final B f372c;

    public AppCompatEditText(Context context) {
        this(context, null);
    }

    public void drawableStateChanged() {
        super.drawableStateChanged();
        C0218i iVar = this.f370a;
        if (iVar != null) {
            iVar.a();
        }
        C c2 = this.f371b;
        if (c2 != null) {
            c2.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C0218i iVar = this.f370a;
        if (iVar != null) {
            return iVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0218i iVar = this.f370a;
        if (iVar != null) {
            return iVar.c();
        }
        return null;
    }

    public TextClassifier getTextClassifier() {
        if (Build.VERSION.SDK_INT < 28) {
            B b2 = this.f372c;
            if (b2 != null) {
                return b2.a();
            }
        }
        return super.getTextClassifier();
    }

    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        C0223n.a(onCreateInputConnection, editorInfo, this);
        return onCreateInputConnection;
    }

    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0218i iVar = this.f370a;
        if (iVar != null) {
            iVar.b(drawable);
        }
    }

    public void setBackgroundResource(int i2) {
        super.setBackgroundResource(i2);
        C0218i iVar = this.f370a;
        if (iVar != null) {
            iVar.a(i2);
        }
    }

    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(j.a((TextView) this, callback));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0218i iVar = this.f370a;
        if (iVar != null) {
            iVar.b(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0218i iVar = this.f370a;
        if (iVar != null) {
            iVar.a(mode);
        }
    }

    public void setTextAppearance(Context context, int i2) {
        super.setTextAppearance(context, i2);
        C c2 = this.f371b;
        if (c2 != null) {
            c2.a(context, i2);
        }
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        if (Build.VERSION.SDK_INT < 28) {
            B b2 = this.f372c;
            if (b2 != null) {
                b2.a(textClassifier);
                return;
            }
        }
        super.setTextClassifier(textClassifier);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.editTextStyle);
    }

    public Editable getText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return super.getText();
        }
        return super.getEditableText();
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i2) {
        super(ma.b(context), attributeSet, i2);
        this.f370a = new C0218i(this);
        this.f370a.a(attributeSet, i2);
        this.f371b = new C(this);
        this.f371b.a(attributeSet, i2);
        this.f371b.a();
        this.f372c = new B(this);
    }
}
