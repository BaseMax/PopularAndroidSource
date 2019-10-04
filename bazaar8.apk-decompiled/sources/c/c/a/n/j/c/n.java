package c.c.a.n.j.c;

import android.content.Context;
import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.b.d.o;
import c.c.a.d.f.p;
import c.c.a.e.d.h.e.a.a;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.VideoDownloadItemModel;
import com.farsitel.bazaar.common.model.VideoDownloadQuality;
import com.farsitel.bazaar.common.model.VideoDownloadQualityInfo;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.core.model.VideoDownloadState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityItem;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* compiled from: VideoDownloadViewModel.kt */
public final class n extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource<List<RecyclerData>>> f6505d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public String f6506e;

    /* renamed from: f  reason: collision with root package name */
    public String f6507f;

    /* renamed from: g  reason: collision with root package name */
    public String f6508g;

    /* renamed from: h  reason: collision with root package name */
    public String f6509h;

    /* renamed from: i  reason: collision with root package name */
    public String f6510i;

    /* renamed from: j  reason: collision with root package name */
    public VideoDownloadQuality f6511j;

    /* renamed from: k  reason: collision with root package name */
    public final a f6512k;

    /* renamed from: l  reason: collision with root package name */
    public final Context f6513l;
    public final c.c.a.e.d.h.e.a.a.n m;
    public final o n;

    public n(a aVar, Context context, c.c.a.e.d.h.e.a.a.n nVar, o oVar) {
        j.b(aVar, "downloadRepository");
        j.b(context, "context");
        j.b(nVar, "videoStorage");
        j.b(oVar, "videoManager");
        this.f6512k = aVar;
        this.f6513l = context;
        this.m = nVar;
        this.n = oVar;
    }

    public final LiveData<Resource<List<RecyclerData>>> e() {
        return this.f6505d;
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        j.b(str, "videoId");
        j.b(str2, "videoName");
        j.b(str5, "referrer");
        this.f6506e = str2;
        this.f6507f = str;
        this.f6509h = str3;
        this.f6510i = str4;
        this.f6505d.b(new Resource(ResourceState.Loading.f12178a, null, null));
        C1125ra unused = C1103g.b(this, null, null, new VideoDownloadViewModel$getVideoDownloadQuality$1(this, str, str5, null), 3, null);
    }

    public final void a(VideoDownloadQuality videoDownloadQuality) {
        VideoDownloadItemModel videoDownloadItemModel;
        ResourceState resourceState;
        T t;
        this.f6511j = videoDownloadQuality;
        if (this.f6508g != null) {
            Iterator<T> it = videoDownloadQuality.getInfo().getVideoDownloadItemModels().iterator();
            while (true) {
                if (!it.hasNext()) {
                    t = null;
                    break;
                }
                t = it.next();
                if (j.a((Object) ((VideoDownloadItemModel) t).getId(), (Object) this.f6508g)) {
                    break;
                }
            }
            videoDownloadItemModel = (VideoDownloadItemModel) t;
        } else {
            videoDownloadItemModel = null;
        }
        if (videoDownloadItemModel != null) {
            a(c.c.a.n.j.e.a.a(videoDownloadItemModel, this.f6513l, 0));
            resourceState = VideoDownloadState.Dismiss.f12182a;
        } else {
            resourceState = ResourceState.Success.f12179a;
        }
        ResourceState resourceState2 = resourceState;
        t<Resource<List<RecyclerData>>> tVar = this.f6505d;
        Context context = this.f6513l;
        String str = this.f6506e;
        if (str != null) {
            Resource resource = new Resource(resourceState2, c.c.a.n.j.e.a.a(videoDownloadQuality, context, str, this.m.a()), null, 4, null);
            tVar.b(resource);
            return;
        }
        j.c("videoName");
        throw null;
    }

    public final void a(ErrorModel errorModel) {
        t<Resource<List<RecyclerData>>> tVar = this.f6505d;
        ResourceState.Error error = ResourceState.Error.f12177a;
        Resource a2 = tVar.a();
        tVar.b(new Resource(error, a2 != null ? (List) a2.a() : null, errorModel));
    }

    public final void a(VideoDownloadQualityItem videoDownloadQualityItem) {
        j.b(videoDownloadQualityItem, "qualityItem");
        o oVar = this.n;
        VideoDownloadQuality videoDownloadQuality = this.f6511j;
        if (videoDownloadQuality != null) {
            VideoDownloadQualityInfo info = videoDownloadQuality.getInfo();
            String str = this.f6507f;
            if (str != null) {
                String str2 = this.f6506e;
                if (str2 != null) {
                    oVar.a(a(videoDownloadQualityItem, info, str, str2));
                } else {
                    j.c("videoName");
                    throw null;
                }
            } else {
                j.c("videoId");
                throw null;
            }
        } else {
            j.a();
            throw null;
        }
    }

    public final VideoDownloaderModel a(VideoDownloadQualityItem videoDownloadQualityItem, VideoDownloadQualityInfo videoDownloadQualityInfo, String str, String str2) {
        String b2 = videoDownloadQualityItem.b();
        List<VideoSubtitle> subtitles = videoDownloadQualityInfo.getSubtitles();
        String coverVideo = videoDownloadQualityInfo.getCoverVideo();
        for (VideoDownloadItemModel videoDownloadItemModel : videoDownloadQualityInfo.getVideoDownloadItemModels()) {
            if (j.a((Object) videoDownloadItemModel.getId(), (Object) videoDownloadQualityItem.b())) {
                VideoDownloaderModel videoDownloaderModel = new VideoDownloaderModel(b2, str, subtitles, coverVideo, videoDownloadItemModel.getUrl(), str2, this.f6510i, this.f6509h, videoDownloadQualityItem.c(), videoDownloadQualityInfo.getPurchaseState(), videoDownloadQualityInfo.getExpireTime(), videoDownloadQualityInfo.getReferrer());
                return videoDownloaderModel;
            }
        }
        throw new NoSuchElementException("Collection contains no element matching the predicate.");
    }
}
