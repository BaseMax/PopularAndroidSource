package c.c.a.d.b;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;

/* compiled from: ButtonExt.kt */
public final class b implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f4751a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ h.f.a.b f4752b;

    public b(View view, h.f.a.b bVar) {
        this.f4751a = view;
        this.f4752b = bVar;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        this.f4751a.setEnabled(((Boolean) this.f4752b.a(charSequence)).booleanValue());
    }
}
