package b.b.g;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.appcompat.widget.SearchView;

/* compiled from: SearchView */
class W implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SearchView f2138a;

    public W(SearchView searchView) {
        this.f2138a = searchView;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        this.f2138a.c(charSequence);
    }
}
