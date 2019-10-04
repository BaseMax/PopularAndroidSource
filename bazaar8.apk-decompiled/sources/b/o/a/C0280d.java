package b.o.a;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;

/* renamed from: b.o.a.d  reason: case insensitive filesystem */
/* compiled from: DialogFragment */
public class C0280d extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public Handler Y;
    public Runnable Z = new C0279c(this);
    public int aa = 0;
    public int ba = 0;
    public boolean ca = true;
    public boolean da = true;
    public int ea = -1;
    public Dialog fa;
    public boolean ga;
    public boolean ha;
    public boolean ia;

    public void La() {
        a(false, false);
    }

    public void Ma() {
        a(true, false);
    }

    public Dialog Na() {
        return this.fa;
    }

    public int Oa() {
        return this.ba;
    }

    public final Dialog Pa() {
        Dialog Na = Na();
        if (Na != null) {
            return Na;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void a(C0290n nVar, String str) {
        this.ha = false;
        this.ia = true;
        C a2 = nVar.a();
        a2.a((Fragment) this, str);
        a2.a();
    }

    public void b(int i2, int i3) {
        this.aa = i2;
        int i4 = this.aa;
        if (i4 == 2 || i4 == 3) {
            this.ba = 16973913;
        }
        if (i3 != 0) {
            this.ba = i3;
        }
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        this.Y = new Handler();
        this.da = this.x == 0;
        if (bundle != null) {
            this.aa = bundle.getInt("android:style", 0);
            this.ba = bundle.getInt("android:theme", 0);
            this.ca = bundle.getBoolean("android:cancelable", true);
            this.da = bundle.getBoolean("android:showsDialog", this.da);
            this.ea = bundle.getInt("android:backStackId", -1);
        }
    }

    public LayoutInflater d(Bundle bundle) {
        if (!this.da) {
            return super.d(bundle);
        }
        this.fa = n(bundle);
        Dialog dialog = this.fa;
        if (dialog == null) {
            return (LayoutInflater) this.t.f().getSystemService("layout_inflater");
        }
        a(dialog, this.aa);
        return (LayoutInflater) this.fa.getContext().getSystemService("layout_inflater");
    }

    public void e(Bundle bundle) {
        super.e(bundle);
        Dialog dialog = this.fa;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            if (onSaveInstanceState != null) {
                bundle.putBundle("android:savedDialogState", onSaveInstanceState);
            }
        }
        int i2 = this.aa;
        if (i2 != 0) {
            bundle.putInt("android:style", i2);
        }
        int i3 = this.ba;
        if (i3 != 0) {
            bundle.putInt("android:theme", i3);
        }
        boolean z = this.ca;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.da;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i4 = this.ea;
        if (i4 != -1) {
            bundle.putInt("android:backStackId", i4);
        }
    }

    public void k(boolean z) {
        this.ca = z;
        Dialog dialog = this.fa;
        if (dialog != null) {
            dialog.setCancelable(z);
        }
    }

    public void l(boolean z) {
        this.da = z;
    }

    public Dialog n(Bundle bundle) {
        return new Dialog(Ha(), Oa());
    }

    public void onCancel(DialogInterface dialogInterface) {
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.ga) {
            a(true, true);
        }
    }

    public void qa() {
        super.qa();
        Dialog dialog = this.fa;
        if (dialog != null) {
            this.ga = true;
            dialog.setOnDismissListener(null);
            this.fa.dismiss();
            if (!this.ha) {
                onDismiss(this.fa);
            }
            this.fa = null;
        }
    }

    public void ra() {
        super.ra();
        if (!this.ia && !this.ha) {
            this.ha = true;
        }
    }

    public void ua() {
        super.ua();
        Dialog dialog = this.fa;
        if (dialog != null) {
            this.ga = false;
            dialog.show();
        }
    }

    public void va() {
        super.va();
        Dialog dialog = this.fa;
        if (dialog != null) {
            dialog.hide();
        }
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        if (this.da) {
            View aa2 = aa();
            if (aa2 != null) {
                if (aa2.getParent() == null) {
                    this.fa.setContentView(aa2);
                } else {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
            }
            C0285i x = x();
            if (x != null) {
                this.fa.setOwnerActivity(x);
            }
            this.fa.setCancelable(this.ca);
            this.fa.setOnCancelListener(this);
            this.fa.setOnDismissListener(this);
            if (bundle != null) {
                Bundle bundle2 = bundle.getBundle("android:savedDialogState");
                if (bundle2 != null) {
                    this.fa.onRestoreInstanceState(bundle2);
                }
            }
        }
    }

    public void a(boolean z, boolean z2) {
        if (!this.ha) {
            this.ha = true;
            this.ia = false;
            Dialog dialog = this.fa;
            if (dialog != null) {
                dialog.setOnDismissListener(null);
                this.fa.dismiss();
                if (!z2) {
                    if (Looper.myLooper() == this.Y.getLooper()) {
                        onDismiss(this.fa);
                    } else {
                        this.Y.post(this.Z);
                    }
                }
            }
            this.ga = true;
            if (this.ea >= 0) {
                Ia().a(this.ea, 1);
                this.ea = -1;
            } else {
                C a2 = Ia().a();
                a2.c(this);
                if (z) {
                    a2.b();
                } else {
                    a2.a();
                }
            }
        }
    }

    public void a(Context context) {
        super.a(context);
        if (!this.ia) {
            this.ha = false;
        }
    }

    public void a(Dialog dialog, int i2) {
        if (!(i2 == 1 || i2 == 2)) {
            if (i2 == 3) {
                dialog.getWindow().addFlags(24);
            } else {
                return;
            }
        }
        dialog.requestWindowFeature(1);
    }
}
