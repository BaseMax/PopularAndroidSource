package b.o.a;

import android.app.Dialog;

/* renamed from: b.o.a.c  reason: case insensitive filesystem */
/* compiled from: DialogFragment */
class C0279c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C0280d f3060a;

    public C0279c(C0280d dVar) {
        this.f3060a = dVar;
    }

    public void run() {
        C0280d dVar = this.f3060a;
        Dialog dialog = dVar.fa;
        if (dialog != null) {
            dVar.onDismiss(dialog);
        }
    }
}
