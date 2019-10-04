package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RatingBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.e;
import c.c.a.j.a.a;
import c.c.a.j.a.c;
import c.c.a.n.b.d.i;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppMyRateItem;

/* compiled from: ItemAppdetailMyRateBindingImpl */
public class S extends Q implements c.a, a.C0085a {
    public static final ViewDataBinding.b G = null;
    public static final SparseIntArray H = new SparseIntArray();
    public final ConstraintLayout I;
    public final RatingBar.OnRatingBarChangeListener J;
    public final View.OnClickListener K;
    public long L;

    static {
        H.put(R.id.myRateTtile, 3);
    }

    public S(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, G, H));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((AppMyRateItem) obj);
        } else if (18 == i2) {
            a((i) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        AppMyRateItem appMyRateItem = this.D;
        m mVar = this.E;
        if (mVar != null) {
            mVar.a(appMyRateItem);
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
        AppMyRateItem appMyRateItem = this.D;
        i iVar = this.F;
        int i2 = 0;
        m mVar = this.E;
        long j3 = 9 & j2;
        if (!(j3 == 0 || appMyRateItem == null)) {
            i2 = appMyRateItem.getMyRate();
        }
        if ((j2 & 8) != 0) {
            this.A.setOnClickListener(this.K);
            e.a(this.C, this.J, null);
        }
        if (j3 != 0) {
            e.a(this.C, (float) i2);
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
            this.L = 8;
        }
        k();
    }

    public S(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[3], objArr[1]);
        this.L = -1;
        this.A.setTag(null);
        this.I = objArr[0];
        this.I.setTag(null);
        this.C.setTag(null);
        b(view);
        this.J = new c(this, 1);
        this.K = new a(this, 2);
        l();
    }

    public void a(AppMyRateItem appMyRateItem) {
        this.D = appMyRateItem;
        synchronized (this) {
            this.L |= 1;
        }
        a(45);
        super.k();
    }

    public void a(i iVar) {
        this.F = iVar;
        synchronized (this) {
            this.L |= 2;
        }
        a(18);
        super.k();
    }

    public void a(m mVar) {
        this.E = mVar;
        synchronized (this) {
            this.L |= 4;
        }
        a(41);
        super.k();
    }

    public final void a(int i2, RatingBar ratingBar, float f2, boolean z) {
        i iVar = this.F;
        if (iVar != null) {
            iVar.a(f2, z);
        }
    }
}
