package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.ui.profile.ProfileCreditItem;

/* renamed from: c.c.a.f.db  reason: case insensitive filesystem */
/* compiled from: ItemProfileCreditBindingImpl */
public class C0413db extends C0409cb implements a.C0085a {
    public static final ViewDataBinding.b G = null;
    public static final SparseIntArray H = null;
    public final ConstraintLayout I;
    public final ProgressBar J;
    public final View.OnClickListener K;
    public final View.OnClickListener L;
    public long M;

    public C0413db(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, G, H));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ProfileCreditItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            ProfileCreditItem profileCreditItem = this.E;
            m mVar = this.F;
            if (mVar != null) {
                z = true;
            }
            if (z) {
                mVar.a(profileCreditItem);
            }
        } else if (i2 == 2) {
            ProfileCreditItem profileCreditItem2 = this.E;
            m mVar2 = this.F;
            if (mVar2 != null) {
                z = true;
            }
            if (z) {
                mVar2.a(profileCreditItem2);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        boolean z;
        String str;
        boolean z2;
        synchronized (this) {
            j2 = this.M;
            this.M = 0;
        }
        ProfileCreditItem profileCreditItem = this.E;
        m mVar = this.F;
        long j3 = 5 & j2;
        String str2 = null;
        boolean z3 = false;
        if (j3 != 0) {
            if (profileCreditItem != null) {
                str2 = profileCreditItem.a();
                str = profileCreditItem.d();
                z = profileCreditItem.e();
                z2 = profileCreditItem.b();
            } else {
                str = null;
                z2 = false;
                z = false;
            }
            if (!z2) {
                z3 = true;
            }
        } else {
            str = null;
            z2 = false;
            z = false;
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str2);
            b.a((View) this.A, str2);
            b.a((View) this.B, Boolean.valueOf(z3));
            b.a((View) this.J, Boolean.valueOf(z));
            b.a((View) this.C, Boolean.valueOf(z2));
            f.a((TextView) this.D, (CharSequence) str);
        }
        if ((j2 & 4) != 0) {
            this.B.setOnClickListener(this.L);
            this.C.setOnClickListener(this.K);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.M != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.M = 4;
        }
        k();
    }

    public C0413db(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[4], objArr[5], objArr[1]);
        this.M = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.I = objArr[0];
        this.I.setTag(null);
        this.J = objArr[3];
        this.J.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        b(view);
        this.K = new a(this, 2);
        this.L = new a(this, 1);
        l();
    }

    public void a(ProfileCreditItem profileCreditItem) {
        this.E = profileCreditItem;
        synchronized (this) {
            this.M |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.F = mVar;
        synchronized (this) {
            this.M |= 2;
        }
        a(41);
        super.k();
    }
}
