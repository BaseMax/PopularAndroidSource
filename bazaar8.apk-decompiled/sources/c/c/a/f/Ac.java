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
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.core.widget.AspectRatioImageView;

/* compiled from: ItemVitrinAppBindingImpl */
public class Ac extends zc implements a.C0085a {
    public static final ViewDataBinding.b H = null;
    public static final SparseIntArray I = null;
    public final LinearLayout J;
    public final View.OnClickListener K;
    public long L;

    public Ac(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 6, H, I));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((PageAppItem) obj);
        } else if (41 != i2) {
            return false;
        } else {
            a((m) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        PageAppItem pageAppItem = this.F;
        m mVar = this.G;
        if (mVar != null) {
            mVar.a(pageAppItem);
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        boolean z;
        String str6;
        synchronized (this) {
            j2 = this.L;
            this.L = 0;
        }
        boolean z2 = false;
        PageAppItem pageAppItem = this.F;
        m mVar = this.G;
        long j3 = 5 & j2;
        String str7 = null;
        if (j3 != 0) {
            if (pageAppItem != null) {
                boolean iapVisibility = pageAppItem.getIapVisibility();
                String iconUrl = pageAppItem.getIconUrl();
                String noDiscountPriceString = pageAppItem.getNoDiscountPriceString();
                str5 = pageAppItem.getAppName();
                String str8 = noDiscountPriceString;
                z = iapVisibility;
                str6 = iconUrl;
                str7 = str8;
            } else {
                str6 = null;
                str5 = null;
                z = false;
            }
            str3 = str7;
            str = str5;
            str2 = String.valueOf(str7);
            boolean z3 = z;
            str4 = str6;
            z2 = z3;
        } else {
            str4 = null;
            str3 = null;
            str2 = null;
            str = null;
        }
        if (j3 != 0) {
            b.a((View) this.A, Boolean.valueOf(z2));
            AspectRatioImageView aspectRatioImageView = this.B;
            b.a(aspectRatioImageView, str4, ViewDataBinding.b((View) aspectRatioImageView, (int) R.drawable.bg_sample_app), null, null, null, Float.valueOf(this.B.getResources().getDimension(R.dimen.image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str);
            c.c.a.n.c.c.b.a.a(this.D, pageAppItem);
            f.a((TextView) this.E, (CharSequence) str2);
            b.a((View) this.E, str3);
        }
        if ((j2 & 4) != 0) {
            this.J.setOnClickListener(this.K);
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
            this.L = 4;
        }
        k();
    }

    public Ac(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[5], objArr[1], objArr[2], objArr[4], objArr[3]);
        this.L = -1;
        this.A.setTag(null);
        this.J = objArr[0];
        this.J.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        b(view);
        this.K = new a(this, 1);
        l();
    }

    public void a(PageAppItem pageAppItem) {
        this.F = pageAppItem;
        synchronized (this) {
            this.L |= 1;
        }
        a(45);
        super.k();
    }

    public void a(m mVar) {
        this.G = mVar;
        synchronized (this) {
            this.L |= 2;
        }
        a(41);
        super.k();
    }
}
