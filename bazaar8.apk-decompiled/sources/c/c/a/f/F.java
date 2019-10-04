package c.c.a.f;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.databinding.ViewDataBinding;
import b.l.C0276f;
import b.l.a.f;
import c.c.a.d.a.b;
import c.c.a.j.a.a;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;

/* compiled from: ItemAppdetailAppInfoBindingImpl */
public class F extends E implements a.C0085a {
    public static final ViewDataBinding.b ma = null;
    public static final SparseIntArray na = new SparseIntArray();
    public final ConstraintLayout oa;
    public final Group pa;
    public final Group qa;
    public final View ra;
    public final View sa;
    public final View.OnClickListener ta;
    public final View.OnClickListener ua;
    public final View.OnClickListener va;
    public final View.OnClickListener wa;
    public final View.OnClickListener xa;
    public final View.OnClickListener ya;
    public long za;

    static {
        na.put(R.id.ivAppDetailAppCover, 20);
        na.put(R.id.ivForegroundCover, 21);
        na.put(R.id.appIconCenterSpace, 22);
        na.put(R.id.btnAppDetailInstallButton, 23);
        na.put(R.id.btnAppDetailPrimary, 24);
        na.put(R.id.bottomInstallBarrier, 25);
        na.put(R.id.inAppPurchaseDivider, 26);
        na.put(R.id.actionBox, 27);
        na.put(R.id.appDownloadState, 28);
        na.put(R.id.appDownloadProgressBar, 29);
        na.put(R.id.ivAppDetailCancelDownload, 30);
        na.put(R.id.appDetailDownloadGroup, 31);
        na.put(R.id.appInfoRateDivider, 32);
        na.put(R.id.appInfoSizeInfoSubtitle, 33);
        na.put(R.id.appInfoSizeDivider, 34);
        na.put(R.id.appInfoCategorySubTitle, 35);
        na.put(R.id.appInfoCategoryDivider, 36);
        na.put(R.id.startActionBoxMargin, 37);
        na.put(R.id.endActionBoxMargin, 38);
        na.put(R.id.appInfoStartSpace, 39);
        na.put(R.id.appInfoEndSpace, 40);
    }

    public F(C0276f fVar, View view) {
        this(fVar, view, ViewDataBinding.a(fVar, view, 41, ma, na));
    }

    public boolean a(int i2, Object obj) {
        if (45 == i2) {
            a((AppInfoItem) obj);
        } else if (37 != i2) {
            return false;
        } else {
            a((c.c.a.n.b.d.a) obj);
        }
        return true;
    }

    public final void b(int i2, View view) {
        boolean z = true;
        switch (i2) {
            case 1:
                AppInfoItem appInfoItem = this.ka;
                c.c.a.n.b.d.a aVar = this.la;
                if (aVar != null) {
                    if (appInfoItem == null) {
                        z = false;
                    }
                    if (z) {
                        aVar.a(appInfoItem.getAuthorSlug(), appInfoItem.getAuthorName());
                        return;
                    }
                    return;
                }
                return;
            case 2:
                AppInfoItem appInfoItem2 = this.ka;
                c.c.a.n.b.d.a aVar2 = this.la;
                if (aVar2 == null) {
                    z = false;
                }
                if (z) {
                    aVar2.b(appInfoItem2);
                    return;
                }
                return;
            case 3:
                AppInfoItem appInfoItem3 = this.ka;
                c.c.a.n.b.d.a aVar3 = this.la;
                if (aVar3 != null) {
                    if (appInfoItem3 == null) {
                        z = false;
                    }
                    if (z) {
                        aVar3.a(appInfoItem3.getPackageName());
                        return;
                    }
                    return;
                }
                return;
            case 4:
                AppInfoItem appInfoItem4 = this.ka;
                c.c.a.n.b.d.a aVar4 = this.la;
                if (aVar4 == null) {
                    z = false;
                }
                if (z) {
                    aVar4.e(appInfoItem4);
                    return;
                }
                return;
            case 5:
                AppInfoItem appInfoItem5 = this.ka;
                c.c.a.n.b.d.a aVar5 = this.la;
                if (aVar5 != null) {
                    if (appInfoItem5 == null) {
                        z = false;
                    }
                    if (z) {
                        aVar5.a(appInfoItem5.getReviewActionItem());
                        return;
                    }
                    return;
                }
                return;
            case 6:
                AppInfoItem appInfoItem6 = this.ka;
                c.c.a.n.b.d.a aVar6 = this.la;
                if (aVar6 != null) {
                    if (appInfoItem6 == null) {
                        z = false;
                    }
                    if (z) {
                        aVar6.b(appInfoItem6.getCategorySlug(), appInfoItem6.getCategoryName());
                        return;
                    }
                    return;
                }
                return;
            default:
                return;
        }
    }

