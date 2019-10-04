package f.a.a.g.a;

import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;

/* compiled from: AddressPopup */
class l implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f14359a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ n f14360b;

    public l(n nVar, AppCompatEditText appCompatEditText) {
        this.f14360b = nVar;
        this.f14359a = appCompatEditText;
    }

    public void onClick(View view) {
        this.f14360b.f14368h.b(this.f14359a.getText().toString());
    }
}
