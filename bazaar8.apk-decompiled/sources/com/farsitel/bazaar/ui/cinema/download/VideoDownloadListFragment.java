package com.farsitel.bazaar.ui.cinema.download;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.r.E;
import b.r.G;
import c.c.a.c.d.c;
import c.c.a.c.d.e;
import c.c.a.d.b.h;
import c.c.a.n.c.d.k;
import c.c.a.n.j.b.c.b;
import c.c.a.n.j.c.f;
import c.c.a.n.j.c.g;
import c.c.a.n.j.c.l;
import com.farsitel.bazaar.R;
import com.farsitel.bazaar.analytics.model.what.DeleteVideoItemClick;
import com.farsitel.bazaar.analytics.model.what.DownloadVideoButtonClick;
import com.farsitel.bazaar.analytics.model.what.VideoDownloadClick;
import com.farsitel.bazaar.analytics.model.where.VideoDownloadListScreen;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.data.entity.None;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import h.c;
import h.d;
import h.f.b.j;
import h.i.i;
import java.util.HashMap;
import kotlin.jvm.internal.PropertyReference1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: VideoDownloadListFragment.kt */
public final class VideoDownloadListFragment extends k<DownloadedVideoItem, None, l> {
    public static final /* synthetic */ i[] ya;
    public b Aa;
    public final c Ba = d.a(new VideoDownloadListFragment$titleName$2(this));
    public boolean Ca;
    public HashMap Da;
    public int za = R.layout.view_empty_link_fehrest_video;

    static {
        PropertyReference1Impl propertyReference1Impl = new PropertyReference1Impl(h.f.b.k.a(VideoDownloadListFragment.class), "titleName", "getTitleName()Ljava/lang/String;");
        h.f.b.k.a((PropertyReference1) propertyReference1Impl);
        ya = new i[]{propertyReference1Impl};
    }

    public static final /* synthetic */ l b(VideoDownloadListFragment videoDownloadListFragment) {
        return (l) videoDownloadListFragment.cb();
    }

    public void La() {
        HashMap hashMap = this.Da;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    public int Wa() {
        return this.za;
    }

    public View e(int i2) {
        if (this.Da == null) {
            this.Da = new HashMap();
        }
        View view = (View) this.Da.get(Integer.valueOf(i2));
        if (view == null) {
            View aa = aa();
            if (aa == null) {
                return null;
            }
            view = aa.findViewById(i2);
            this.Da.put(Integer.valueOf(i2), view);
        }
        return view;
    }

    public boolean hb() {
        return this.Ca;
    }

    public /* synthetic */ void qa() {
        super.qa();
        La();
    }

    public c.c.a.n.c.d.l qb() {
        return new c.c.a.n.c.d.l(R.string.title_download_video_empty, R.drawable.ic_mybazaar_download, R.string.title_action_video_empty, new VideoDownloadListFragment$emptyViewData$1(this));
    }

    public String rb() {
        c cVar = this.Ba;
        i iVar = ya[0];
        return (String) cVar.getValue();
    }

    public final g tb() {
        return new g(this);
    }

    public final void ub() {
        ((l) cb()).k().a(ba(), new h(this));
    }

    public VideoDownloadListScreen Sa() {
        return new VideoDownloadListScreen();
    }

    public f Ua() {
        return new f(tb());
    }

    public None Za() {
        return None.INSTANCE;
    }

    public final void a(View view, DownloadedVideoItem downloadedVideoItem) {
        j.b(view, "view");
        j.b(downloadedVideoItem, "downloadedVideoItem");
        c.c.a.n.c.a.b.a(this, new DeleteVideoItemClick(downloadedVideoItem.getVideoId(), e.a()), null, null, 6, null);
        Context Ha = Ha();
        j.a((Object) Ha, "requireContext()");
        View inflate = c.c.a.d.b.d.c(Ha).inflate(R.layout.popup_delete, null);
        j.a((Object) inflate, "popupView");
        inflate.findViewById(R.id.deleteButton).setOnClickListener(new j(this, downloadedVideoItem, c.c.a.i.f.a(inflate, view)));
    }

    public void b(Bundle bundle) {
        super.b(bundle);
        E a2 = G.a((Fragment) this, Ra()).a(b.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        this.Aa = (b) a2;
    }

    public final void c(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "downloadedVideoItem");
        Uri uri = null;
        if (downloadedVideoItem.getEntityState().needToDownloadContinue()) {
            a(downloadedVideoItem.getVideoId(), downloadedVideoItem.getVideoName(), downloadedVideoItem.getVideoDesc(), downloadedVideoItem.getShareLink(), c.c.a.c.d.d.a(new c.h(), null, 1, null));
            return;
        }
        b bVar = this.Aa;
        if (bVar != null) {
            VideoPlayInfoModel a2 = bVar.a(downloadedVideoItem.getVideoId());
            if (a2 != null) {
                VideoPlayerActivity.a aVar = VideoPlayerActivity.u;
                String entityId = a2.getEntityId();
                Uri parse = Uri.parse(a2.getVideoUrl());
                j.a((Object) parse, "Uri.parse(this)");
                String waterMarkUrl = a2.getWaterMarkUrl();
                if (waterMarkUrl != null) {
                    uri = Uri.parse(waterMarkUrl);
                    j.a((Object) uri, "Uri.parse(this)");
                }
                c.c.a.l.f fVar = new c.c.a.l.f(entityId, parse, uri, a2.getSubtitles(), a2.getRefreshData(), a2.getReferrer());
                aVar.a((Fragment) this, fVar);
                return;
            }
            return;
        }
        j.c("playInfoViewModel");
        throw null;
    }

    public l jb() {
        E a2 = G.a((Fragment) this, Ra()).a(l.class);
        j.a((Object) a2, "ViewModelProviders.of(th…, factory)[T::class.java]");
        l lVar = (l) a2;
        h.a(this, lVar.g(), new VideoDownloadListFragment$makeViewModel$$inlined$createViewModel$lambda$1(this));
        lVar.j().a(ba(), new i(this));
        return lVar;
    }

    public final void b(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "downloadedVideoItem");
        String shareLink = downloadedVideoItem.getShareLink();
        if (shareLink != null) {
            Context E = E();
            Uri parse = Uri.parse(shareLink);
            j.a((Object) parse, "Uri.parse(this)");
            c.c.a.b.f.a(E, parse, (String) null, 4, (Object) null);
        }
    }

    public final void a(DownloadedVideoItem downloadedVideoItem) {
        j.b(downloadedVideoItem, "downloadedVideoItem");
        c.c.a.n.c.a.b.a(this, new VideoDownloadClick(EntityState.PAUSE, e.a()), null, null, 6, null);
        Ga().startService(((l) cb()).a(downloadedVideoItem.getVideoId()));
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        c.c.a.n.c.a.b.a(this, new DownloadVideoButtonClick(e.a()), null, null, 6, null);
        VideoDownloadFragment videoDownloadFragment = new VideoDownloadFragment();
        c.c.a.n.j.c.d dVar = new c.c.a.n.j.c.d(str, str2, str3, str4, str5);
        videoDownloadFragment.m(dVar.f());
        videoDownloadFragment.a(D(), (String) null);
    }
}
