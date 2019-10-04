package f.a.a.g.a;

import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;

/* compiled from: AddressPopup */
class i implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f14355a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ n f14356b;

    public i(n nVar, AppCompatEditText appCompatEditText) {
        this.f14356b = nVar;
        this.f14355a = appCompatEditText;
    }

    public void onClick(View view) {
        this.f14356b.f14368h.a(this.f14355a.getText().toString());
    }
}
