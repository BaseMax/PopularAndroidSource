package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.cinema.SeriesSeason;
import com.farsitel.bazaar.common.model.cinema.SeriesSeasonsItem;
import java.util.List;

/* compiled from: ItemVideoDetailSeriesSeasonItemBindingImpl */
public class Zb extends Yb implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = null;
    public final LinearLayout G;
    public final View.OnClickListener H;
    public long I;

    public Zb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((SeriesSeasonsItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        SeriesSeasonsItem seriesSeasonsItem = this.C;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(seriesSeasonsItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        List<SeriesSeason> list;
        synchronized (this) {
            j2 = this.I;
            this.I = 0;
        }
        SeriesSeasonsItem seriesSeasonsItem = this.C;
        int i2 = 0;
        m mVar = this.D;
        long j3 = 5 & j2;
        String str = null;
        if (j3 != 0) {
            if (seriesSeasonsItem != null) {
                i2 = seriesSeasonsItem.getSelectedSeasonPosition();
                list = seriesSeasonsItem.getItems();
            } else {
                list = null;
            }
            SeriesSeason seriesSeason = list != null ? (SeriesSeason) ViewDataBinding.a(list, i2) : null;
            if (seriesSeason != null) {
                str = seriesSeason.getTitle();
            }
        }
        if (j3 != 0) {
            f.a((TextView) this.A, (CharSequence) str);
        }
        if ((j2 & 4) != 0) {
            this.B.setOnClickListener(this.H);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.I != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.I = 4;
        }
        k();
    }

    public Zb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.I = -1;
        this.G = objArr[0];
        this.G.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(SeriesSeasonsItem seriesSeasonsItem) {
        this.C = seriesSeasonsItem;
        synchronized (this) {
            this.I |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
        synchronized (this) {
            this.I |= 2;
        }
        a(41);
        super.k();
    }
}
