package c.c.a.n.b;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import c.c.a.f.A;
import c.c.a.f.C;
import c.c.a.f.C0444mb;
import c.c.a.f.C0450ob;
import c.c.a.f.E;
import c.c.a.f.G;
import c.c.a.f.I;
import c.c.a.f.K;
import c.c.a.f.M;
import c.c.a.f.O;
import c.c.a.f.Pa;
import c.c.a.f.Q;
import c.c.a.f.T;
import c.c.a.f.V;
import c.c.a.f.X;
import c.c.a.f.Z;
import c.c.a.n.b.d.a.a;
import c.c.a.n.b.d.a.e;
import c.c.a.n.b.d.d;
import c.c.a.n.b.d.f;
import c.c.a.n.b.d.g;
import c.c.a.n.b.d.h;
import c.c.a.n.b.d.i;
import c.c.a.n.c.c.a.a.b.b;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.appdetail.AppDetailViewItemType;
import com.farsitel.bazaar.common.model.page.CommonItemType;
import h.f.b.j;

/* renamed from: c.c.a.n.b.a  reason: case insensitive filesystem */
/* compiled from: AppDetailAdapter.kt */
public final class C0667a extends a<RecyclerData> {

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView.o f6200f = new RecyclerView.o();

    /* renamed from: g  reason: collision with root package name */
    public final e.a f6201g;

    /* renamed from: h  reason: collision with root package name */
    public final a.C0090a f6202h;

    /* renamed from: i  reason: collision with root package name */
    public final o.a f6203i;

    /* renamed from: j  reason: collision with root package name */
    public final c.c.a.n.b.d.a f6204j;

    /* renamed from: k  reason: collision with root package name */
    public final i f6205k;

    /* renamed from: l  reason: collision with root package name */
    public final f f6206l;

    public C0667a(e.a aVar, a.C0090a aVar2, o.a aVar3, c.c.a.n.b.d.a aVar4, i iVar, f fVar) {
        j.b(aVar, "screenshotVideoItemClickListener");
        j.b(aVar2, "screenshotImageItemClickListener");
        j.b(aVar3, "scrollableViewHolderCommunicator");
        j.b(aVar4, "appInfoClickListener");
        j.b(iVar, "onRateChangedListener");
        j.b(fVar, "developerInfoCommunicator");
        this.f6201g = aVar;
        this.f6202h = aVar2;
        this.f6203i = aVar3;
        this.f6204j = aVar4;
        this.f6205k = iVar;
        this.f6206l = fVar;
    }

    /* renamed from: a */
    public void b(n<RecyclerData> nVar, int i2) {
        j.b(nVar, "holder");
        if (nVar instanceof c.c.a.n.b.d.j) {
            c.c.a.n.b.d.j jVar = (c.c.a.n.b.d.j) nVar;
            jVar.a(this.f6201g);
            jVar.a(this.f6202h);
        }
        super.b(nVar, i2);
    }

    /* renamed from: b */
    public void c(n<RecyclerData> nVar) {
        j.b(nVar, "holder");
        if (nVar instanceof c.c.a.n.b.d.j) {
            c.c.a.n.b.d.j jVar = (c.c.a.n.b.d.j) nVar;
            jVar.E();
            jVar.a((e.a) null);
            jVar.a((a.C0090a) null);
        }
        super.c(nVar);
    }

    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == AppDetailViewItemType.REPORT.ordinal()) {
            V a2 = V.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemAppdetailReportBindi….context), parent, false)");
            return new n<>(a2);
        } else if (i2 == CommonItemType.VITRIN_APP.getValue()) {
            return new b(viewGroup, this.f6200f, null, this.f6203i);
        } else {
            if (i2 == AppDetailViewItemType.CHANGE_LOG.ordinal()) {
                G a3 = G.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a3, "ItemAppdetailChangelogBi…  false\n                )");
                return new n<>(a3);
            } else if (i2 == AppDetailViewItemType.APP_DESCRIPTION.ordinal()) {
                I a4 = I.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a4, "ItemAppdetailDescription…  false\n                )");
                return new n<>(a4);
            } else if (i2 == AppDetailViewItemType.APP_MORE_DESCRIPTION.ordinal()) {
                O a5 = O.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a5, "ItemAppdetailMoreDescrip…  false\n                )");
                return new n<>(a5);
            } else if (i2 == AppDetailViewItemType.APP_INFO.ordinal()) {
                E a6 = E.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a6, "ItemAppdetailAppInfoBind….context), parent, false)");
                return new d(a6, this.f6204j);
            } else if (i2 == AppDetailViewItemType.ARTICLE_TITLE.ordinal()) {
                Z a7 = Z.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a7, "ItemArticleTitleBinding.….context), parent, false)");
                return new n<>(a7);
            } else if (i2 == AppDetailViewItemType.ARTICLE.ordinal()) {
                X a8 = X.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a8, "ItemArticleBinding.infla….context), parent, false)");
                return new n<>(a8);
            } else if (i2 == AppDetailViewItemType.MORE_ARTICLE.ordinal()) {
                Pa a9 = Pa.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a9, "ItemMoreArticleBinding.i….context), parent, false)");
                return new n<>(a9);
            } else if (i2 == AppDetailViewItemType.APP_MY_RATE.ordinal()) {
                Q a10 = Q.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a10, "ItemAppdetailMyRateBindi….context), parent, false)");
                return new h(a10, this.f6205k);
            } else if (i2 == AppDetailViewItemType.MY_REVIEW.ordinal()) {
                C0444mb a11 = C0444mb.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a11, "ItemReviewBinding.inflat….context), parent, false)");
                return new c.c.a.n.b.d.e(a11);
            } else if (i2 == AppDetailViewItemType.REVIEW_ACTION.ordinal()) {
                C0450ob a12 = C0450ob.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a12, "ItemReviewMoreBinding.in….context), parent, false)");
                return new n<>(a12);
            } else if (i2 == AppDetailViewItemType.DEVELOPER_INFO.ordinal()) {
                A a13 = A.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a13, "ItemAppDetailDeveloperIn….context), parent, false)");
                return new g(a13, this.f6206l);
            } else if (i2 == AppDetailViewItemType.SCREEN_SHOT_SECTION.ordinal()) {
                C a14 = C.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a14, "ItemAppDetailScreenShotB…  false\n                )");
                c.c.a.n.b.d.j jVar = new c.c.a.n.b.d.j(a14);
                jVar.a(this.f6202h);
                jVar.a(this.f6201g);
                return jVar;
            } else if (i2 == AppDetailViewItemType.DIVIDER.ordinal()) {
                K a15 = K.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a15, "ItemAppdetailDividerBind….context), parent, false)");
                return new n<>(a15);
            } else if (i2 == AppDetailViewItemType.REVIEW_INFO.ordinal()) {
                T a16 = T.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a16, "ItemAppdetailRateInfoBin….context), parent, false)");
                return new n<>(a16);
            } else if (i2 == AppDetailViewItemType.EDITOR_CHOICE.ordinal()) {
                M a17 = M.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
                j.a((Object) a17, "ItemAppdetailEditorChois…  false\n                )");
                return new n<>(a17);
            } else {
                throw new IllegalAccessError("Invalid viewType");
            }
        }
    }
}
