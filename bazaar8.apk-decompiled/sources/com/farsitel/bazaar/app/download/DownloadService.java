package com.farsitel.bazaar.app.download;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import c.c.a.b.b.b;
import c.c.a.e.d.b.C0383m;
import c.c.a.e.d.i.A;
import c.c.a.e.d.i.C0398c;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.analytics.model.what.DownloadActionEvent;
import com.farsitel.bazaar.analytics.model.what.DownloadEvent;
import com.farsitel.bazaar.analytics.model.where.DownloaderService;
import com.farsitel.bazaar.app.notification.NotificationType;
import com.farsitel.bazaar.common.model.ui.AppDownloaderModel;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.common.model.ui.VideoDownloaderModel;
import com.farsitel.bazaar.data.entity.UpgradableApp;
import com.farsitel.bazaar.data.feature.download.DownloadManager;
import d.a.f;
import h.a.m;
import h.c.e;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.C1128u;
import i.a.H;
import i.a.b.h;
import i.a.b.i;
import i.a.b.t;
import i.a.va;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* compiled from: DownloadService.kt */
public final class DownloadService extends f implements H {

    /* renamed from: a  reason: collision with root package name */
    public static final h<b> f12107a = i.a(1);

    /* renamed from: b  reason: collision with root package name */
    public static final a f12108b = new a(null);

    /* renamed from: c  reason: collision with root package name */
    public final C1128u f12109c = va.a(null, 1, null);

    /* renamed from: d  reason: collision with root package name */
    public final e f12110d = c.c.a.c.a.b.f4693c.b().plus(this.f12109c);

    /* renamed from: e  reason: collision with root package name */
    public final Object f12111e = new Object();

    /* renamed from: f  reason: collision with root package name */
    public final HashSet<String> f12112f = new HashSet<>();

    /* renamed from: g  reason: collision with root package name */
    public DownloadManager f12113g;

    /* renamed from: h  reason: collision with root package name */
    public A f12114h;

    /* renamed from: i  reason: collision with root package name */
    public C0398c f12115i;

    /* renamed from: j  reason: collision with root package name */
    public C0383m f12116j;

    /* renamed from: k  reason: collision with root package name */
    public c.c.a.d.g.a.a f12117k;

    /* renamed from: l  reason: collision with root package name */
    public c.c.a.b.d.b f12118l;
    public c.c.a.e.d.u.a m;

