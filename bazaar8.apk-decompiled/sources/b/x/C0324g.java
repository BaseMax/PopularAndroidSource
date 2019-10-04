package b.x;

import android.content.DialogInterface;

/* renamed from: b.x.g  reason: case insensitive filesystem */
/* compiled from: ListPreferenceDialogFragmentCompat */
class C0324g implements DialogInterface.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0325h f3361a;

    public C0324g(C0325h hVar) {
        this.f3361a = hVar;
    }

    public void onClick(DialogInterface dialogInterface, int i2) {
        C0325h hVar = this.f3361a;
        hVar.ra = i2;
        hVar.onClick(dialogInterface, -1);
        dialogInterface.dismiss();
    }
}
