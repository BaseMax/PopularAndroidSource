package c.c.a.e.d.i;

import c.c.a.c.b.d;
import c.c.a.c.e.a;
import c.c.a.e.d.h.e.a.a.n;
import c.c.a.e.g.b;
import c.c.a.e.g.g;
import com.farsitel.bazaar.common.model.DownloadStatus;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.common.model.VideoSubtitle;
import com.farsitel.bazaar.common.model.ui.CinemaFileState;
import com.farsitel.bazaar.data.entity.EntityType;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import com.farsitel.bazaar.data.feature.download.Downloader;
import com.farsitel.bazaar.data.model.VideoDownloadStep;
import h.a.k;
import h.a.u;
import h.f.b.j;
import h.h;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.b.p;
import i.a.b.t;
import i.a.b.x;
import java.io.File;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;

/* compiled from: VideoDownloadManager.kt */
public final class A extends DownloadManager {

    /* renamed from: j  reason: collision with root package name */
    public a f5147j;

    /* renamed from: k  reason: collision with root package name */
    public final LinkedHashMap<String, g> f5148k = new LinkedHashMap<>();

    /* renamed from: l  reason: collision with root package name */
    public final Object f5149l = new Object();
    public final boolean m = true;
    public final int n = 4;
    public final c.c.a.e.d.h.e.a.c.a o;
    public final q p;
    public final n q;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public A(c.c.a.e.d.h.e.a.c.a aVar, q qVar, n nVar, b bVar, Downloader downloader, r rVar) {
        super(bVar, qVar, downloader, rVar);
        j.b(aVar, "submitDownloadRepository");
        j.b(qVar, "fileDownloadHelper");
        j.b(nVar, "videoStorage");
        j.b(bVar, "downloadConfig");
        j.b(downloader, "downloader");
        j.b(rVar, "networkStateHelper");
        this.o = aVar;
        this.p = qVar;
        this.q = nVar;
    }

    public t<DownloadStatus> e(String str) {
        j.b(str, "entityId");
        t<DownloadStatus> e2 = super.e(str);
        g gVar = this.f5148k.get(str);
        if (gVar != null) {
            p<DownloadStatus> c2 = gVar.c();
            if (c2 != null) {
                t<DownloadStatus> b2 = c2.b();
                if (b2 != null) {
                    return b2;
                }
            }
        }
        return e2;
    }

    public void g(String str) {
        j.b(str, "entityId");
        super.g(str);
        synchronized (this.f5149l) {
            Collection<g> values = this.f5148k.values();
            j.a((Object) values, "videoDownloadModelHolder.values");
            List<T> h2 = u.h(values);
            boolean z = false;
            if ((!h2.isEmpty()) && j.a((Object) ((g) h2.get(0)).e(), (Object) str)) {
                z = true;
            }
            g gVar = this.f5148k.get(str);
            if (gVar != null) {
                p<DownloaderProgressInfo> f2 = gVar.f();
                if (f2 != null) {
                    x.a.a(f2, null, 1, null);
                }
            }
            this.f5148k.remove(str);
            if (z) {
                e();
            }
            h hVar = h.f14579a;
        }
    }

    public final void i(String str) {
        g gVar = this.f5148k.get(str);
        if (gVar != null) {
            List<VideoSubtitle> b2 = gVar.b();
            if ((b2 != null ? b2.size() : 0) > 0) {
                List<VideoSubtitle> b3 = gVar.b();
                if (b3 == null) {
                    j.a();
                    throw null;
                } else if (b3.get(0).getUrl() != null) {
                    EntityType entityType = EntityType.SUBTITLE;
                    String url = gVar.b().get(0).getUrl();
                    if (url != null) {
                        DownloadManager.a(this, str, entityType, k.a(url), null, null, null, null, 0, this.m, false, 640, null);
                        return;
                    } else {
                        j.a();
                        throw null;
                    }
                }
            }
            gVar.a(VideoDownloadStep.VIDEO);
            k(str);
        }
    }

    public final void j(String str) {
        C1125ra unused = C1103g.b(this, null, null, new VideoDownloadManager$listenOnDownloadVideo$1(this, str, null), 3, null);
    }

    public final h k(String str) {
        g gVar = this.f5148k.get(str);
        if (gVar == null) {
            return null;
        }
        int i2 = z.f5215a[gVar.d().ordinal()];
        if (i2 == 1) {
            DownloadManager.a(this, str, EntityType.COVER, k.a(gVar.a()), null, null, null, null, 0, this.m, false, 640, null);
        } else if (i2 == 2) {
            i(str);
        } else if (i2 == 3) {
            EntityType entityType = EntityType.VIDEO;
            List<String> g2 = gVar.g();
            a aVar = this.f5147j;
            if (aVar != null) {
                String str2 = str;
                DownloadManager.a(this, str2, entityType, g2, null, null, null, aVar.d(), this.n, this.m, false, 512, null);
            } else {
                j.c("aesCrypt");
                throw null;
            }
        }
        j(str);
        return h.f14579a;
    }

