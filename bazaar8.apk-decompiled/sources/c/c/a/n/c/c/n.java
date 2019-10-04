package c.c.a.n.c.c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import b.o.a.C0285i;
import b.r.E;
import b.r.G;
import b.w.C0313j;
import c.c.a.b.f;
import c.c.a.c.d.c;
import c.c.a.d;
import c.c.a.d.b.h;
import c.c.a.e;
import c.c.a.i.c;
import c.c.a.n.c.c.a.a;
import c.c.a.n.c.c.a.a.a.i;
import c.c.a.n.c.c.t;
import c.c.a.n.c.d.k;
import c.c.a.n.c.d.o;
import c.c.a.n.j.b.c.b;
import c.c.a.n.j.d.p;
import c.c.a.o.a.d;
import com.farsitel.bazaar.analytics.model.what.MaliciousAppsUninstallButtonClick;
import com.farsitel.bazaar.analytics.model.where.MaliciousAppsScreen;
import com.farsitel.bazaar.common.model.DownloadableEntity;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.page.HamiItem;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.page.PageTitleItem;
import com.farsitel.bazaar.common.model.page.PageViewConfigItem;
import com.farsitel.bazaar.common.model.page.PromoItem;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.payment.PaymentActivity;
import com.farsitel.bazaar.widget.LocalAwareTextView;
import h.f.b.j;
import ir.cafebazaar.inline.ui.InlineActivity;

/* compiled from: PageFragment.kt */
public abstract class n<Params, VM extends t<Params>> extends k<RecyclerData, Params, VM> {
    public b ya;

    public static final /* synthetic */ b a(n nVar) {
        b bVar = nVar.ya;
        if (bVar != null) {
            return bVar;
        }
        j.c("playInfoViewModel");
        throw null;
    }

    public static final /* synthetic */ t c(n nVar) {
        return (t) nVar.cb();
    }

    public RecyclerView.h Xa() {
        d dVar = new d(E(), 0, 0, 0, 14, null);
        return dVar;
    }

    public final void d(PageAppItem pageAppItem) {
        Intent b2 = ((t) cb()).b(pageAppItem.getPackageName());
        if (b2 != null) {
            a(b2);
        }
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public final i tb() {
        return new b(this);
    }

    public a<ListItem> ub() {
        return new c(this);
    }

    public final a<HamiItem> vb() {
        return new d(this);
    }

    public final c.c.a.n.c.c.a.a.a.k wb() {
        return new e(this);
    }

    public final c.c.a.n.c.c.a.a.a.j xb() {
        return new f(this);
    }

    public final o.a yb() {
        return new g(this);
    }

    public c.c.a.n.c.c.a.b Ua() {
        c.c.a.n.c.c.a.b bVar = new c.c.a.n.c.c.a.b(yb(), yb(), yb(), vb(), ub(), wb(), xb(), tb());
        return bVar;
    }

    public final void c(PageAppItem pageAppItem) {
        Intent b2 = InlineActivity.b(pageAppItem.getPackageName());
        b2.putExtra("ref", pageAppItem.getReferrer());
        a(b2);
    }

    public final <SectionItem> void b(SectionItem sectionitem) {
        if (sectionitem instanceof PageAppItem) {
            PageAppItem pageAppItem = (PageAppItem) sectionitem;
            a(pageAppItem.getPackageName(), pageAppItem.getReferrer());
        } else if (sectionitem instanceof MovieItem.VideoItem) {
            MovieItem.VideoItem videoItem = (MovieItem.VideoItem) sectionitem;
            b(videoItem.getVideoId(), videoItem.getReferrer());
        } else if (sectionitem instanceof MovieItem.EpisodeItem) {
            MovieItem.EpisodeItem episodeItem = (MovieItem.EpisodeItem) sectionitem;
            a(episodeItem.getEpisodeId(), episodeItem.getSeasonIdx(), episodeItem.getReferrer());
        } else if (sectionitem instanceof MovieItem.SerialItem) {
            MovieItem.SerialItem serialItem = (MovieItem.SerialItem) sectionitem;
            b(serialItem.getSerialId(), serialItem.getSeasonIdx(), serialItem.getReferrer());
        } else if (sectionitem instanceof PromoItem) {
            PromoItem promoItem = (PromoItem) sectionitem;
            String link = promoItem.getLink();
            if (link != null) {
                Uri parse = Uri.parse(link);
                j.a((Object) parse, "Uri.parse(this)");
                if (parse != null) {
                    f.a(E(), parse, promoItem.getReferrer());
                }
            }
        } else if (sectionitem instanceof HamiItem) {
            HamiItem hamiItem = (HamiItem) sectionitem;
            String link2 = hamiItem.getLink();
            if (link2 != null) {
                Uri parse2 = Uri.parse(link2);
                j.a((Object) parse2, "Uri.parse(this)");
                if (parse2 != null) {
                    f.a(E(), parse2, hamiItem.getReferrer());
                }
            }
        } else if (sectionitem instanceof ListItem.CategoryItem) {
            ListItem.CategoryItem categoryItem = (ListItem.CategoryItem) sectionitem;
            String slug = categoryItem.getSlug();
            if (slug != null) {
                a(slug, categoryItem.getTitle(), categoryItem.getReferrer());
            }
        } else if (sectionitem instanceof ListItem.CategoryHeaderItem) {
            ListItem.CategoryHeaderItem categoryHeaderItem = (ListItem.CategoryHeaderItem) sectionitem;
            String slug2 = categoryHeaderItem.getSlug();
            if (slug2 != null) {
                a(slug2, categoryHeaderItem.getTitle(), categoryHeaderItem.getReferrer());
            }
        }
    }

    public final void a(String str, Integer num, String str2) {
        C0313j a2 = b.w.b.b.a(this);
        p.c cVar = p.f6538a;
        if (num != null) {
            c.a(a2, cVar.b(str, num.intValue(), str2));
        } else {
            j.a();
            throw null;
        }
    }

    public <Section> void a(Section section) {
        if (section instanceof AbstractSectionRowData) {
            AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) section;
            String slug = abstractSectionRowData.getSlug();
            if (slug != null) {
                if (slug.length() > 0) {
                    a(slug, abstractSectionRowData.getTitle(), abstractSectionRowData.getReferrer());
                }
            }
        }
    }

