package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.ChangeLogItem;

/* compiled from: ItemAppdetailChangelogBindingImpl */
public class H extends G implements a.C0085a {
    public static final ViewDataBinding.b F = null;
    public static final SparseIntArray G = new SparseIntArray();
    public final ConstraintLayout H;
    public final View.OnClickListener I;
    public long J;

    static {
        G.put(R.id.changeLogTitle, 3);
    }

    public H(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 4, F, G));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((ChangeLogItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        ChangeLogItem changeLogItem = this.E;
        m mVar = this.D;
        if (mVar != null) {
            mVar.a(changeLogItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.J;
            this.J = 0;
        }
        ChangeLogItem changeLogItem = this.E;
        m mVar = this.D;
        String str = null;
        long j3 = 5 & j2;
        if (!(j3 == 0 || changeLogItem == null)) {
            str = changeLogItem.getChangeLog();
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.I);
        }
        if (j3 != 0) {
            b.a((TextView) this.B, str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.J != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.J = 4;
        }
        k();
    }

    public H(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[1], objArr[3]);
        this.J = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.H = objArr[0];
        this.H.setTag(null);
        b(view);
        this.I = new a(this, 1);
        l();
    }

    public void a(ChangeLogItem changeLogItem) {
        this.E = changeLogItem;
        synchronized (this) {
            this.J |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.D = mVar;
        synchronized (this) {
            this.J |= 2;
        }
        a(41);
        super.k();
    }
}
