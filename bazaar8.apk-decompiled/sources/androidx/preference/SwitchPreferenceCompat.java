package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import b.i.b.a.i;
import b.x.B;
import b.x.C;
import b.x.E;
import b.x.I;

public class SwitchPreferenceCompat extends TwoStatePreference {
    public final a S;
    public CharSequence T;
    public CharSequence U;

    private class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!SwitchPreferenceCompat.this.a((Object) Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                SwitchPreferenceCompat.this.d(z);
            }
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.S = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.SwitchPreferenceCompat, i2, i3);
        d((CharSequence) i.b(obtainStyledAttributes, I.SwitchPreferenceCompat_summaryOn, I.SwitchPreferenceCompat_android_summaryOn));
        c(i.b(obtainStyledAttributes, I.SwitchPreferenceCompat_summaryOff, I.SwitchPreferenceCompat_android_summaryOff));
        f(i.b(obtainStyledAttributes, I.SwitchPreferenceCompat_switchTextOn, I.SwitchPreferenceCompat_android_switchTextOn));
        e(i.b(obtainStyledAttributes, I.SwitchPreferenceCompat_switchTextOff, I.SwitchPreferenceCompat_android_switchTextOff));
        e(i.a(obtainStyledAttributes, I.SwitchPreferenceCompat_disableDependentsState, I.SwitchPreferenceCompat_android_disableDependentsState, false));
        obtainStyledAttributes.recycle();
    }

    public void a(B b2) {
        super.a(b2);
        c(b2.c(E.switchWidget));
        b(b2);
    }

    public final void c(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.P);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.T);
            switchCompat.setTextOff(this.U);
            switchCompat.setOnCheckedChangeListener(this.S);
        }
    }

    public final void d(View view) {
        if (((AccessibilityManager) h().getSystemService("accessibility")).isEnabled()) {
            c(view.findViewById(E.switchWidget));
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

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C.switchPreferenceCompatStyle);
    }
}
