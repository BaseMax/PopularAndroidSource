package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;

/* compiled from: ItemMoreArticleBindingImpl */
public class Qa extends Pa implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final FrameLayout F;
    public final View.OnClickListener G;
    public final View.OnClickListener H;
    public long I;

    public Qa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((MoreArticleItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            MoreArticleItem moreArticleItem = this.B;
            m mVar = this.C;
            if (mVar != null) {
                z = true;
            }
            if (z) {
                mVar.a(moreArticleItem);
            }
        } else if (i2 == 2) {
            MoreArticleItem moreArticleItem2 = this.B;
            m mVar2 = this.C;
            if (mVar2 != null) {
                z = true;
            }
            if (z) {
                mVar2.a(moreArticleItem2);
            }
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
        MoreArticleItem moreArticleItem = this.B;
        m mVar = this.C;
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.H);
            this.F.setOnClickListener(this.G);
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

    public Qa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.I = -1;
        this.A.setTag(null);
        this.F = objArr[0];
        this.F.setTag(null);
        b(view);
        this.G = new a(this, 1);
        this.H = new a(this, 2);
        l();
    }

    public void a(MoreArticleItem moreArticleItem) {
        this.B = moreArticleItem;
        synchronized (this) {
            this.I |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.C = mVar;
        synchronized (this) {
            this.I |= 2;
        }
        a(41);
        super.k();
    }
}