    /* compiled from: DownloadService.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(h.f.b.f fVar) {
            this();
        }

        public final t<b> a() {
            return DownloadService.f12107a.b();
        }

        public final AppDownloaderModel b(Bundle bundle) {
            if (bundle != null) {
                return (AppDownloaderModel) bundle.getParcelable("downloader");
            }
            return null;
        }

        public final VideoDownloaderModel c(Bundle bundle) {
            Serializable serializable = bundle != null ? bundle.getSerializable("downloader") : null;
            if (!(serializable instanceof VideoDownloaderModel)) {
                serializable = null;
            }
            return (VideoDownloaderModel) serializable;
        }

        public final String d(Bundle bundle) {
            if (bundle != null) {
                return bundle.getString("packageName");
            }
            return null;
        }

        public final Bundle a(AppDownloaderModel appDownloaderModel) {
            j.b(appDownloaderModel, "appDownloaderModel");
            Bundle bundle = new Bundle();
            bundle.putParcelable("downloader", appDownloaderModel);
            return bundle;
        }

        public final Bundle a(String str) {
            j.b(str, "packageName");
            Bundle bundle = new Bundle();
            bundle.putString("packageName", str);
            return bundle;
        }

        public final Bundle a(VideoDownloaderModel videoDownloaderModel) {
            j.b(videoDownloaderModel, "appDownloaderModel");
            Bundle bundle = new Bundle();
            bundle.putSerializable("downloader", videoDownloaderModel);
            return bundle;
        }

        public final Bundle a(List<UpgradableApp> list) {
            j.b(list, "value");
            Bundle bundle = new Bundle();
            ArrayList arrayList = new ArrayList(m.a(list, 10));
            for (UpgradableApp a2 : list) {
                arrayList.add(c.c.a.n.g.a.a(a2));
            }
            bundle.putSerializable("batchDownloader", new ArrayList(arrayList));
            return bundle;
        }

        public final List<AppDownloaderModel> a(Bundle bundle) {
            return (List) (bundle != null ? bundle.getSerializable("batchDownloader") : null);
        }
    }

    public void attachBaseContext(Context context) {
        j.b(context, "newBase");
        super.attachBaseContext(c.c.a.d.g.b.f4814b.b(context));
    }

    public final C0398c c() {
        C0398c cVar = this.f12115i;
        if (cVar != null) {
            return cVar;
        }
        j.c("downloadInfoRepository");
        throw null;
    }

    public final C0383m d() {
        C0383m mVar = this.f12116j;
        if (mVar != null) {
            return mVar;
        }
        j.c("downloadedAppRepository");
        throw null;
    }

    public final A e() {
        A a2 = this.f12114h;
        if (a2 != null) {
            return a2;
        }
        j.c("videoDownloadManager");
        throw null;
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int i2, int i3) {
        String action = intent != null ? intent.getAction() : null;
        if (action != null) {
            switch (action.hashCode()) {
                case -2084521848:
                    if (action.equals("DOWNLOAD")) {
                        b("DOWNLOAD");
                        AppDownloaderModel b2 = f12108b.b(intent.getExtras());
                        if (b2 != null) {
                            d(b2);
                            break;
                        }
                    }
                    break;
                case -2040174579:
                    if (action.equals("BATCH_DOWNLOAD")) {
                        b("BATCH_DOWNLOAD");
                        List<AppDownloaderModel> a2 = f12108b.a(intent.getExtras());
                        if (a2 != null) {
                            for (AppDownloaderModel d2 : a2) {
                                d(d2);
                            }
                            break;
                        }
                    }
                    break;
                case -1796252732:
                    if (action.equals("STOP_ALL")) {
                        b("STOP_ALL");
                        synchronized (this.f12111e) {
                            this.f12112f.clear();
                            DownloadManager downloadManager = this.f12113g;
                            if (downloadManager != null) {
                                downloadManager.d();
                                a(this, DownloadServiceNotifyType.STOP_ALL, "", (Boolean) null, 4, (Object) null);
                                c.c.a.b.f.h.f4687h.a();
                                stopForeground(true);
                                stopSelf();
                                h.h hVar = h.h.f14579a;
                                break;
                            } else {
                                j.c("downloadManager");
                                throw null;
                            }
                        }
                    }
                    break;
                case -58555412:
                    if (action.equals("VIDEO_DOWNLOAD")) {
                        b("VIDEO_DOWNLOAD");
                        VideoDownloaderModel c2 = f12108b.c(intent.getExtras());
                        if (c2 != null) {
                            b(c2);
                            break;
                        }
                    }
                    break;
                case 2555906:
                    if (action.equals("STOP")) {
                        b("STOP");
                        String d3 = f12108b.d(intent.getExtras());
                        if (d3 != null) {
                            c(d3);
                            stopForeground(true);
                            stopSelf();
                            break;
                        }
                    }
                    break;
            }
        }
        return 1;
    }

    public final void c(AppDownloaderModel appDownloaderModel) {
        DownloadManager downloadManager = this.f12113g;
        if (downloadManager != null) {
            C1125ra unused = C1103g.b(this, null, null, new DownloadService$listenOnAppStatus$1(this, appDownloaderModel, downloadManager.e(appDownloaderModel.getPackageName()), null), 3, null);
            return;
        }
        j.c("downloadManager");
        throw null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x006c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d(com.farsitel.bazaar.common.model.ui.AppDownloaderModel r17) {
        /*
            r16 = this;
            r0 = r16
            java.lang.String r1 = r17.getToken()
            if (r1 != 0) goto L_0x000d
            r16.b((com.farsitel.bazaar.common.model.ui.AppDownloaderModel) r17)
            goto L_0x008c
        L_0x000d:
            java.util.List r1 = r17.getCdnPrefixes()
            if (r1 == 0) goto L_0x0072
            java.math.BigInteger r1 = r17.getHash()
            if (r1 == 0) goto L_0x0072
            boolean r1 = r17.getDiffDownloadExists()
            r2 = 0
            if (r1 == 0) goto L_0x0036
            c.c.a.e.d.u.a r1 = r0.m
            if (r1 == 0) goto L_0x0030
            boolean r1 = r1.v()
            if (r1 == 0) goto L_0x0036
            java.util.List r1 = r17.getDownloadDiffUrl()
            r7 = r1
            goto L_0x0037
        L_0x0030:
            java.lang.String r1 = "settingsRepository"
            h.f.b.j.c(r1)
            throw r2
        L_0x0036:
            r7 = r2
        L_0x0037:
            com.farsitel.bazaar.data.feature.download.DownloadManager r3 = r0.f12113g
            if (r3 == 0) goto L_0x006c
            java.lang.String r4 = r17.getPackageName()
            com.farsitel.bazaar.data.entity.EntityType r5 = com.farsitel.bazaar.data.entity.EntityType.DIFF_APP
            java.util.List r6 = r17.getDownloadUrl()
            java.math.BigInteger r8 = r17.getHash()
            java.math.BigInteger r9 = r17.getDiffHash()
            r10 = 0
            r11 = 0
            r12 = 0
            r13 = 0
            r14 = 960(0x3c0, float:1.345E-42)
            r15 = 0
            com.farsitel.bazaar.data.feature.download.DownloadManager.a(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15)
            r16.c((com.farsitel.bazaar.common.model.ui.AppDownloaderModel) r17)
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r1 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.SUCCESS_DOWNLOAD_INFO
            java.lang.String r2 = r17.getPackageName()
            boolean r3 = r17.isFree()
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r0.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r1, (java.lang.String) r2, (java.lang.Boolean) r3)
            goto L_0x0083
        L_0x006c:
            java.lang.String r1 = "downloadManager"
            h.f.b.j.c(r1)
            throw r2
        L_0x0072:
            com.farsitel.bazaar.app.download.DownloadServiceNotifyType r1 = com.farsitel.bazaar.app.download.DownloadServiceNotifyType.UNKNOWN_ERROR
            java.lang.String r2 = r17.getPackageName()
            boolean r3 = r17.isFree()
            java.lang.Boolean r3 = java.lang.Boolean.valueOf(r3)
            r0.a((com.farsitel.bazaar.app.download.DownloadServiceNotifyType) r1, (java.lang.String) r2, (java.lang.Boolean) r3)
        L_0x0083:
            java.util.HashSet<java.lang.String> r1 = r0.f12112f
            java.lang.String r2 = r17.getPackageName()
            r1.remove(r2)
        L_0x008c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.app.download.DownloadService.d(com.farsitel.bazaar.common.model.ui.AppDownloaderModel):void");
    }

    public final void b(VideoDownloaderModel videoDownloaderModel) {
        A a2 = this.f12114h;
        if (a2 != null) {
            a2.a(videoDownloaderModel.getVideoId(), videoDownloaderModel.getVideoUrl(), videoDownloaderModel.getCoverUrl(), videoDownloaderModel.getSubtitleUrls());
            a(videoDownloaderModel);
            return;
        }
        j.c("videoDownloadManager");
        throw null;
    }

    public final void c(String str) {
        synchronized (this.f12111e) {
            c.c.a.b.f.h.f4687h.a(NotificationType.VIDEO_DOWNLOAD_PROGRESS, str);
            c.c.a.b.f.h.f4687h.a(NotificationType.APP_DOWNLOAD_PROGRESS, str);
            DownloadManager downloadManager = this.f12113g;
            if (downloadManager != null) {
                downloadManager.g(str);
                A a2 = this.f12114h;
                if (a2 != null) {
                    a2.g(str);
                    this.f12112f.remove(str);
                    a(this, DownloadServiceNotifyType.STOP, str, (Boolean) null, 4, (Object) null);
                    h.h hVar = h.h.f14579a;
                } else {
                    j.c("videoDownloadManager");
                    throw null;
                }
            } else {
                j.c("downloadManager");
                throw null;
            }
        }
    }

    public e a() {
        return this.f12110d;
    }

    public final void a(AppDownloaderModel appDownloaderModel) {
        c.c.a.b.d.b bVar = this.f12118l;
        if (bVar == null) {
            j.c("appManager");
            throw null;
        } else if (bVar.a(appDownloaderModel.getPackageName(), appDownloaderModel.getVersionCode()) == EntityState.FILE_EXISTS) {
            c.c.a.b.d.b bVar2 = this.f12118l;
            if (bVar2 != null) {
                Intent l2 = bVar2.l(appDownloaderModel.getPackageName());
                if (l2 != null) {
                    startActivity(l2);
                    return;
                }
                return;
            }
            j.c("appManager");
            throw null;
        }
    }

    public final void b(AppDownloaderModel appDownloaderModel) {
        DownloadService$getDownloadInfo$1 downloadService$getDownloadInfo$1 = new DownloadService$getDownloadInfo$1(this, appDownloaderModel);
        DownloadService$getDownloadInfo$2 downloadService$getDownloadInfo$2 = new DownloadService$getDownloadInfo$2(this, appDownloaderModel);
        this.f12112f.add(appDownloaderModel.getPackageName());
        DownloadService$getDownloadInfo$3 downloadService$getDownloadInfo$3 = new DownloadService$getDownloadInfo$3(this, appDownloaderModel, downloadService$getDownloadInfo$1, downloadService$getDownloadInfo$2, null);
        C1125ra unused = C1103g.b(this, null, null, downloadService$getDownloadInfo$3, 3, null);
    }

    public final void b(String str) {
        c.c.a.a.a.f4477c.a(new c.c.a.a.a.a(MetaDataStore.USERDATA_SUFFIX, new DownloadActionEvent(str), new DownloaderService()));
    }

    public final void a(VideoDownloaderModel videoDownloaderModel) {
        A a2 = this.f12114h;
        if (a2 != null) {
            C1125ra unused = C1103g.b(this, null, null, new DownloadService$listenOnVideoStatus$1(this, videoDownloaderModel, a2.e(videoDownloaderModel.getVideoId()), null), 3, null);
            return;
        }
        j.c("videoDownloadManager");
        throw null;
    }

    public final void a(String str) {
        c.c.a.b.d.b bVar = this.f12118l;
        if (bVar != null) {
            Intent l2 = bVar.l(str);
            if (l2 != null) {
                startActivity(l2);
                return;
            }
            return;
        }
        j.c("appManager");
        throw null;
    }

    public static /* synthetic */ void a(DownloadService downloadService, String str, c.c.a.b.f.a.b bVar, DownloadManager downloadManager, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            downloadManager = downloadService.f12113g;
            if (downloadManager == null) {
                j.c("downloadManager");
                throw null;
            }
        }
        downloadService.a(str, bVar, downloadManager);
    }

    public final void a(String str, c.c.a.b.f.a.b bVar, DownloadManager downloadManager) {
        startForeground(bVar.a(), bVar.a(str, -1));
        C1125ra unused = C1103g.b(this, null, null, new DownloadService$listenOnEntityDownloadProgress$1(downloadManager, str, bVar, null), 3, null);
    }

    public static /* synthetic */ void a(DownloadService downloadService, DownloadServiceNotifyType downloadServiceNotifyType, String str, Boolean bool, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            bool = null;
        }
        downloadService.a(downloadServiceNotifyType, str, bool);
    }

    public final void a(DownloadServiceNotifyType downloadServiceNotifyType, String str, Boolean bool) {
        C1125ra unused = C1103g.b(this, null, null, new DownloadService$sendNewStatus$1(downloadServiceNotifyType, str, bool, null), 3, null);
    }

    public final void a(DownloadServiceNotifyType downloadServiceNotifyType, AppDownloaderModel appDownloaderModel) {
        a(downloadServiceNotifyType, appDownloaderModel.getPackageName(), appDownloaderModel.getReferrer(), appDownloaderModel.isFree(), Boolean.valueOf(appDownloaderModel.getInstalledVersionCode() != null), appDownloaderModel.getVersionCode());
    }

    public final void a(DownloadServiceNotifyType downloadServiceNotifyType, VideoDownloaderModel videoDownloaderModel) {
        a(this, downloadServiceNotifyType, videoDownloaderModel.getVideoId(), videoDownloaderModel.getReferrer(), videoDownloaderModel.isFree(), null, null, 48, null);
    }

    public static /* synthetic */ void a(DownloadService downloadService, DownloadServiceNotifyType downloadServiceNotifyType, String str, String str2, boolean z, Boolean bool, Long l2, int i2, Object obj) {
        downloadService.a(downloadServiceNotifyType, str, str2, z, (i2 & 16) != 0 ? null : bool, (i2 & 32) != 0 ? null : l2);
    }

    public final void a(DownloadServiceNotifyType downloadServiceNotifyType, String str, String str2, boolean z, Boolean bool, Long l2) {
        c.c.a.a.a aVar = c.c.a.a.a.f4477c;
        DownloadEvent downloadEvent = new DownloadEvent(downloadServiceNotifyType.f(), str, str2, z, c.c.a.c.b.b.a(this), c.c.a.c.b.b.b(this), bool, l2);
        aVar.a(new c.c.a.a.a.a("system", downloadEvent, new DownloaderService()));
    }
}
