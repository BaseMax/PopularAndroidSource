package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.b.d.f;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.DeveloperInfoSectionItem;

/* compiled from: ItemAppDetailDeveloperInfoBindingImpl */
public class B extends A implements a.C0085a {
    public static final ViewDataBinding.b P = null;
    public static final SparseIntArray Q = new SparseIntArray();
    public final ConstraintLayout R;
    public final Group S;
    public final Group T;
    public final Group U;
    public final View.OnClickListener V;
    public final View.OnClickListener W;
    public final View.OnClickListener X;
    public long Y;

    static {
        Q.put(R.id.developerInfoTitle, 10);
        Q.put(R.id.developerInfoEmailTitle, 11);
        Q.put(R.id.developerEmailDivider, 12);
        Q.put(R.id.developerInfoWebTitle, 13);
        Q.put(R.id.developerWebDivider, 14);
        Q.put(R.id.developerInfoTelTitle, 15);
        Q.put(R.id.developerTelDivider, 16);
    }

    public B(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 17, P, Q));
    }

    public boolean a(int i2, Object obj) {
        if (31 == i2) {
            a((f) obj);
        } else if (45 != i2) {
            return false;
        } else {
            a((DeveloperInfoSectionItem) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            DeveloperInfoSectionItem developerInfoSectionItem = this.O;
            f fVar = this.N;
            if (fVar != null) {
                if (developerInfoSectionItem != null) {
                    z = true;
                }
                if (z) {
                    fVar.a(developerInfoSectionItem.getAppEmail());
                }
            }
        } else if (i2 == 2) {
            DeveloperInfoSectionItem developerInfoSectionItem2 = this.O;
            f fVar2 = this.N;
            if (fVar2 != null) {
                if (developerInfoSectionItem2 != null) {
                    z = true;
                }
                if (z) {
                    fVar2.b(developerInfoSectionItem2.getHomepage());
                }
            }
        } else if (i2 == 3) {
            DeveloperInfoSectionItem developerInfoSectionItem3 = this.O;
            f fVar3 = this.N;
            if (fVar3 != null) {
                if (developerInfoSectionItem3 != null) {
                    z = true;
                }
                if (z) {
                    fVar3.c(developerInfoSectionItem3.getAppPhone());
                }
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        synchronized (this) {
            j2 = this.Y;
            this.Y = 0;
        }
        f fVar = this.N;
        DeveloperInfoSectionItem developerInfoSectionItem = this.O;
        long j3 = 6 & j2;
        String str3 = null;
        if (j3 == 0 || developerInfoSectionItem == null) {
            str2 = null;
            str = null;
        } else {
            str3 = developerInfoSectionItem.getAppPhone();
            str = developerInfoSectionItem.getHomepage();
            str2 = developerInfoSectionItem.getAppEmail();
        }
        if (j3 != 0) {
            b.l.a.f.a((TextView) this.B, (CharSequence) str2);
            b.l.a.f.a((TextView) this.D, (CharSequence) str3);
            b.l.a.f.a((TextView) this.G, (CharSequence) str);
            b.a((View) this.S, str2);
            b.a((View) this.T, str);
            b.a((View) this.U, str3);
        }
        if ((j2 & 4) != 0) {
            this.K.setOnClickListener(this.W);
            this.L.setOnClickListener(this.V);
            this.M.setOnClickListener(this.X);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.Y != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.Y = 4;
        }
        k();
    }

    public B(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[12], objArr[1], objArr[11], objArr[3], objArr[15], objArr[10], objArr[2], objArr[13], objArr[16], objArr[14], objArr[7], objArr[9], objArr[8]);
        this.Y = -1;
        this.B.setTag(null);
        this.D.setTag(null);
        this.G.setTag(null);
        this.K.setTag(null);
        this.R = objArr[0];
        this.R.setTag(null);
        this.S = objArr[4];
        this.S.setTag(null);
        this.T = objArr[5];
        this.T.setTag(null);
        this.U = objArr[6];
        this.U.setTag(null);
        this.L.setTag(null);
        this.M.setTag(null);
        b(view);
        this.V = new a(this, 3);
        this.W = new a(this, 1);
        this.X = new a(this, 2);
        l();
    }

    public void a(f fVar) {
        this.N = fVar;
        synchronized (this) {
            this.Y |= 1;
        }
        a(31);
        super.k();
    }

    public void a(DeveloperInfoSectionItem developerInfoSectionItem) {
        this.O = developerInfoSectionItem;
        synchronized (this) {
            this.Y |= 2;
        }
        a(45);
        super.k();
    }
}
