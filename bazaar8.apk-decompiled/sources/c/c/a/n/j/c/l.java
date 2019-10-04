package c.c.a.n.j.c;

import android.content.Context;
import android.content.Intent;
import androidx.lifecycle.LiveData;
import b.r.r;
import b.r.t;
import c.c.a.b.d.o;
import c.c.a.c.b.f;
import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.d.h.e.a.c;
import c.c.a.n.c.d.g;
import c.c.a.n.j.e.b;
import com.farsitel.bazaar.app.download.DownloadService;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.data.entity.None;
import h.a.m;
import h.a.u;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: VideoDownloadListViewModel.kt */
public final class l extends g<DownloadedVideoItem, None> {

    /* renamed from: j  reason: collision with root package name */
    public final t<Integer> f6498j = new t<>();

    /* renamed from: k  reason: collision with root package name */
    public final r<Map<String, EntityState>> f6499k = new r<>();

    /* renamed from: l  reason: collision with root package name */
    public final c f6500l;
    public final n m;
    public final o n;
    public final Context o;

    public l(c cVar, n nVar, o oVar, Context context) {
        j.b(cVar, "videoDownloadedRepository");
        j.b(nVar, "videoStorage");
        j.b(oVar, "videoManager");
        j.b(context, "context");
        this.f6500l = cVar;
        this.m = nVar;
        this.n = oVar;
        this.o = context;
        this.f6499k.a(this.n.c(), new k(this));
    }

    public final LiveData<Integer> j() {
        return this.f6498j;
    }

    public final r<Map<String, EntityState>> k() {
        return this.f6499k;
    }

    public final void b(String str) {
        j.b(str, "videoId");
        a(new VideoDownloadListViewModel$onDeleteClicked$1(this, str, null));
    }

    public final void c(String str) {
        C1125ra unused = C1103g.b(this, null, null, new VideoDownloadListViewModel$submitVideoDownload$1(this, str, null), 3, null);
    }

    public final List<DownloadedVideoItem> b(List<DownloadedVideoModel> list) {
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (DownloadedVideoModel downloadedVideoModel : list) {
            EntityState l2 = this.n.l(downloadedVideoModel.getVideoId());
            a(downloadedVideoModel.getVideoId(), l2);
            String path = this.m.a(downloadedVideoModel.getVideoId()).getPath();
            j.a((Object) path, "videoStorage.getBazaarCo…yVideoId(it.videoId).path");
            DownloadedVideoItem a2 = b.a(downloadedVideoModel, path, f.a(this.m.f(downloadedVideoModel.getVideoId()), this.o), l2);
            if (a2.getNeedToSubmitDownload()) {
                c(a2.getVideoId());
            }
            arrayList.add(a2);
        }
        return u.h(h.a.r.d(arrayList));
    }

    /* renamed from: a */
    public void d(None none) {
        j.b(none, "params");
        C1125ra unused = C1103g.b(this, null, null, new VideoDownloadListViewModel$makeData$1(this, null), 3, null);
    }

    public final void a(LiveData<List<DownloadedVideoModel>> liveData) {
        a(liveData, new VideoDownloadListViewModel$handleVideoDownloaded$1(this));
    }

    public final Intent a(String str) {
        j.b(str, "videoId");
        Intent intent = new Intent(this.o, DownloadService.class);
        intent.putExtras(DownloadService.f12108b.a(str));
        intent.setAction("STOP");
        return intent;
    }

    public final void a(Map<String, ? extends EntityState> map) {
        j.b(map, "entitiesState");
        Resource e2 = e();
        if (e2 != null) {
            List list = (List) e2.a();
            if (list != null) {
                int i2 = 0;
                for (Object next : list) {
                    int i3 = i2 + 1;
                    if (i2 >= 0) {
                        DownloadedVideoItem downloadedVideoItem = (DownloadedVideoItem) next;
                        String entityId = downloadedVideoItem.getEntityId();
                        EntityState entityState = downloadedVideoItem.getEntityState();
                        if (map.containsKey(entityId)) {
                            EntityState entityState2 = (EntityState) map.get(entityId);
                            if (entityState2 == null) {
                                throw new IllegalStateException("WTF, we check contain");
                            } else if (entityState2 != entityState) {
                                downloadedVideoItem.setEntityState(entityState2);
                                a(downloadedVideoItem.getEntityId(), entityState2);
                                this.f6498j.b(Integer.valueOf(i2));
                            }
                        } else if (entityState != EntityState.NONE) {
                            EntityState l2 = this.n.l(downloadedVideoItem.getEntityId());
                            if (downloadedVideoItem.getEntityState() != l2) {
                                downloadedVideoItem.setEntityState(l2);
                                downloadedVideoItem.setProgressInfo(null);
                                this.f6498j.b(Integer.valueOf(i2));
                            }
                        }
                        i2 = i3;
                    } else {
                        h.a.l.b();
                        throw null;
                    }
                }
            }
        }
    }

    public final void a(String str, EntityState entityState) {
        if (entityState == EntityState.DOWNLOADING) {
            C1125ra unused = C1103g.b(this, null, null, new VideoDownloadListViewModel$registerOnProgressChange$1(this, str, null), 3, null);
        }
    }
}
