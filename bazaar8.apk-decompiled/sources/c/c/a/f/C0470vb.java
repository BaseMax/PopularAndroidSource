package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;

/* renamed from: c.c.a.f.vb  reason: case insensitive filesystem */
/* compiled from: ItemScrollableBindingImpl */
public class C0470vb extends C0467ub implements a.C0085a {
    public static final ViewDataBinding.b H = null;
    public static final SparseIntArray I = new SparseIntArray();
    public final LinearLayout J;
    public final View.OnClickListener K;
    public final View.OnClickListener L;
    public final View.OnClickListener M;
    public long N;

    static {
        I.put(R.id.scrollableTitleContainer, 4);
        I.put(R.id.scrollableRecyclerView, 5);
    }

    public C0470vb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, H, I));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((AbstractSectionRowData) obj);
        } else if (7 != i2) {
            return false;
        } else {
            a((o.a) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            AbstractSectionRowData abstractSectionRowData = this.G;
            o.a aVar = this.F;
            if (aVar != null) {
                z = true;
            }
            if (z) {
                aVar.b(abstractSectionRowData);
            }
        } else if (i2 == 2) {
            AbstractSectionRowData abstractSectionRowData2 = this.G;
            o.a aVar2 = this.F;
            if (aVar2 != null) {
                z = true;
            }
            if (z) {
                aVar2.b(abstractSectionRowData2);
            }
        } else if (i2 == 3) {
            AbstractSectionRowData abstractSectionRowData3 = this.G;
            o.a aVar3 = this.F;
            if (aVar3 != null) {
                z = true;
            }
            if (z) {
                aVar3.b(abstractSectionRowData3);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        synchronized (this) {
            j2 = this.N;
            this.N = 0;
        }
        AbstractSectionRowData abstractSectionRowData = this.G;
        o.a aVar = this.F;
        long j3 = 5 & j2;
        String str2 = null;
        if (j3 == 0 || abstractSectionRowData == null) {
            str = null;
        } else {
            str2 = abstractSectionRowData.getActionLabel();
            str = abstractSectionRowData.getTitle();
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.K);
            this.B.setOnClickListener(this.L);
            this.C.setOnClickListener(this.M);
        }
        if (j3 != 0) {
            b.a((View) this.A, str2);
            b.a((View) this.B, str2);
            f.a((TextView) this.C, (CharSequence) str);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.N != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.N = 4;
        }
        k();
    }

    public C0470vb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[2], objArr[3], objArr[1], objArr[5], objArr[4]);
        this.N = -1;
        this.J = objArr[0];
        this.J.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        b(view);
        this.K = new a(this, 2);
        this.L = new a(this, 3);
        this.M = new a(this, 1);
        l();
    }

    public void a(AbstractSectionRowData abstractSectionRowData) {
        this.G = abstractSectionRowData;
        synchronized (this) {
            this.N |= 1;
        }
        a(45);
        super.k();
    }

    public void a(o.a aVar) {
        this.F = aVar;
        synchronized (this) {
            this.N |= 2;
        }
        a(7);
        super.k();
    }
}
