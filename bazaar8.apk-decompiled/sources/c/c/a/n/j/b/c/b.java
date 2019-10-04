package c.c.a.n.j.b.c;

import android.net.Uri;
import androidx.lifecycle.LiveData;
import c.c.a.c.d.c;
import c.c.a.c.d.d;
import c.c.a.c.d.e;
import c.c.a.c.h.g;
import c.c.a.d.f.p;
import c.c.a.e.d.h.e.a;
import c.c.a.e.d.h.e.a.a.n;
import com.crashlytics.android.answers.SessionEventTransform;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.VideoPurchaseState;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails;
import com.farsitel.bazaar.common.model.cinema.VideoPlayInfoModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.cinema.common.viewmodel.PlayInfoType;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.io.File;
import java.util.ArrayList;

/* compiled from: PlayInfoViewModel.kt */
public final class b extends p {

    /* renamed from: d  reason: collision with root package name */
    public PlayedVideoModel f6468d;

    /* renamed from: e  reason: collision with root package name */
    public final g<Resource<VideoPlayInfoModel>> f6469e = new g<>();

    /* renamed from: f  reason: collision with root package name */
    public C1125ra f6470f;

    /* renamed from: g  reason: collision with root package name */
    public String f6471g = e.a();

    /* renamed from: h  reason: collision with root package name */
    public final a f6472h;

    /* renamed from: i  reason: collision with root package name */
    public final c.c.a.e.d.h.d.a.a f6473i;

    /* renamed from: j  reason: collision with root package name */
    public final n f6474j;

    /* renamed from: k  reason: collision with root package name */
    public final c.c.a.e.d.n.b f6475k;

    public b(a aVar, c.c.a.e.d.h.d.a.a aVar2, n nVar, c.c.a.e.d.n.b bVar) {
        j.b(aVar, "videoDetailRepository");
        j.b(aVar2, "episodeDetailRepository");
        j.b(nVar, "videoStorage");
        j.b(bVar, "playedVideoRepository");
        this.f6472h = aVar;
        this.f6473i = aVar2;
        this.f6474j = nVar;
        this.f6475k = bVar;
    }

    public final LiveData<Resource<VideoPlayInfoModel>> e() {
        return this.f6469e;
    }

    public final void a(PlayedVideoModel playedVideoModel, PlayInfoType playInfoType, String str) {
        j.b(playedVideoModel, "playedVideoModel");
        j.b(playInfoType, SessionEventTransform.TYPE_KEY);
        j.b(str, "referrer");
        this.f6471g = str;
        C1125ra raVar = this.f6470f;
        if (raVar != null) {
            C1125ra.a.a(raVar, null, 1, null);
        }
        this.f6468d = playedVideoModel;
        PlayInfoViewModel$getPlayInfo$1 playInfoViewModel$getPlayInfo$1 = new PlayInfoViewModel$getPlayInfo$1(this, playedVideoModel, playInfoType, str, null);
        this.f6470f = C1103g.b(this, null, null, playInfoViewModel$getPlayInfo$1, 3, null);
    }

    public final VideoPlayInfoModel a(String str) {
        ArrayList arrayList;
        String str2 = str;
        j.b(str2, "videoId");
        File d2 = this.f6474j.d(str2);
        File b2 = this.f6474j.b(str2);
        if (d2.exists()) {
            c.c.a.c.c.a.a(c.c.a.c.c.a.f4699b, "Load video from cache", null, null, 6, null);
            VideoPurchaseState videoPurchaseState = VideoPurchaseState.BOUGHT;
            String path = d2.getPath();
            j.a((Object) path, "cachedVideo.path");
            String a2 = d.a(new c.h(), null, 1, null);
            PlayedVideoDetails playedVideoDetails = new PlayedVideoDetails(null, null, 3, null);
            File[] listFiles = b2.listFiles();
            if (listFiles != null) {
                ArrayList arrayList2 = new ArrayList(listFiles.length);
                for (File file : listFiles) {
                    j.a((Object) file, "it");
                    String name = file.getName();
                    j.a((Object) name, "it.name");
                    Uri fromFile = Uri.fromFile(file);
                    j.a((Object) fromFile, "Uri.fromFile(it)");
                    arrayList2.add(new VideoSubtitle(name, fromFile));
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            VideoPlayInfoModel videoPlayInfoModel = new VideoPlayInfoModel(str, videoPurchaseState, path, null, null, arrayList, playedVideoDetails, a2, 24, null);
            return videoPlayInfoModel;
        }
        c.c.a.c.c.a.a(c.c.a.c.c.a.f4699b, "Video not exists in cache", null, null, 6, null);
        return null;
    }

    public final VideoPlayInfoModel a(String str, File file, File file2) {
        VideoPurchaseState videoPurchaseState = VideoPurchaseState.BOUGHT;
        String path = file.getPath();
        j.a((Object) path, "cachedVideo.path");
        String a2 = e.a();
        ArrayList arrayList = null;
        PlayedVideoDetails playedVideoDetails = new PlayedVideoDetails(null, null, 3, null);
        File[] listFiles = file2.listFiles();
        if (listFiles != null) {
            arrayList = new ArrayList(listFiles.length);
            for (File file3 : listFiles) {
                j.a((Object) file3, "it");
                String name = file3.getName();
                j.a((Object) name, "it.name");
                Uri fromFile = Uri.fromFile(file3);
                j.a((Object) fromFile, "Uri.fromFile(it)");
                arrayList.add(new VideoSubtitle(name, fromFile));
            }
        }
        VideoPlayInfoModel videoPlayInfoModel = new VideoPlayInfoModel(str, videoPurchaseState, path, null, null, arrayList, playedVideoDetails, a2, 24, null);
        c.c.a.c.c.a.a(c.c.a.c.c.a.f4699b, "VideoPlayInfoModel loaded from disk, " + videoPlayInfoModel, null, null, 6, null);
        return videoPlayInfoModel;
    }

    public final void a(ErrorModel errorModel) {
        g<Resource<VideoPlayInfoModel>> gVar = this.f6469e;
        Resource resource = new Resource(ResourceState.Error.f12177a, null, errorModel, 2, null);
        gVar.b(resource);
    }

    public final void a(VideoPlayInfoModel videoPlayInfoModel) {
        a(new PlayInfoViewModel$successPlayInfo$1(this, videoPlayInfoModel, null));
        g<Resource<VideoPlayInfoModel>> gVar = this.f6469e;
        Resource resource = new Resource(ResourceState.Success.f12179a, videoPlayInfoModel, null, 4, null);
        gVar.b(resource);
    }
}
