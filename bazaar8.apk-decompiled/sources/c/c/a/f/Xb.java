package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;

/* compiled from: ItemVideoDetailSeasonListItemBindingImpl */
public class Xb extends Wb implements a.C0085a {
    public static final ViewDataBinding.b G = null;
    public static final SparseIntArray H = new SparseIntArray();
    public final ConstraintLayout I;
    public final View.OnClickListener J;
    public long K;

    static {
        H.put(R.id.divider, 3);
    }

    public Xb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, G, H));
    }

    public boolean a(int i2, Object obj) {
        if (30 == i2) {
            b((Integer) obj);
        } else if (45 == i2) {
            a((SeriesSeason) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.E = num;
        synchronized (this) {
            this.K |= 1;
        }
        a(30);
        super.k();
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.K;
            this.K = 0;
        }
        Integer num = this.E;
        SeriesSeason seriesSeason = this.D;
        String str = null;
        m mVar = this.F;
        long j3 = 11 & j2;
        boolean z = false;
        if (j3 != 0) {
            if ((seriesSeason != null ? seriesSeason.getIndex() : 0) == ViewDataBinding.a(num)) {
                z = true;
            }
            if (!((j2 & 10) == 0 || seriesSeason == null)) {
                str = seriesSeason.getTitle();
            }
        }
        if ((8 & j2) != 0) {
            this.I.setOnClickListener(this.J);
        }
        if (j3 != 0) {
            b.a((View) this.B, Boolean.valueOf(z));
        }
        if ((j2 & 10) != 0) {
            f.a((TextView) this.C, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.K != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.K = 8;
        }
        k();
    }

    public Xb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[3], objArr[2], objArr[1]);
        this.K = -1;
        this.I = objArr[0];
        this.I.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        b(view);
        this.J = new a(this, 1);
        l();
    }

    public void a(SeriesSeason seriesSeason) {
        this.D = seriesSeason;
        synchronized (this) {
            this.K |= 2;
        }
        a(45);
        super.k();
    }

    public final void b(int i2, View view) {
        SeriesSeason seriesSeason = this.D;
        m mVar = this.F;
        if (mVar != null) {
            mVar.a(seriesSeason);
        }
    }

    public void a(m mVar) {
        this.F = mVar;
        synchronized (this) {
            this.K |= 4;
        }
        a(41);
        super.k();
    }
}
