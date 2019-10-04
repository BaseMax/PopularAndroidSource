package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.PromoItem;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;

/* compiled from: ItemListPromoBindingImpl */
public class Ga extends Fa implements a.C0085a {
    public static final ViewDataBinding.b D = null;
    public static final SparseIntArray E = null;
    public final FrameLayout F;
    public final View.OnClickListener G;
    public long H;

    public Ga(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 2, D, E));
    }

    public boolean a(int i2, Object obj) {
        if (41 == i2) {
            a((m) obj);
        } else if (15 != i2) {
            return false;
        } else {
            a((PromoItem) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        m mVar = this.C;
        PromoItem promoItem = this.B;
        if (mVar != null) {
            mVar.a(promoItem);
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
        String str = null;
        m mVar = this.C;
        PromoItem promoItem = this.B;
        long j3 = 6 & j2;
        if (!(j3 == 0 || promoItem == null)) {
            str = promoItem.getImage();
        }
        String str2 = str;
        if ((j2 & 4) != 0) {
            this.F.setOnClickListener(this.G);
        }
        if (j3 != 0) {
            AspectRatioImageView aspectRatioImageView = this.A;
            b.a(aspectRatioImageView, str2, ViewDataBinding.b((View) aspectRatioImageView, (int) R.drawable.bg_sample_app), null, null, null, null);
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

    public Ga(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[1]);
        this.H = -1;
        this.F = objArr[0];
        this.F.setTag(null);
        this.A.setTag(null);
        b(view);
        this.G = new a(this, 1);
        l();
    }

    public void a(m mVar) {
        this.C = mVar;
        synchronized (this) {
            this.H |= 1;
        }
        a(41);
        super.k();
    }

    public void a(PromoItem promoItem) {
        this.B = promoItem;
        synchronized (this) {
            this.H |= 2;
        }
        a(15);
        super.k();
    }
}
