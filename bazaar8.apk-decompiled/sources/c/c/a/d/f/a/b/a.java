package c.c.a.d.f.a.b;

import android.app.Dialog;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import b.o.a.C0280d;
import b.o.a.C0290n;
import c.c.a.d.e;
import h.f.b.j;
import java.util.HashMap;

/* compiled from: ProgressDialog.kt */
public final class a extends C0280d {
    public final String ja = "ProgressDialog";
    public HashMap ka;

    public void Qa() {
        HashMap hashMap = this.ka;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public View a(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        j.b(layoutInflater, "inflater");
        View inflate = layoutInflater.inflate(e.dialog_progress, viewGroup, false);
        k(false);
        return inflate;
    }

    public void qa() {
        if (T()) {
            Dialog Na = Na();
            if (Na != null) {
                Na.setDismissMessage(null);
            }
        }
        super.qa();
        Qa();
    }

    public final void a(C0290n nVar) {
        j.b(nVar, "manager");
        try {
            if (!ea()) {
                super.a(nVar, this.ja);
            }
        } catch (RuntimeException unused) {
            Log.e(this.ja, "show() cannot perform after onSavedInstance");
        }
    }
}
