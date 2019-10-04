package c.c.a.n.t.b;

import androidx.appcompat.widget.AppCompatEditText;
import c.c.a.d.f.r;
import c.c.a.e;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import h.f.b.j;

/* compiled from: ChangePhoneNumberDialog.kt */
public final class a implements DialogButtonLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ b f6943a;

    public a(b bVar) {
        this.f6943a = bVar;
    }

    public void a() {
        r Ra = this.f6943a.Ra();
        if (Ra != null) {
            Ra.a();
        }
    }

    public void onCancel() {
        r Ra = this.f6943a.Ra();
        if (Ra != null) {
            Ra.onCancel();
        }
        this.f6943a.La();
    }

    public void onCommit() {
        b bVar = this.f6943a;
        AppCompatEditText appCompatEditText = (AppCompatEditText) bVar.e(e.phoneNumberEditText);
        j.a((Object) appCompatEditText, "phoneNumberEditText");
        bVar.ua = String.valueOf(appCompatEditText.getText());
        b.b(this.f6943a).a(b.a(this.f6943a));
    }
}
