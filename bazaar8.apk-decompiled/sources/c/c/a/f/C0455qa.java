package c.c.a.f;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import b.l.a.g;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.core.widget.GroupView;

/* renamed from: c.c.a.f.qa  reason: case insensitive filesystem */
/* compiled from: ItemListAppBindingImpl */
public class C0455qa extends C0452pa implements a.C0085a {
    public static final ViewDataBinding.b S = null;
    public static final SparseIntArray T = new SparseIntArray();
    public final View U;
    public final GroupView V;
    public final View.OnClickListener W;
    public final View.OnClickListener X;
    public final View.OnClickListener Y;
    public long Z;

    static {
        T.put(R.id.star, 12);
        T.put(R.id.progressBar, 13);
        T.put(R.id.appHasIapText, 14);
        T.put(R.id.bottomDivider, 15);
    }

    public C0455qa(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 16, S, T));
    }

    public boolean a(int i2, Object obj) {
        if (39 == i2) {
            b((Integer) obj);
        } else if (19 == i2) {
            a((c.c.a.n.c.c.a.a) obj);
        } else if (32 == i2) {
            a((ListItem.App) obj);
        } else if (21 != i2) {
            return false;
        } else {
            a((PageViewConfigItem) obj);
        }
        return true;
    }

    public void b(Integer num) {
        this.O = num;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        boolean z;
        int i2;
        Boolean bool;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        long j3;
        Float f2;
        String str6;
        String str7;
        String str8;
        String str9;
        Boolean bool2;
        Boolean bool3;
        synchronized (this) {
            j2 = this.Z;
            this.Z = 0;
        }
        c.c.a.n.c.c.a.a aVar = this.Q;
        ListItem.App app = this.P;
        long j4 = 20;
        long j5 = j2 & 20;
        int i3 = 0;
        String str10 = null;
        if (j5 != 0) {
            PageAppItem app2 = app != null ? app.getApp() : null;
            if (app2 != null) {
                str10 = app2.getNoDiscountPriceString();
                bool2 = app2.isAd();
                str9 = app2.getAppName();
                str8 = app2.getShortInfo();
                str7 = app2.getIconUrl();
                str6 = app2.getLongInfo();
                f2 = app2.getRate();
                bool3 = app2.isAd();
            } else {
                bool3 = null;
                bool2 = null;
                str9 = null;
                str8 = null;
                str7 = null;
                str6 = null;
                f2 = null;
            }
            float a2 = ViewDataBinding.a(f2);
            boolean z2 = true;
            String string = this.E.getResources().getString(R.string.rate_placeholder, new Object[]{f2});
            boolean a3 = ViewDataBinding.a(bool3);
            if (j5 != 0) {
                j2 |= a3 ? 64 : 32;
            }
            if (a2 <= 0.0f) {
                z2 = false;
            }
            if (a3) {
                i3 = ViewDataBinding.a(this.U, (int) R.color.ad_background);
            }
            str5 = str10;
            str10 = str9;
            str3 = str6;
            j4 = 20;
            bool = bool2;
            str = string;
            str4 = str7;
            z = z2;
            String str11 = str8;
            i2 = i3;
            str2 = str11;
        } else {
            str5 = null;
            str4 = null;
            str3 = null;
            str2 = null;
            str = null;
            bool = null;
            i2 = 0;
            z = false;
        }
        if ((j4 & j2) != 0) {
            AppCompatImageView appCompatImageView = this.B;
            j3 = j2;
            String str12 = str2;
            b.a(appCompatImageView, str4, ViewDataBinding.b((View) appCompatImageView, (int) R.drawable.bg_sample_app), null, null, null, Float.valueOf(this.B.getResources().getDimension(R.dimen.image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str10);
            f.a((TextView) this.D, (CharSequence) str5);
            b.a((View) this.D, str5);
            f.a((TextView) this.E, (CharSequence) str);
            b.a((View) this.I, bool);
            g.a(this.U, b.l.a.b.a(i2));
            b.a((View) this.V, Boolean.valueOf(z));
            f.a((TextView) this.L, (CharSequence) str12);
            b.a((View) this.L, str12);
            String str13 = str3;
            f.a((TextView) this.N, (CharSequence) str13);
            b.a((View) this.N, str13);
        } else {
            j3 = j2;
        }
        if ((j3 & 16) != 0) {
            this.F.setOnClickListener(this.Y);
            this.H.setOnClickListener(this.X);
            this.J.setOnClickListener(this.W);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.Z != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.Z = 16;
        }
        k();
    }

    public C0455qa(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[14], objArr[2], objArr[3], objArr[7], objArr[5], objArr[0], objArr[15], objArr[8], objArr[6], objArr[9], objArr[13], objArr[4], objArr[12], objArr[10]);
        this.Z = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.U = objArr[1];
        this.U.setTag(null);
        this.V = objArr[11];
        this.V.setTag(null);
        this.J.setTag(null);
        this.L.setTag(null);
        this.N.setTag(null);
        b(view);
        this.W = new a(this, 3);
        this.X = new a(this, 2);
        this.Y = new a(this, 1);
        l();
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            c.c.a.n.c.c.a.a aVar = this.Q;
            ListItem.App app = this.P;
            if (aVar != null) {
                z = true;
            }
            if (z) {
                aVar.b(app);
            }
        } else if (i2 == 2) {
            c.c.a.n.c.c.a.a aVar2 = this.Q;
            ListItem.App app2 = this.P;
            if (aVar2 != null) {
                z = true;
            }
            if (z) {
                aVar2.a(app2);
            }
        } else if (i2 == 3) {
            c.c.a.n.c.c.a.a aVar3 = this.Q;
            ListItem.App app3 = this.P;
            if (aVar3 != null) {
                z = true;
            }
            if (z) {
                aVar3.a(app3);
            }
        }
    }

    public void a(c.c.a.n.c.c.a.a aVar) {
        this.Q = aVar;
        synchronized (this) {
            this.Z |= 2;
        }
        a(19);
        super.k();
    }

    public void a(ListItem.App app) {
        this.P = app;
        synchronized (this) {
            this.Z |= 4;
        }
        a(32);
        super.k();
    }

    public void a(PageViewConfigItem pageViewConfigItem) {
        this.R = pageViewConfigItem;
    }
}
