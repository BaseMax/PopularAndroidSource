package c.c.a.d.f.a.a;

import c.c.a.d.f.r;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.None;

/* compiled from: AlertDialog.kt */
public final class b implements DialogButtonLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f4790a;

    public b(a aVar) {
        this.f4790a = aVar;
    }

    public void a() {
        DialogButtonLayout.a.C0136a.c(this);
    }

    public void onCancel() {
        this.f4790a.La();
        r Ra = this.f4790a.Ra();
        if (Ra != null) {
            Ra.onCancel();
        }
    }

    public void onCommit() {
        this.f4790a.La();
        r Ra = this.f4790a.Ra();
        if (Ra != null) {
            Ra.a(None.INSTANCE);
        }
    }
}
