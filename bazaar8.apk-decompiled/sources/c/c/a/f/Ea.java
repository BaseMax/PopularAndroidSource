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
import com.farsitel.bazaar.common.model.page.PageMiniAppDetailItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.core.widget.GroupView;

/* compiled from: ItemListMiniAppBindingImpl */
public class Ea extends Da implements a.C0085a {
    public static final ViewDataBinding.b Y = null;
    public static final SparseIntArray Z = new SparseIntArray();
    public final View aa;
    public final GroupView ba;
    public final View.OnClickListener ca;
    public final View.OnClickListener da;
    public final View.OnClickListener ea;
    public long fa;

    static {
        Z.put(R.id.star, 19);
        Z.put(R.id.progressBar, 20);
        Z.put(R.id.appHasIapText, 21);
    }

    public Ea(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 22, Y, Z));
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
        this.U = num;
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        boolean z;
        String str2;
        String str3;
        boolean z2;
        String str4;
        int i2;
        Boolean bool;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        long j3;
        String str11;
        String str12;
        Boolean bool2;
        Boolean bool3;
        String str13;
        PageMiniAppDetailItem pageMiniAppDetailItem;
        Float f2;
        String str14;
        String str15;
        String str16;
        String str17;
        String str18;
        boolean z3;
        synchronized (this) {
            j2 = this.fa;
            this.fa = 0;
        }
        c.c.a.n.c.c.a.a aVar = this.W;
        ListItem.App app = this.X;
        long j4 = 20;
        long j5 = j2 & 20;
        boolean z4 = false;
        if (j5 != 0) {
            PageAppItem app2 = app != null ? app.getApp() : null;
            if (app2 != null) {
                pageMiniAppDetailItem = app2.getMiniAppDetails();
                str13 = app2.getShortInfo();
                bool3 = app2.isAd();
                str4 = app2.getNoDiscountPriceString();
                bool2 = app2.isAd();
                str12 = app2.getAppName();
                str11 = app2.getIconUrl();
                f2 = app2.getRate();
            } else {
                f2 = null;
                pageMiniAppDetailItem = null;
                str13 = null;
                bool3 = null;
                str4 = null;
                bool2 = null;
                str12 = null;
                str11 = null;
            }
            if (pageMiniAppDetailItem != null) {
                boolean showScreenshots = pageMiniAppDetailItem.showScreenshots();
                String thumbnailScreenshotByIndex = pageMiniAppDetailItem.getThumbnailScreenshotByIndex(2);
                str18 = pageMiniAppDetailItem.getThumbnailScreenshotByIndex(0);
                str15 = pageMiniAppDetailItem.getShortDescription();
                str14 = pageMiniAppDetailItem.getInstallLabelWithDescription();
                str17 = pageMiniAppDetailItem.getThumbnailScreenshotByIndex(1);
                boolean z5 = showScreenshots;
                str16 = thumbnailScreenshotByIndex;
                z3 = z5;
            } else {
                z3 = false;
                str18 = null;
                str17 = null;
                str16 = null;
                str15 = null;
                str14 = null;
            }
            boolean a2 = ViewDataBinding.a(bool3);
            float a3 = ViewDataBinding.a(f2);
            z = z3;
            String string = this.E.getResources().getString(R.string.rate_placeholder, new Object[]{f2});
            if (j5 != 0) {
                j2 |= a2 ? 64 : 32;
            }
            int a4 = a2 ? ViewDataBinding.a(this.aa, (int) R.color.ad_background) : 0;
            if (a3 > 0.0f) {
                z4 = true;
            }
            str6 = string;
            i2 = a4;
            str = str17;
            str8 = str13;
            bool = bool2;
            str10 = str12;
            str9 = str11;
            str2 = str16;
            str5 = str14;
            str3 = str18;
            z2 = z4;
            str7 = str15;
            j4 = 20;
        } else {
            str10 = null;
            str9 = null;
            str8 = null;
            str7 = null;
            str6 = null;
            str5 = null;
            bool = null;
            i2 = 0;
            str4 = null;
            z2 = false;
            str3 = null;
            str2 = null;
            z = false;
            str = null;
        }
        if ((j4 & j2) != 0) {
            AppCompatImageView appCompatImageView = this.B;
            j3 = j2;
            String str19 = str7;
            b.a(appCompatImageView, str9, ViewDataBinding.b((View) appCompatImageView, (int) R.drawable.bg_sample_app), null, null, null, Float.valueOf(this.B.getResources().getDimension(R.dimen.image_rounded_corner)));
            f.a((TextView) this.C, (CharSequence) str10);
            f.a((TextView) this.D, (CharSequence) str4);
            b.a((View) this.D, str4);
            f.a((TextView) this.E, (CharSequence) str6);
            f.a((TextView) this.H, (CharSequence) str5);
            b.a((View) this.I, bool);
            g.a(this.aa, b.l.a.b.a(i2));
            b.a((View) this.ba, Boolean.valueOf(z2));
            b.a((View) this.L, Boolean.valueOf(z));
            b.a((View) this.M, Boolean.valueOf(z));
            b.a((View) this.N, Boolean.valueOf(z));
            b.a(this.O, str3, null, null, null, null, null);
            b.a(this.P, str, null, null, null, null, null);
            b.a(this.Q, str2, null, null, null, null, null);
            f.a((TextView) this.R, (CharSequence) str19);
            b.a((View) this.R, str19);
            String str20 = str8;
            f.a((TextView) this.S, (CharSequence) str20);
            b.a((View) this.S, str20);
        } else {
            j3 = j2;
        }
        if ((j3 & 16) != 0) {
            this.F.setOnClickListener(this.ca);
            this.G.setOnClickListener(this.da);
            this.J.setOnClickListener(this.ea);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.fa != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.fa = 16;
        }
        k();
    }

    public Ea(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[21], objArr[2], objArr[3], objArr[8], objArr[6], objArr[0], objArr[9], objArr[7], objArr[5], objArr[10], objArr[20], objArr[11], objArr[13], objArr[15], objArr[12], objArr[14], objArr[16], objArr[17], objArr[4], objArr[19]);
        this.fa = -1;
        this.B.setTag(null);
        this.C.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.aa = objArr[1];
        this.aa.setTag(null);
        this.ba = objArr[18];
        this.ba.setTag(null);
        this.J.setTag(null);
        this.L.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.O.setTag(null);
        this.P.setTag(null);
        this.Q.setTag(null);
        this.R.setTag(null);
        this.S.setTag(null);
        b(view);
        this.ca = new a(this, 1);
        this.da = new a(this, 2);
        this.ea = new a(this, 3);
        l();
    }

    public final void b(int i2, View view) {
        boolean z = false;
        if (i2 == 1) {
            c.c.a.n.c.c.a.a aVar = this.W;
            ListItem.App app = this.X;
            if (aVar != null) {
                z = true;
            }
            if (z) {
                aVar.b(app);
            }
        } else if (i2 == 2) {
            c.c.a.n.c.c.a.a aVar2 = this.W;
            ListItem.App app2 = this.X;
            if (aVar2 != null) {
                z = true;
            }
            if (z) {
                aVar2.a(app2);
            }
        } else if (i2 == 3) {
            c.c.a.n.c.c.a.a aVar3 = this.W;
            ListItem.App app3 = this.X;
            if (aVar3 != null) {
                z = true;
            }
            if (z) {
                aVar3.a(app3);
            }
        }
    }

    public void a(c.c.a.n.c.c.a.a aVar) {
        this.W = aVar;
        synchronized (this) {
            this.fa |= 2;
        }
        a(19);
        super.k();
    }

    public void a(ListItem.App app) {
        this.X = app;
        synchronized (this) {
            this.fa |= 4;
        }
        a(32);
        super.k();
    }

    public void a(PageViewConfigItem pageViewConfigItem) {
        this.V = pageViewConfigItem;
    }
}
