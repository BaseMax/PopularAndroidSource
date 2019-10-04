package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.ReportItem;

/* compiled from: ItemAppdetailReportBindingImpl */
public class W extends V implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = new SparseIntArray();
    public final LinearLayout G;
    public final View.OnClickListener H;
    public long I;

    static {
        F.put(R.id.imageView, 1);
        F.put(R.id.textView, 2);
    }

    public W(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ReportItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        ReportItem reportItem = this.C;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(reportItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.I;
            this.I = 0;
        }
        ReportItem reportItem = this.C;
        m mVar = this.D;
        if ((j2 & 4) != 0) {
            this.G.setOnClickListener(this.H);
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

    public W(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.I = -1;
        this.G = objArr[0];
        this.G.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(ReportItem reportItem) {
        this.C = reportItem;
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