    public void a(View view, Bundle bundle) {
        j.b(view, "view");
        a(new h(this));
        super.a(view, bundle);
        ((t) cb()).n().a(ba(), new i(this));
        ((t) cb()).m().a(ba(), new j(this));
        ((t) cb()).k().a(ba(), new k(this));
        ((t) cb()).g().a(ba(), new m(this));
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        b bVar = (b) a2;
        h.a(this, bVar.e(), new PageFragment$onViewCreated$$inlined$createViewModel$lambda$1(this));
        this.ya = bVar;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v0, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r5v1, resolved type: android.net.Uri} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v7, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v8, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v9, resolved type: java.lang.String} */
    /* JADX WARNING: type inference failed for: r0v2, types: [com.farsitel.bazaar.core.model.ResourceState] */
    /* JADX WARNING: type inference failed for: r0v6, types: [android.net.Uri, java.lang.Object] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(com.farsitel.bazaar.core.model.Resource<com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel> r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 == 0) goto L_0x0008
            com.farsitel.bazaar.core.model.ResourceState r1 = r10.d()
            goto L_0x0009
        L_0x0008:
            r1 = r0
        L_0x0009:
            com.farsitel.bazaar.core.model.ResourceState$Success r2 = com.farsitel.bazaar.core.model.ResourceState.Success.f12179a
            boolean r2 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r2)
            if (r2 == 0) goto L_0x0059
            c.c.a.n.c.d.g r1 = r9.cb()
            c.c.a.n.c.c.t r1 = (c.c.a.n.c.c.t) r1
            r1.p()
            java.lang.Object r10 = r10.a()
            com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel r10 = (com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel) r10
            if (r10 == 0) goto L_0x00a2
            com.farsitel.bazaar.player.VideoPlayerActivity$a r1 = com.farsitel.bazaar.player.VideoPlayerActivity.u
            java.lang.String r3 = r10.getEntityId()
            java.lang.String r2 = r10.getVideoUrl()
            android.net.Uri r4 = android.net.Uri.parse(r2)
            java.lang.String r2 = "Uri.parse(this)"
            h.f.b.j.a((java.lang.Object) r4, (java.lang.String) r2)
            java.lang.String r5 = r10.getWaterMarkUrl()
            if (r5 == 0) goto L_0x0042
            android.net.Uri r0 = android.net.Uri.parse(r5)
            h.f.b.j.a((java.lang.Object) r0, (java.lang.String) r2)
        L_0x0042:
            r5 = r0
            java.util.List r6 = r10.getSubtitles()
            com.farsitel.bazaar.common.model.cinema.RefreshData r7 = r10.getRefreshData()
            java.lang.String r8 = r10.getReferrer()
            c.c.a.l.f r10 = new c.c.a.l.f
            r2 = r10
            r2.<init>(r3, r4, r5, r6, r7, r8)
            r1.a((androidx.fragment.app.Fragment) r9, (c.c.a.l.f) r10)
            goto L_0x00a2
        L_0x0059:
            com.farsitel.bazaar.core.model.ResourceState$Error r2 = com.farsitel.bazaar.core.model.ResourceState.Error.f12177a
            boolean r1 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r2)
            if (r1 == 0) goto L_0x007c
            c.c.a.n.c.d.g r1 = r9.cb()
            c.c.a.n.c.c.t r1 = (c.c.a.n.c.c.t) r1
            r1.p()
            c.c.a.d.d.c r1 = r9.Qa()
            com.farsitel.bazaar.data.entity.ErrorModel r10 = r10.c()
            if (r10 == 0) goto L_0x0078
            java.lang.String r0 = r10.getMessage()
        L_0x0078:
            r1.a(r0)
            goto L_0x00a2
        L_0x007c:
            c.c.a.c.c.a r1 = c.c.a.c.c.a.f4699b
            java.lang.Throwable r2 = new java.lang.Throwable
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "invalid state "
            r3.append(r4)
            if (r10 == 0) goto L_0x0090
            com.farsitel.bazaar.core.model.ResourceState r0 = r10.d()
        L_0x0090:
            r3.append(r0)
            java.lang.String r10 = " in played video"
            r3.append(r10)
            java.lang.String r10 = r3.toString()
            r2.<init>(r10)
            r1.a((java.lang.Throwable) r2)
        L_0x00a2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.n.c.c.n.b(com.farsitel.bazaar.core.model.Resource):void");
    }

    public void a(PageViewConfigItem pageViewConfigItem) {
        j.b(pageViewConfigItem, "pageViewConfigItem");
        LocalAwareTextView localAwareTextView = (LocalAwareTextView) e(e.titleTextView);
        if (localAwareTextView != null) {
            PageTitleItem pageTitleItem = pageViewConfigItem.getPageTitleItem();
            localAwareTextView.setText(pageTitleItem != null ? pageTitleItem.getTitle() : null);
        }
        RecyclerView.a adapter = _a().getAdapter();
        if (!(adapter instanceof c.c.a.n.c.c.a.b)) {
            adapter = null;
        }
        c.c.a.n.c.c.a.b bVar = (c.c.a.n.c.c.a.b) adapter;
        if (bVar != null) {
            bVar.a(pageViewConfigItem);
        }
    }

    public final void a(EntityState entityState, PageAppItem pageAppItem) {
        j.b(entityState, "appState");
        j.b(pageAppItem, "pageAppItem");
        switch (a.f6293a[entityState.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                if (pageAppItem.isInlineOnly()) {
                    c(pageAppItem);
                    return;
                } else if (pageAppItem.getCanBeInstalled()) {
                    b(pageAppItem);
                    return;
                } else {
                    PaymentActivity.w.a(this, pageAppItem.getPackageName(), pageAppItem.getAppName());
                    return;
                }
            case 5:
            case 6:
            case 7:
            case 8:
                ((t) cb()).c((DownloadableEntity) pageAppItem);
                return;
            case 9:
                a(pageAppItem);
                return;
            case 10:
                d(pageAppItem);
                return;
            case 11:
                c.c.a.n.c.a.b.a(this, new MaliciousAppsUninstallButtonClick(pageAppItem.getPackageName(), c.c.a.c.d.d.a(new c.j(), null, 1, null)), new MaliciousAppsScreen(), null, 4, null);
                a(((t) cb()).c(pageAppItem.getPackageName()));
                return;
            default:
                return;
        }
    }

    public final void a(PageAppItem pageAppItem) {
        Intent a2 = ((t) cb()).a(pageAppItem);
        if (a2 == null) {
            b(pageAppItem);
            return;
        }
        Uri a3 = ((t) cb()).a(pageAppItem.getPackageName());
        Context E = E();
        if (a3 != null && E != null) {
            if (c.c.a.d.b.d.a(E, a2, a3)) {
                a(a2);
            } else {
                c.c.a.c.c.a.f4699b.b(new Throwable("there is no activity to handle install"));
            }
        }
    }

    public final void b(PageAppItem pageAppItem) {
        t tVar = (t) cb();
        c.c.a.c.h.e eVar = c.c.a.c.h.e.f4731a;
        C0285i Ga = Ga();
        j.a((Object) Ga, "requireActivity()");
        PackageInfo e2 = eVar.e(Ga, pageAppItem.getPackageName());
        tVar.a(pageAppItem, e2 != null ? Long.valueOf(c.c.a.c.b.h.b(e2)) : null);
    }

    public final void a(String str, String str2) {
        c.c.a.i.c.a(b.w.b.b.a(this), d.l.a(c.c.a.d.f4738a, str, str2, false, 4, (Object) null));
    }

    public final void b(String str, String str2) {
        c.c.a.i.c.a(b.w.b.b.a(this), c.c.a.d.f4738a.c(str, str2));
    }

    public final void b(String str, Integer num, String str2) {
        c.c.a.i.c.a(b.w.b.b.a(this), c.c.a.d.f4738a.c(str, num != null ? num.intValue() : 1, str2));
    }
}