    public boolean b(int i2, Object obj, int i3) {
        return false;
    }

    public void e() {
        long j2;
        String str;
        String str2;
        boolean z;
        boolean z2;
        long j3;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        String str11;
        String str12;
        String str13;
        String str14;
        String str15;
        String str16;
        float f2;
        boolean z3;
        String str17;
        String str18;
        boolean z4;
        String str19;
        String str20;
        String str21;
        synchronized (this) {
            j2 = this.za;
            this.za = 0;
        }
        AppInfoItem appInfoItem = this.ka;
        c.c.a.n.b.d.a aVar = this.la;
        long j4 = 5 & j2;
        String str22 = null;
        if (j4 != 0) {
            if (appInfoItem != null) {
                String appSizeWithLabel = appInfoItem.getAppSizeWithLabel();
                boolean hasError = appInfoItem.getHasError();
                str7 = appInfoItem.getInstallLabel();
                str18 = appInfoItem.getCategoryName();
                str17 = appInfoItem.getAppSizeLabel();
                str4 = appInfoItem.getVerboseInstallCountRange();
                z3 = appInfoItem.getHasInAppPurchase();
                f2 = appInfoItem.getAppRate();
                str16 = appInfoItem.getTinyRatingImage();
                str15 = appInfoItem.getVerboseInstallCountRangeDescription();
                str14 = appInfoItem.getAuthorName();
                str13 = appInfoItem.getReviewCount();
                str20 = appInfoItem.getErrorMessage(h().getContext());
                str19 = appInfoItem.getIconURL();
                str21 = appInfoItem.getName();
                boolean z5 = hasError;
                str22 = appSizeWithLabel;
                z4 = z5;
            } else {
                str21 = null;
                str20 = null;
                str19 = null;
                str7 = null;
                str18 = null;
                str17 = null;
                str4 = null;
                str16 = null;
                str15 = null;
                str14 = null;
                str13 = null;
                z4 = false;
                z3 = false;
                f2 = 0.0f;
            }
            String str23 = str21;
            String string = this.N.getResources().getString(R.string.rate_placeholder, new Object[]{Float.valueOf(f2)});
            z2 = z3;
            str = str20;
            str3 = str16;
            str2 = str14;
            str11 = str13;
            str8 = str23;
            j3 = 0;
            z = z4;
            str9 = str22;
            str22 = str18;
            str6 = str17;
            str5 = str19;
            str10 = string;
            str12 = str15;
        } else {
            z2 = false;
            j3 = 0;
            str12 = null;
            str11 = null;
            str10 = null;
            str9 = null;
            str8 = null;
            str7 = null;
            str6 = null;
            str5 = null;
            str4 = null;
            str3 = null;
            str2 = null;
            str = null;
            z = false;
        }
        if (j4 != j3) {
            f.a((TextView) this.H, (CharSequence) str22);
            f.a((TextView) this.J, (CharSequence) str12);
            f.a((TextView) this.K, (CharSequence) str7);
            f.a((TextView) this.M, (CharSequence) str11);
            f.a((TextView) this.N, (CharSequence) str10);
            f.a((TextView) this.Q, (CharSequence) str9);
            AppCompatImageView appCompatImageView = this.aa;
            Drawable b2 = ViewDataBinding.b((View) appCompatImageView, (int) R.drawable.bg_sample_app);
            String str24 = str6;
            AppCompatImageView appCompatImageView2 = appCompatImageView;
            String str25 = str4;
            Drawable drawable = b2;
            String str26 = str3;
            b.a(appCompatImageView2, str5, drawable, null, null, null, Float.valueOf(this.aa.getResources().getDimension(R.dimen.image_rounded_corner)));
            f.a((TextView) this.ba, (CharSequence) str8);
            b.a((View) this.ea, str26);
            AppCompatImageView appCompatImageView3 = this.ea;
            b.a(appCompatImageView3, str26, null, null, null, null, Float.valueOf(appCompatImageView3.getResources().getDimension(R.dimen.default_margin_quarter)));
            b.a((View) this.pa, str25);
            b.a((View) this.qa, str24);
            f.a((TextView) this.ha, (CharSequence) str2);
            b.a((View) this.ia, Boolean.valueOf(z2));
            f.a((TextView) this.ja, (CharSequence) str);
            b.a((View) this.ja, Boolean.valueOf(z));
        }
        if ((j2 & 4) != 0) {
            this.T.setOnClickListener(this.wa);
            this.W.setOnClickListener(this.ta);
            this.da.setOnClickListener(this.va);
            this.ra.setOnClickListener(this.xa);
            this.sa.setOnClickListener(this.ya);
            this.ha.setOnClickListener(this.ua);
        }
    }

