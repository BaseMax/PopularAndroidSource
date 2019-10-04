package f.a.a.e.b;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import f.a.a.e.g;

/* compiled from: SearchInflater */
class H implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageButton f14061a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f14062b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ g f14063c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ View f14064d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ L f14065e;

    public H(L l2, AppCompatImageButton appCompatImageButton, AppCompatEditText appCompatEditText, g gVar, View view) {
        this.f14065e = l2;
        this.f14061a = appCompatImageButton;
        this.f14062b = appCompatEditText;
        this.f14063c = gVar;
        this.f14064d = view;
    }

    public void afterTextChanged(Editable editable) {
        if (editable.toString().equals("")) {
            this.f14061a.setVisibility(4);
        } else {
            this.f14061a.setVisibility(0);
        }
        if (this.f14065e.f14078b != null) {
            this.f14065e.f14078b.a(this.f14062b.getText().toString());
            this.f14063c.f().v().a(this.f14065e.f14078b, this.f14064d);
        }
        this.f14062b.setSelectAllOnFocus(false);
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
