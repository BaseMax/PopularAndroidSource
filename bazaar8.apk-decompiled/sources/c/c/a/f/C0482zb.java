package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.j.a.a;
import c.c.a.n.z.b;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.subscription.SubscriptionItem;

/* renamed from: c.c.a.f.zb  reason: case insensitive filesystem */
/* compiled from: ItemSubscriptionAppBindingImpl */
public class C0482zb extends C0479yb implements a.C0085a {
    public static final ViewDataBinding.b I = null;
    public static final SparseIntArray J = null;
    public final ConstraintLayout K;
    public final ProgressBar L;
    public final View.OnClickListener M;
    public final View.OnClickListener N;
    public long O;

    public C0482zb(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 8, I, J));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((SubscriptionItem) obj);
        } else if (28 != i2) {
            return false;
        } else {
            a((b) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            SubscriptionItem subscriptionItem = this.G;
            b bVar = this.H;
            if (bVar != null) {
                z = true;
            }
            if (z) {
                bVar.a(subscriptionItem);
            }
        } else if (i2 == 2) {
            SubscriptionItem subscriptionItem2 = this.G;
            b bVar2 = this.H;
            if (bVar2 != null) {
                z = true;
            }
            if (z) {
                bVar2.a(view, subscriptionItem2);
            }
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        boolean z;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        boolean z2;
        boolean z3;
        String str9;
        String str10;
        synchronized (this) {
            j2 = this.O;
            this.O = 0;
        }
        SubscriptionItem subscriptionItem = this.G;
        b bVar = this.H;
        long j3 = 5 & j2;
        boolean z4 = false;
        String str11 = null;
        if (j3 != 0) {
            if (subscriptionItem != null) {
                String productTitle = subscriptionItem.getProductTitle();
                str9 = subscriptionItem.getSubscriptionPrice(h().getContext());
                String startDate = subscriptionItem.getStartDate();
                z2 = subscriptionItem.getShowMoreMenu();
                str8 = subscriptionItem.getIconUrl();
                str7 = subscriptionItem.getEndDate();
                str6 = subscriptionItem.getTitle();
                String str12 = startDate;
                z3 = subscriptionItem.isCancelableLoading();
                str10 = productTitle;
                str11 = str12;
            } else {
                str10 = null;
                str9 = null;
                str8 = null;
                str7 = null;
                str6 = null;
                z3 = false;
                z2 = false;
            }
            str3 = str10;
            str5 = this.C.getResources().getString(R.string.subscription_time, new Object[]{str11, str7});
            z = z3;
            z4 = z2;
            str4 = str6;
            str = str9;
            str2 = str8;
        } else {
            str5 = null;
            str4 = null;
            str3 = null;
            str2 = null;
            str = null;
            z = false;
        }
        if ((j2 & 4) != 0) {
            this.A.setOnClickListener(this.M);
            this.K.setOnClickListener(this.N);
        }
        if (j3 != 0) {
            c.c.a.d.a.b.a((View) this.A, Boolean.valueOf(z4));
            c.c.a.d.a.b.a(this.B, str2, null, null, null, null, null);
            f.a((TextView) this.C, (CharSequence) str5);
            f.a((TextView) this.D, (CharSequence) str4);
            f.a((TextView) this.E, (CharSequence) str3);
            f.a((TextView) this.F, (CharSequence) str);
            c.c.a.d.a.b.a((View) this.L, Boolean.valueOf(z));
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.O != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.O = 4;
        }
        k();
    }

    public C0482zb(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[6], objArr[1], objArr[5], objArr[2], objArr[4], objArr[3]);
        this.O = -1;
        this.A.setTag(null);
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.K = objArr[0];
        this.K.setTag(null);
        this.L = objArr[7];
        this.L.setTag(null);
        b(view);
        this.M = new a(this, 2);
        this.N = new a(this, 1);
        l();
    }

    public void a(SubscriptionItem subscriptionItem) {
        this.G = subscriptionItem;
        synchronized (this) {
            this.O |= 1;
        }
        a(45);
        super.k();
    }

    public void a(b bVar) {
        this.H = bVar;
        synchronized (this) {
            this.O |= 2;
        }
        a(28);
        super.k();
    }
}
