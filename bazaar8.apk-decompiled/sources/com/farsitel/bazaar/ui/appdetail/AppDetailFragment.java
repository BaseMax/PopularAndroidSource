package com.farsitel.bazaar.ui.appdetail;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.r.E;
import b.r.G;
import b.w.b.b;
import c.c.a.b.f;
import c.c.a.d.b.h;
import c.c.a.d.b.l;
import c.c.a.n.b.C0664B;
import c.c.a.n.b.C0667a;
import c.c.a.n.b.C0668b;
import c.c.a.n.b.n;
import c.c.a.n.b.o;
import c.c.a.n.b.p;
import c.c.a.n.b.q;
import c.c.a.n.b.r;
import c.c.a.n.b.s;
import c.c.a.n.b.t;
import c.c.a.n.b.w;
import c.c.a.n.c.d.m;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.AppDetailVisit;
import com.farsitel.bazaar.analytics.model.where.AppDetailsScreen;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppDescriptionItem;
import com.farsitel.bazaar.common.model.appdetail.AppInfoItem;
import com.farsitel.bazaar.common.model.appdetail.AppMoreDescriptionItem;
import com.farsitel.bazaar.common.model.appdetail.AppMyRateItem;
import com.farsitel.bazaar.common.model.appdetail.ArticleItem;
import com.farsitel.bazaar.common.model.appdetail.ChangeLogItem;
import com.farsitel.bazaar.common.model.appdetail.EditorChoiceItem;
import com.farsitel.bazaar.common.model.appdetail.MoreArticleItem;
import com.farsitel.bazaar.common.model.appdetail.ReportItem;
import com.farsitel.bazaar.common.model.appdetail.ReviewActionItem;
import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.appdetail.comment.PostAppCommentFragment;
import com.farsitel.bazaar.ui.appdetail.report.ReportFragment;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import com.google.android.material.button.MaterialButton;
import h.c;
import h.d;
import h.f.b.j;
import h.f.b.k;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: AppDetailFragment.kt */
public final class AppDetailFragment extends c.c.a.n.c.d.a.a<RecyclerData, s, w> {
    public static final /* synthetic */ i[] Ba;
    public static final a Ca = new a(null);
    public int Da = R.layout.fragment_appdetail;
    public boolean Ea;
    public s Fa;
    public C0664B Ga;
    public MaterialButton Ha;
    public final c Ia = d.a(new AppDetailFragment$shareMessage$2(this));
    public HashMap Ja;

    /* compiled from: AppDetailFragment.kt */
    public static final class a {
        public a() {
        }

        public final void a(Context context, String str) {
            j.b(context, "context");
            j.b(str, "packageName");
            Uri parse = Uri.parse("bazaar://details?id=" + str);
            j.a((Object) parse, "Uri.parse(this)");
            f.a(context, parse, (String) null, 4, (Object) null);
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }
    }

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(k.a(AppDetailFragment.class), "shareMessage", "getShareMessage()Ljava/lang/String;");
        k.a((PropertyReference1) propertyReference1Impl);
        Ba = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ s a(AppDetailFragment appDetailFragment) {
        s sVar = appDetailFragment.Fa;
        if (sVar != null) {
            return sVar;
        }
        j.c("appDetailArgs");
        throw null;
    }

    public static final /* synthetic */ C0664B d(AppDetailFragment appDetailFragment) {
        C0664B b2 = appDetailFragment.Ga;
        if (b2 != null) {
            return b2;
        }
        j.c("fabScrollListener");
        throw null;
    }

    public static final /* synthetic */ w h(AppDetailFragment appDetailFragment) {
        return (w) appDetailFragment.cb();
    }

    public final p Ab() {
        return new p(this);
    }

    public final void Bb() {
        AppInfoItem a2 = w.a((w) cb(), null, 1, null);
        if (a2 != null) {
            PaymentActivity.w.a(this, a2.getPackageName(), a2.getName());
        }
    }

    public final void Cb() {
        ReportFragment.a aVar = ReportFragment.ta;
        ToolbarInfoModel f2 = f((int) R.string.report_this_app);
        s sVar = this.Fa;
        if (sVar != null) {
            aVar.a(new c.c.a.n.b.c.f(f2, sVar.a())).a(D(), "reportApp");
        } else {
            j.c("appDetailArgs");
            throw null;
        }
    }

    public final r Db() {
        return new r(this);
    }