    public final void l(String str) {
        j.b(str, "entityId");
        String str2 = str;
        VideoDownloadManager$submitDownload$3 videoDownloadManager$submitDownload$3 = new VideoDownloadManager$submitDownload$3(this, str2, new VideoDownloadManager$submitDownload$2(this, str), new VideoDownloadManager$submitDownload$1(this, str), null);
        C1125ra unused = C1103g.b(this, null, null, videoDownloadManager$submitDownload$3, 3, null);
    }

    public t<DownloaderProgressInfo> d(String str) {
        j.b(str, "entityId");
        C1125ra unused = C1103g.b(this, null, null, new VideoDownloadManager$getProgressPublishSubject$1(this, str, null), 3, null);
        g gVar = this.f5148k.get(str);
        if (gVar == null) {
            return null;
        }
        p<DownloaderProgressInfo> f2 = gVar.f();
        if (f2 != null) {
            return f2.b();
        }
        return null;
    }

    public void b(String str) {
        j.b(str, "entityId");
        super.b(str);
        a(str, DownloadStatus.FAILED_STORAGE);
    }

    public final void a(String str, List<String> list, String str2, List<VideoSubtitle> list2) {
        j.b(str, "videoId");
        j.b(list, "videoUrl");
        j.b(str2, "coverUrl");
        g gVar = new g(str, list, str2, list2 != null ? u.a(list2) : null, null, null, null, 112, null);
        this.f5148k.put(str, gVar);
        if (this.q.a(str, e(str) != null) == CinemaFileState.EXISTS) {
            l(str);
            return;
        }
        synchronized (this.f5149l) {
            if (this.f5148k.size() == 1) {
                k(str);
                j(str);
            }
            h hVar = h.f14579a;
        }
    }

    public final void e() {
        synchronized (this.f5149l) {
            Collection<g> values = this.f5148k.values();
            j.a((Object) values, "videoDownloadModelHolder.values");
            List<T> h2 = u.h(values);
            if (!h2.isEmpty()) {
                String e2 = ((g) h2.get(0)).e();
                k(e2);
                j(e2);
            }
            h hVar = h.f14579a;
        }
    }

    public final File b(String str, EntityType entityType) {
        return this.p.a(str, entityType, this.m);
    }

    public void a(String str, EntityType entityType) {
        j.b(str, "entityId");
        j.b(entityType, "entityType");
        super.a(str, entityType);
        try {
            g gVar = this.f5148k.get(str);
            if (gVar != null) {
                int i2 = z.f5216b[gVar.d().ordinal()];
                if (i2 == 1) {
                    j.a((Object) gVar, "videoDownloadModel");
                    a(str, gVar);
                    gVar.a(VideoDownloadStep.SUBTITLE);
                    k(str);
                } else if (i2 == 2) {
                    j.a((Object) gVar, "videoDownloadModel");
                    a(str, gVar);
                    List<VideoSubtitle> b2 = gVar.b();
                    if (b2 != null) {
                        VideoSubtitle remove = b2.remove(0);
                    }
                    List<VideoSubtitle> b3 = gVar.b();
                    if (b3 != null && b3.size() == 0) {
                        this.q.c(str).createNewFile();
                    }
                    i(str);
                } else if (i2 == 3) {
                    C1125ra unused = C1103g.b(this, null, null, new VideoDownloadManager$downloadCompleted$$inlined$let$lambda$1(null, this, str), 3, null);
                    l(str);
                } else {
                    throw new NoWhenBranchMatchedException();
                }
            }
        } catch (IllegalStateException unused2) {
            a(str);
        }
    }

    public final void a(String str, g gVar) {
        File file;
        File file2;
        int i2 = z.f5217c[gVar.d().ordinal()];
        if (i2 == 1) {
            file = b(str, EntityType.COVER);
        } else if (i2 == 2) {
            file = b(str, EntityType.SUBTITLE);
        } else if (i2 != 3) {
            throw new NoWhenBranchMatchedException();
        } else {
            throw new IllegalStateException("invalid state");
        }
        if (file.exists()) {
            int i3 = z.f5218d[gVar.d().ordinal()];
            if (i3 == 1) {
                file2 = this.q.a(str);
            } else if (i3 == 2) {
                file2 = new File(this.q.b(str), gVar.b() != null ? gVar.b().get(0).getName() : null);
            } else if (i3 != 3) {
                throw new NoWhenBranchMatchedException();
            } else {
                throw new IllegalStateException("invalid state");
            }
            if (!j.a((Object) file.getPath(), (Object) file2.getPath())) {
                d.b(file, file2);
                return;
            }
            return;
        }
        throw new IllegalStateException("temp file not exists to move ");
    }

    public void a(String str) {
        j.b(str, "entityId");
        super.a(str);
        a(str, DownloadStatus.FAILED);
    }

    public final void a(String str, DownloadStatus downloadStatus) {
        C1125ra unused = C1103g.b(this, null, null, new VideoDownloadManager$videoDownloadFailed$1(this, str, downloadStatus, null), 3, null);
    }
}
