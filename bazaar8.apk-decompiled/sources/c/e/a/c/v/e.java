package c.e.a.c.v;

import android.text.Editable;
import android.text.TextWatcher;
import com.google.android.material.textfield.TextInputLayout;

/* compiled from: TextInputLayout */
class e implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f11487a;

    public e(TextInputLayout textInputLayout) {
        this.f11487a = textInputLayout;
    }

    public void afterTextChanged(Editable editable) {
        TextInputLayout textInputLayout = this.f11487a;
        textInputLayout.d(!textInputLayout.fa);
        TextInputLayout textInputLayout2 = this.f11487a;
        if (textInputLayout2.f13458e) {
            textInputLayout2.a(editable.length());
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
