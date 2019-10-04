package f.a.a.e.b;

import android.text.Editable;
import android.text.TextWatcher;
import androidx.appcompat.widget.AppCompatImageButton;

/* compiled from: SearchHeaderInflater */
class E implements TextWatcher {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageButton f14055a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AppCompatImageButton f14056b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ G f14057c;

    public E(G g2, AppCompatImageButton appCompatImageButton, AppCompatImageButton appCompatImageButton2) {
        this.f14057c = g2;
        this.f14055a = appCompatImageButton;
        this.f14056b = appCompatImageButton2;
    }

    public void afterTextChanged(Editable editable) {
        this.f14055a.setVisibility(8);
        this.f14056b.setVisibility(0);
    }

    public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }

    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
    }
}