    public void La() {
        HashMap hashMap = this.Ja;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public c.c.a.n.c.d.a<RecyclerData> Ua() {
        C0667a aVar = new C0667a(Ab(), zb(), Db(), wb(), vb(), sb());
        return aVar;
    }

    public RecyclerView.h Xa() {
        return null;
    }

    public int Ya() {
        return this.Da;
    }

    public View e(int i2) {
        if (this.Ja == null) {
            this.Ja = new HashMap();
        }
        View view = (View) this.Ja.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Ja.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Ea;
    }

    public void n(Bundle bundle) {
        j.b(bundle, "bundle");
        super.n(bundle);
        int i2 = bundle.getInt("totalScroll");
        C0664B b2 = this.Ga;
        if (b2 != null) {
            b2.a(i2);
        } else {
            j.c("fabScrollListener");
            throw null;
        }
    }

    public void qa() {
        MaterialButton materialButton = this.Ha;
        if (materialButton != null) {
            materialButton.setOnClickListener(null);
        }
        this.Ha = null;
        a((m) null);
        super.qa();
        La();
    }

    public String qb() {
        c cVar = this.Ia;
        i iVar = Ba[0];
        return (String) cVar.getValue();
    }

    public final C0668b sb() {
        return new C0668b(this);
    }

    public final int tb() {
        return 0;
    }

    public final void ub() {
        ((w) cb()).l().a(ba(), new C0671e(this));
    }

    public final c.c.a.n.b.m vb() {
        return new c.c.a.n.b.m(this);
    }

    public final n wb() {
        return new n(this);
    }

    public final void xb() {
        ((w) cb()).j();
    }

    public final void yb() {
        AppInfoItem a2 = w.a((w) cb(), null, 1, null);
        if (a2 != null) {
            if (a2.getAppState() == EntityState.NONE) {
                _a().l(0);
            }
            wb().c(a2);
        }
    }

    public final o zb() {
        return new o(this);
    }

    public AppDetailsScreen Sa() {
        s sVar = this.Fa;
        if (sVar != null) {
            return new AppDetailsScreen(sVar.a(), null);
        }
        j.c("appDetailArgs");
        throw null;
    }

    public s Za() {
        s sVar = this.Fa;
        if (sVar != null) {
            return sVar;
        }
        j.c("appDetailArgs");
        throw null;
    }

    public final void b(String str, String str2, String str3) {
        c.c.a.i.c.a(b.a(this), t.f6266a.a(str, str2, str3));
    }

    public void c(Bundle bundle) {
        super.c(bundle);
        s.a aVar = s.f6262a;
        Bundle C = C();
        if (C != null) {
            j.a((Object) C, "arguments!!");
            this.Fa = aVar.a(C);
            s sVar = this.Fa;
            if (sVar != null) {
                c.c.a.n.c.a.b.a(this, new AppDetailVisit(sVar.b()), null, null, 6, null);
                return;
            }
            j.c("appDetailArgs");
            throw null;
        }
        j.a();
        throw null;
    }

    public final void d(String str) {
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        c.c.a.i.b.a(Ha2, str, false, 2, null);
    }

    public final ToolbarInfoModel f(int i2) {
        AppInfoItem a2 = w.a((w) cb(), null, 1, null);
        if (a2 != null) {
            String iconURL = a2.getIconURL();
            String name = a2.getName();
            String b2 = b(i2);
            j.a((Object) b2, "getString(toolbarTitleResourceId)");
            return new ToolbarInfoModel(iconURL, name, b2);
        }
        j.a();
        throw null;
    }

    public final void g(int i2) {
        ((w) cb()).c(i2);
    }

    public final void h(int i2) {
        PostAppCommentFragment.a aVar = PostAppCommentFragment.Ha;
        s sVar = this.Fa;
        if (sVar != null) {
            String a2 = sVar.a();
            AppInfoItem a3 = w.a((w) cb(), null, 1, null);
            aVar.a(new c.c.a.n.b.b.a(a2, String.valueOf(a3 != null ? a3.getVersionCode() : -1), i2, f((int) R.string.yourCommentOnApplication))).a(D(), "postFragment");
            return;
        }
        j.c("appDetailArgs");
        throw null;
    }

    public w jb() {
        E a2 = G.a((Fragment) this, Ra()).a(w.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        w wVar = (w) a2;
        wVar.f(Za().a());
        h.a(this, wVar.g(), new AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1(wVar, this));
        wVar.x().a(ba(), new C0672f(wVar, this));
        wVar.s().a(ba(), new C0673g(wVar, this));
        wVar.m().a(ba(), new h(this));
        wVar.k().a(ba(), new i(wVar, this));
        wVar.o().a(ba(), new j(this));
        wVar.r().a(ba(), new k(this));
        wVar.n().a(ba(), new l(this));
        return wVar;
    }

    public static /* synthetic */ void a(AppDetailFragment appDetailFragment, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = ((w) appDetailFragment.cb()).p();
        }
        appDetailFragment.g(i2);
    }

    public static /* synthetic */ void b(AppDetailFragment appDetailFragment, int i2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i2 = ((w) appDetailFragment.cb()).p();
        }
        appDetailFragment.h(i2);
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new q(this));
        super.a(view, bundle);
    }

    public void c(View view) {
        j.b(view, "view");
        super.c(view);
        this.Ha = (MaterialButton) view.findViewById(R.id.installFloatingButton);
        View findViewById = view.findViewById(R.id.toolbarBookmark);
        c.c.a.n.c.d.a.f rb = rb();
        int a2 = rb != null ? rb.a() : 0;
        Context Ha2 = Ha();
        j.a((Object) Ha2, "requireContext()");
        MaterialButton materialButton = this.Ha;
        if (materialButton != null) {
            this.Ga = new C0664B(Ha2, materialButton, a2);
            RecyclerView _a = _a();
            C0664B b2 = this.Ga;
            if (b2 != null) {
                _a.a((RecyclerView.n) b2);
                MaterialButton materialButton2 = this.Ha;
                if (materialButton2 != null) {
                    l.a(materialButton2);
                }
                MaterialButton materialButton3 = this.Ha;
                if (materialButton3 != null) {
                    materialButton3.setOnClickListener(new C0669c(this));
                }
                findViewById.setOnClickListener(new C0670d(this));
                return;
            }
            j.c("fabScrollListener");
            throw null;
        }
        j.a();
        throw null;
    }

    public void a(int i2, int i3, Intent intent) {
        super.a(i2, i3, intent);
        ((w) cb()).a(i2, i3, intent);
    }

    public final void a(RecyclerData recyclerData) {
        j.b(recyclerData, "item");
        if (recyclerData instanceof AppDescriptionItem) {
            a(((AppDescriptionItem) recyclerData).getAppMoreDescriptionItem());
        } else if (recyclerData instanceof AppMoreDescriptionItem) {
            a((AppMoreDescriptionItem) recyclerData);
        } else if (recyclerData instanceof ReviewActionItem) {
            a((ReviewActionItem) recyclerData);
        } else if (recyclerData instanceof AppMyRateItem) {
            a(this, 0, 1, (Object) null);
        } else if (recyclerData instanceof MoreArticleItem) {
            a((MoreArticleItem) recyclerData);
        } else if (recyclerData instanceof ArticleItem) {
            d(((ArticleItem) recyclerData).getUri());
        } else if (recyclerData instanceof ReviewItem) {
            AppInfoItem a2 = w.a((w) cb(), null, 1, null);
            if (a2 != null) {
                a(a2.getReviewActionItem());
            }
        } else if (recyclerData instanceof ReportItem) {
            ((w) cb()).w();
        } else if (recyclerData instanceof EditorChoiceItem) {
            EditorChoiceItem editorChoiceItem = (EditorChoiceItem) recyclerData;
            b(editorChoiceItem.getSlug(), editorChoiceItem.getTitle(), editorChoiceItem.getReferrer());
        } else if (recyclerData instanceof ChangeLogItem) {
            c(((ChangeLogItem) recyclerData).getChangeLog());
        }
    }

    public final void c(String str) {
        c.c.a.i.c.a(b.a(this), t.f6266a.a(f((int) R.string.changeLog), str));
    }

    public final void a(AppMoreDescriptionItem appMoreDescriptionItem) {
        c.c.a.i.c.a(b.a(this), t.f6266a.a(appMoreDescriptionItem));
    }

    public final void a(ReviewActionItem reviewActionItem) {
        c.c.a.i.c.a(b.a(this), t.f6266a.a(reviewActionItem, f((int) R.string.reviews_title), ((w) cb()).u(), ((w) cb()).p()));
    }

    public final void a(MoreArticleItem moreArticleItem) {
        c.c.a.i.c.a(b.a(this), t.f6266a.a(moreArticleItem, f((int) R.string.article)));
    }
}
