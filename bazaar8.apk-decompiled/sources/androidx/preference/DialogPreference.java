package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import b.i.b.a.i;
import b.x.C;
import b.x.I;

public abstract class DialogPreference extends Preference {
    public CharSequence N;
    public CharSequence O;
    public Drawable P;
    public CharSequence Q;
    public CharSequence R;
    public int S;

    public interface a {
        Preference a(CharSequence charSequence);
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.DialogPreference, i2, i3);
        this.N = i.b(obtainStyledAttributes, I.DialogPreference_dialogTitle, I.DialogPreference_android_dialogTitle);
        if (this.N == null) {
            this.N = t();
        }
        this.O = i.b(obtainStyledAttributes, I.DialogPreference_dialogMessage, I.DialogPreference_android_dialogMessage);
        this.P = i.a(obtainStyledAttributes, I.DialogPreference_dialogIcon, I.DialogPreference_android_dialogIcon);
        this.Q = i.b(obtainStyledAttributes, I.DialogPreference_positiveButtonText, I.DialogPreference_android_positiveButtonText);
        this.R = i.b(obtainStyledAttributes, I.DialogPreference_negativeButtonText, I.DialogPreference_android_negativeButtonText);
        this.S = i.b(obtainStyledAttributes, I.DialogPreference_dialogLayout, I.DialogPreference_android_dialogLayout, 0);
        obtainStyledAttributes.recycle();
    }

    public void D() {
        q().a((Preference) this);
    }

    public Drawable L() {
        return this.P;
    }

    public int M() {
        return this.S;
    }

    public CharSequence N() {
        return this.O;
    }

    public CharSequence O() {
        return this.N;
    }

    public CharSequence P() {
        return this.R;
    }

    public CharSequence Q() {
        return this.Q;
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.dialogPreferenceStyle, 16842897));
    }
}