    public boolean i() {
        synchronized (this) {
            if (this.za != 0) {
                return true;
            }
            return false;
        }
    }

    public void l() {
        synchronized (this) {
            this.za = 4;
        }
        k();
    }

    public F(C0276f fVar, View view, Object[] objArr) {
        super(fVar, view, 0, objArr[27], objArr[31], objArr[29], objArr[28], objArr[22], objArr[36], objArr[35], objArr[14], objArr[40], objArr[11], objArr[10], objArr[32], objArr[17], objArr[16], objArr[34], objArr[33], objArr[13], objArr[39], objArr[25], objArr[6], objArr[23], objArr[24], objArr[8], objArr[38], objArr[26], objArr[20], objArr[1], objArr[2], objArr[30], objArr[9], objArr[3], objArr[21], objArr[37], objArr[4], objArr[7], objArr[5]);
        this.za = -1;
        this.H.setTag(null);
        this.J.setTag(null);
        this.K.setTag(null);
        this.M.setTag(null);
        this.N.setTag(null);
        this.Q.setTag(null);
        this.T.setTag(null);
        this.W.setTag(null);
        this.aa.setTag(null);
        this.ba.setTag(null);
        this.da.setTag(null);
        this.ea.setTag(null);
        this.oa = objArr[0];
        this.oa.setTag(null);
        this.pa = objArr[12];
        this.pa.setTag(null);
        this.qa = objArr[15];
        this.qa.setTag(null);
        this.ra = objArr[18];
        this.ra.setTag(null);
        this.sa = objArr[19];
        this.sa.setTag(null);
        this.ha.setTag(null);
        this.ia.setTag(null);
        this.ja.setTag(null);
        b(view);
        this.ta = new a(this, 3);
        this.ua = new a(this, 1);
        this.va = new a(this, 4);
        this.wa = new a(this, 2);
        this.xa = new a(this, 5);
        this.ya = new a(this, 6);
        l();
    }

    public void a(AppInfoItem appInfoItem) {
        this.ka = appInfoItem;
        synchronized (this) {
            this.za |= 1;
        }
        a(45);
        super.k();
    }

    public void a(c.c.a.n.b.d.a aVar) {
        this.la = aVar;
        synchronized (this) {
            this.za |= 2;
        }
        a(37);
        super.k();
    }
}
