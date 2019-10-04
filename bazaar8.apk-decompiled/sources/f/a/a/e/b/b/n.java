package f.a.a.e.b.b;

import android.text.Editable;
import android.text.TextWatcher;
import f.a.a.e.b.b.o;

/* compiled from: ChoicesPopup */
class n implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ o.a f14179a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ o f14180b;

    public n(o oVar, o.a aVar) {
        this.f14180b = oVar;
        this.f14179a = aVar;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        this.f14179a.a(charSequence.toString());
    }
}
