package c.c.a.d.f;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.RelativeLayout;
import b.o.a.C0290n;
import b.r.F;
import c.c.a.c.c.a;
import d.a.a.d;
import h.f.b.j;

/* compiled from: BaseDialogFragment.kt */
public abstract class l<T> extends d {
    public F.b ka;
    public Dialog la;
    public r<T> ma;
    public Integer na;
    public boolean oa;
    public int pa = -1;
    public boolean qa = true;
    public q ra;

    public abstract void Qa();

    public final r<T> Ra() {
        return this.ma;
    }

    public abstract String Sa();

    public int Ta() {
        return this.pa;
    }

    public q Ua() {
        return this.ra;
    }

    public Integer Va() {
        return this.na;
    }

    public final F.b Wa() {
        F.b bVar = this.ka;
        if (bVar != null) {
            return bVar;
        }
        j.c("viewModelFactory");
        throw null;
    }

    public boolean Xa() {
        return this.qa;
    }

    public boolean Ya() {
        return this.oa;
    }

    public final void a(r<T> rVar) {
        this.ma = rVar;
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        Integer Va = Va();
        if (Va != null) {
            int intValue = Va.intValue();
            Dialog Na = Na();
            if (Na != null) {
                j.a((Object) Na, "dialog!!");
                Window window = Na.getWindow();
                if (window != null) {
                    window.getAttributes().windowAnimations = intValue;
                } else {
                    j.a();
                    throw null;
                }
            } else {
                j.a();
                throw null;
            }
        }
    }

    public Dialog n(Bundle bundle) {
        if (Ya()) {
            RelativeLayout relativeLayout = new RelativeLayout(E());
            relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
            Dialog n = super.n(bundle);
            n.requestWindowFeature(1);
            n.setContentView(relativeLayout);
            Window window = n.getWindow();
            if (window != null) {
                window.setLayout(-1, -1);
            }
            j.a((Object) n, "super.onCreateDialog(sav…TCH_PARENT)\n            }");
            this.la = n;
        } else {
            Dialog n2 = super.n(bundle);
            j.a((Object) n2, "super.onCreateDialog(savedInstanceState)");
            this.la = n2;
        }
        Dialog dialog = this.la;
        if (dialog != null) {
            Window window2 = dialog.getWindow();
            if (window2 != null) {
                window2.setBackgroundDrawable(new ColorDrawable(Ta()));
            }
            if (!Xa()) {
                k(false);
                Dialog dialog2 = this.la;
                if (dialog2 != null) {
                    dialog2.setCanceledOnTouchOutside(false);
                } else {
                    j.c("dialogInstance");
                    throw null;
                }
            }
            q Ua = Ua();
            if (Ua != null) {
                Dialog dialog3 = this.la;
                if (dialog3 != null) {
                    dialog3.setOnKeyListener(new k(Ua));
                } else {
                    j.c("dialogInstance");
                    throw null;
                }
            }
            Dialog dialog4 = this.la;
            if (dialog4 != null) {
                return dialog4;
            }
            j.c("dialogInstance");
            throw null;
        }
        j.c("dialogInstance");
        throw null;
    }

    public void onCancel(DialogInterface dialogInterface) {
        j.b(dialogInterface, "dialog");
        super.onCancel(dialogInterface);
        r<T> rVar = this.ma;
        if (rVar != null) {
            rVar.onCancel();
        }
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
                super.a(nVar, Sa());
            }
        } catch (RuntimeException unused) {
            a.f4699b.a(new Throwable("show() cannot perform after onSavedInstance"));
        }
    }
}
