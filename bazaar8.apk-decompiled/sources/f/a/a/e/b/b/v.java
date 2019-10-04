package f.a.a.e.b.b;

import android.text.Editable;
import android.text.TextWatcher;
import ir.cafebazaar.inline.ui.inflaters.inputs.EditTextInflater;
import ir.cafebazaar.inline.ui.inflaters.inputs.views.FormattableEditText;

/* compiled from: EditTextInflater */
class v implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ FormattableEditText f14207a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ EditTextInflater f14208b;

    public v(EditTextInflater editTextInflater, FormattableEditText formattableEditText) {
        this.f14208b = editTextInflater;
        this.f14207a = formattableEditText;
    }

    public void afterTextChanged(Editable editable) {
        if (!this.f14207a.getText().equals(this.f14208b.f15033i)) {
            this.f14207a.setSelectAllOnFocus(false);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
