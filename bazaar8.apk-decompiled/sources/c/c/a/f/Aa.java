package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.HamiItem;

/* compiled from: ItemListHamiInlineBindingImpl */
public class Aa extends C0481za implements a.C0085a {
    public static final ViewDataBinding.b E = null;
    public static final SparseIntArray F = new SparseIntArray();
    public final ConstraintLayout G;
    public final View.OnClickListener H;
    public long I;

    static {
        F.put(R.id.hamiCard, 1);
        F.put(R.id.hamiInline, 2);
    }

    public Aa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 3, E, F));
    }

    public boolean a(int i2, Object obj) {
        if (17 == i2) {
            a((c.c.a.n.c.c.a.a) obj);
            return true;
        } else if (1 != i2) {
            return false;
        } else {
            a((HamiItem) obj);
            return true;
        }
    }

    public final void b(int i2, View view) {
        c.c.a.n.c.c.a.a aVar = this.D;
        HamiItem hamiItem = this.C;
        if (aVar != null) {
            aVar.b(hamiItem);
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
        c.c.a.n.c.c.a.a aVar = this.D;
        HamiItem hamiItem = this.C;
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

    public Aa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1], objArr[2]);
        this.I = -1;
        this.G = objArr[0];
        this.G.setTag(null);
        b(view);
        this.H = new a(this, 1);
        l();
    }

    public void a(c.c.a.n.c.c.a.a aVar) {
        this.D = aVar;
        synchronized (this) {
            this.I |= 1;
        }
        a(17);
        super.k();
    }

    public void a(HamiItem hamiItem) {
        this.C = hamiItem;
        synchronized (this) {
            this.I |= 2;
        }
        a(1);
        super.k();
    }
}
