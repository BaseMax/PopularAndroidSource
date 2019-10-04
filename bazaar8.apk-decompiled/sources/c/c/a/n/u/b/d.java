package c.c.a.n.u.b;

import android.text.Editable;
import android.text.TextWatcher;

/* compiled from: PostCommentFragment.kt */
public final class d implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f6987a;

    public d(a aVar) {
        this.f6987a = aVar;
    }

    public void afterTextChanged(Editable editable) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        if (charSequence != null) {
            a aVar = this.f6987a;
            aVar.a(aVar.gb(), charSequence.toString());
        }
    }
}
