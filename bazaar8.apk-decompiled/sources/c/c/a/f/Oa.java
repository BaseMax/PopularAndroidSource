package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.b.c;
import c.c.a.j.a.a;
import c.c.a.n.q.g;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.ui.malicious.MaliciousAppHeaderItem;

/* compiled from: ItemMaliciousHeaderBindingImpl */
public class Oa extends Na implements a.C0085a {
    public static final ViewDataBinding.b H = null;
    public static final SparseIntArray I = new SparseIntArray();
    public final ConstraintLayout J;
    public final View.OnClickListener K;
    public long L;

    static {
        I.put(R.id.ivBazaarShield, 3);
        I.put(R.id.tvShieldDesc, 4);
        I.put(R.id.divider, 5);
    }

    public Oa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, H, I));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((MaliciousAppHeaderItem) obj);
        } else if (28 != i2) {
            return false;
        } else {
            a((g) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        g gVar = this.G;
        if (gVar != null) {
            gVar.a();
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.L;
            this.L = 0;
        }
        MaliciousAppHeaderItem maliciousAppHeaderItem = this.F;
        g gVar = this.G;
        int i2 = 0;
        long j3 = 5 & j2;
        if (!(j3 == 0 || maliciousAppHeaderItem == null)) {
            i2 = maliciousAppHeaderItem.a();
        }
        if ((j2 & 4) != 0) {
            this.C.setOnClickListener(this.K);
        }
        if (j3 != 0) {
            c.a((AppCompatTextView) this.E, i2);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.L != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.L = 4;
        }
        k();
    }

    public Oa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[3], objArr[2], objArr[4], objArr[1]);
        this.L = -1;
        this.J = objArr[0];
        this.J.setTag(null);
        this.C.setTag(null);
        this.E.setTag(null);
        b(view);
        this.K = new a(this, 1);
        l();
    }

    public void a(MaliciousAppHeaderItem maliciousAppHeaderItem) {
        this.F = maliciousAppHeaderItem;
        synchronized (this) {
            this.L |= 1;
        }
        a(45);
        super.k();
    }

    public void a(g gVar) {
        this.G = gVar;
        synchronized (this) {
            this.L |= 2;
        }
        a(28);
        super.k();
    }
}
