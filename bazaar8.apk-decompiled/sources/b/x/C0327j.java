package b.x;

import android.content.DialogInterface;

/* renamed from: b.x.j  reason: case insensitive filesystem */
/* compiled from: MultiSelectListPreferenceDialogFragmentCompat */
class C0327j implements DialogInterface.OnMultiChoiceClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0328k f3362a;

    public C0327j(C0328k kVar) {
        this.f3362a = kVar;
    }

    public void onClick(DialogInterface dialogInterface, int i2, boolean z) {
        if (z) {
            C0328k kVar = this.f3362a;
            kVar.sa = kVar.ra.add(kVar.ua[i2].toString()) | kVar.sa;
            return;
        }
        C0328k kVar2 = this.f3362a;
        kVar2.sa = kVar2.ra.remove(kVar2.ua[i2].toString()) | kVar2.sa;
    }
}
