package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;

/* compiled from: ItemAppdetailMoreDescriptionBindingImpl */
public class P extends O implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final FrameLayout F;
    public final View.OnClickListener G;
    public long H;

    public P(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((AppMoreDescriptionItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        AppMoreDescriptionItem appMoreDescriptionItem = this.B;
        m mVar = this.C;
        if (mVar != null) {
            mVar.a(appMoreDescriptionItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        synchronized (this) {
            j2 = this.H;
            this.H = 0;
        }
        AppMoreDescriptionItem appMoreDescriptionItem = this.B;
        m mVar = this.C;
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.G);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.H != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.H = 4;
        }
        k();
    }

    public P(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.H = -1;
        this.A.setTag(null);
        this.F = objArr[0];
        this.F.setTag(null);
        b(view);
        this.G = new a(this, 1);
        l();
    }

    public void a(AppMoreDescriptionItem appMoreDescriptionItem) {
        this.B = appMoreDescriptionItem;
        synchronized (this) {
            this.H |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.C = mVar;
        synchronized (this) {
            this.H |= 2;
        }
        a(41);
        super.k();
    }
}
