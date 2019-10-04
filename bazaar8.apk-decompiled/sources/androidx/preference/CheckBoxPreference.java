package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import b.i.b.a.i;
import b.x.B;
import b.x.C;
import b.x.I;

public class CheckBoxPreference extends TwoStatePreference {
    public final a S;

    private class a implements CompoundButton.OnCheckedChangeListener {
        public a() {
        }

        public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
            if (!CheckBoxPreference.this.a((Object) Boolean.valueOf(z))) {
                compoundButton.setChecked(!z);
            } else {
                CheckBoxPreference.this.d(z);
            }
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public void a(B b2) {
        super.a(b2);
        c(b2.c(16908289));
        b(b2);
    }

    public final void c(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.P);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.S);
        }
    }

    public final void d(View view) {
        if (((AccessibilityManager) h().getSystemService("accessibility")).isEnabled()) {
            c(view.findViewById(16908289));
            b(view.findViewById(16908304));
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.S = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, I.CheckBoxPreference, i2, i3);
        d((CharSequence) i.b(obtainStyledAttributes, I.CheckBoxPreference_summaryOn, I.CheckBoxPreference_android_summaryOn));
        c(i.b(obtainStyledAttributes, I.CheckBoxPreference_summaryOff, I.CheckBoxPreference_android_summaryOff));
        e(i.a(obtainStyledAttributes, I.CheckBoxPreference_disableDependentsState, I.CheckBoxPreference_android_disableDependentsState, false));
        obtainStyledAttributes.recycle();
    }

    public void a(View view) {
        super.a(view);
        d(view);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, C.checkBoxPreferenceStyle, 16842895));
    }
}
