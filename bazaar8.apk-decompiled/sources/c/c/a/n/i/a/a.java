package c.c.a.n.i.a;

import c.c.a.d.f.r;
import com.farsitel.bazaar.core.widget.DialogButtonLayout;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.ui.changelog.dialog.ReleaseNoteDialog;

/* compiled from: ReleaseNoteDialog.kt */
public final class a implements DialogButtonLayout.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ReleaseNoteDialog f6423a;

    public a(ReleaseNoteDialog releaseNoteDialog) {
        this.f6423a = releaseNoteDialog;
    }

    public void a() {
        DialogButtonLayout.a.C0136a.c(this);
    }

    public void onCancel() {
        DialogButtonLayout.a.C0136a.a(this);
    }

    public void onCommit() {
        r Ra = this.f6423a.Ra();
        if (Ra != null) {
            Ra.a(None.INSTANCE);
        }
        this.f6423a.Ma();
    }
}
