package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import b.x.B;
import b.x.C;
import b.x.E;

public class DropDownPreference extends ListPreference {
    public final Context Y;
    public final ArrayAdapter Z;
    public Spinner aa;
    public final AdapterView.OnItemSelectedListener ba;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C.dropdownPreferenceStyle);
    }

    public void A() {
        super.A();
        this.Z.notifyDataSetChanged();
    }

    public void D() {
        this.aa.performClick();
    }

    public ArrayAdapter W() {
        return new ArrayAdapter(this.Y, 17367049);
    }

    public final void X() {
        this.Z.clear();
        if (R() != null) {
            for (CharSequence charSequence : R()) {
                this.Z.add(charSequence.toString());
            }
        }
    }

    public void a(B b2) {
        this.aa = (Spinner) b2.f891b.findViewById(E.spinner);
        this.aa.setAdapter(this.Z);
        this.aa.setOnItemSelectedListener(this.ba);
        this.aa.setSelection(f(U()));
        super.a(b2);
    }

    public int f(String str) {
        CharSequence[] T = T();
        if (!(str == null || T == null)) {
            for (int length = T.length - 1; length >= 0; length--) {
                if (T[length].equals(str)) {
                    return length;
                }
            }
        }
        return -1;
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.ba = new C0320c(this);
        this.Y = context;
        this.Z = W();
        X();
    }
}
