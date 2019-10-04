package c.c.a.d.f;

import android.content.DialogInterface;
import android.view.KeyEvent;

/* compiled from: BaseDialogFragment.kt */
final class k implements DialogInterface.OnKeyListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ q f4792a;

    public k(q qVar) {
        this.f4792a = qVar;
    }

    public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return false;
        }
        this.f4792a.m();
        return true;
    }
}
