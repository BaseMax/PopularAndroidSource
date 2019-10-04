package f.a.a.e.b;

import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import f.a.a.e.g;

/* compiled from: SearchInflater */
class I implements TextView.OnEditorActionListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppCompatEditText f14066a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ g f14067b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ View f14068c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ L f14069d;

    public I(L l2, AppCompatEditText appCompatEditText, g gVar, View view) {
        this.f14069d = l2;
        this.f14066a = appCompatEditText;
        this.f14067b = gVar;
        this.f14068c = view;
    }

    public boolean onEditorAction(TextView textView, int i2, KeyEvent keyEvent) {
        if (i2 != 3) {
            return false;
        }
        this.f14069d.f14079c.a(this.f14066a.getText().toString());
        this.f14067b.f().v().a(this.f14069d.f14079c, this.f14068c);
        return true;
    }
}
