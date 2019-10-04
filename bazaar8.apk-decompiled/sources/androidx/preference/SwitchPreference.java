package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import b.i.b.a.i;
import b.x.B;
import b.x.C;
import b.x.I;

public class SwitchPreference extends TwoStatePreference {
    public final a S;
    public CharSequence T;
    public CharSequence U;

    private class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SwitchPreference.this.a((Object) Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                SwitchPreference.this.d(z);
            }
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.S = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.SwitchPreference, i2, i3);
        d((CharSequence) i.b(obtainStyledAttributes, I.SwitchPreference_summaryOn, I.SwitchPreference_android_summaryOn));
        c(i.b(obtainStyledAttributes, I.SwitchPreference_summaryOff, I.SwitchPreference_android_summaryOff));
        f(i.b(obtainStyledAttributes, I.SwitchPreference_switchTextOn, I.SwitchPreference_android_switchTextOn));
        e(i.b(obtainStyledAttributes, I.SwitchPreference_switchTextOff, I.SwitchPreference_android_switchTextOff));
        e(i.a(obtainStyledAttributes, I.SwitchPreference_disableDependentsState, I.SwitchPreference_android_disableDependentsState, false));
        obtainStyledAttributes.recycle();
    }

    public void a(B b2) {
        super.a(b2);
        c(b2.c(16908352));
        b(b2);
    }

    public final void c(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.P);
        }
        if (z) {
            Switch switchR = (Switch) view;
            switchR.setTextOn(this.T);
            switchR.setTextOff(this.U);
            switchR.setOnCheckedChangeListener(this.S);
        }
    }

    public final void d(View view) {
        if (((AccessibilityManager) h().getSystemService("accessibility")).isEnabled()) {
            c(view.findViewById(16908352));
            b(view.findViewById(16908304));
        }
    }

    public void e(CharSequence charSequence) {
        this.U = charSequence;
        A();
    }

    public void f(CharSequence charSequence) {
        this.T = charSequence;
        A();
    }

    public void a(View view) {
        super.a(view);
        d(view);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.switchPreferenceStyle, 16843629));
    }
}
