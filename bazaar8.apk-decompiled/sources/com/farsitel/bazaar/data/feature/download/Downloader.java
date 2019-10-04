package com.farsitel.bazaar.data.feature.download;

import c.c.a.c.a.b;
import c.c.a.e.c.d;
import c.c.a.e.d.i.q;
import c.c.a.e.d.i.r;
import c.c.a.e.d.i.t;
import c.c.a.e.d.i.u;
import c.c.a.e.d.i.w;
import c.c.a.e.d.i.x;
import c.c.a.e.d.i.y;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import h.c.e;
import h.f.b.j;
import h.k.m;
import i.a.C1103g;
import i.a.C1125ra;
import i.a.C1128u;
import i.a.H;
import i.a.va;
import java.io.File;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import javax.crypto.Cipher;
import javax.net.ssl.HttpsURLConnection;
import kotlin.TypeCastException;

/* compiled from: Downloader.kt */
public final class Downloader implements H, x {

    /* renamed from: a  reason: collision with root package name */
    public final HashMap<String, t> f12246a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public final C1128u f12247b = va.a(null, 1, null);

    /* renamed from: c  reason: collision with root package name */
    public final int f12248c = 8192;

    /* renamed from: d  reason: collision with root package name */
    public final ExecutorService f12249d = Executors.newFixedThreadPool(5);

    /* renamed from: e  reason: collision with root package name */
    public final HashSet<String> f12250e = new HashSet<>();

    /* renamed from: f  reason: collision with root package name */
    public final q f12251f;

    /* renamed from: g  reason: collision with root package name */
    public final r f12252g;

    /* renamed from: h  reason: collision with root package name */
    public final y f12253h;

    /* renamed from: i  reason: collision with root package name */
    public final u f12254i;

    /* compiled from: Downloader.kt */
    public enum MergeDownloadPartState {
        SUCCESS,
        FAILED,
        FAILED_STORAGE
    }

    public Downloader(q qVar, r rVar, y yVar, u uVar) {
        j.b(qVar, "fileDownloadHelper");
        j.b(rVar, "networkStateHelper");
        j.b(yVar, "storageHelper");
        j.b(uVar, "downloadMerger");
        this.f12251f = qVar;
        this.f12252g = rVar;
        this.f12253h = yVar;
        this.f12254i = uVar;
    }

    public final void b(String str) {
        j.b(str, "entityId");
        this.f12246a.remove(str);
        this.f12250e.remove(str);
    }

    public final void c(String str) {
        this.f12253h.a(str);
        this.f12246a.remove(str);
    }

    public void b(String str, int i2) {
        j.b(str, "entityId");
        t tVar = this.f12246a.get(str);
        if (tVar != null && !tVar.c()) {
            tVar.a(true);
        }
    }

    public e a() {
        return b.f4693c.a().plus(this.f12247b);
    }

    public final void a(String str, String str2, File file, BigInteger bigInteger, BigInteger bigInteger2, i.a.b.x<? super DownloaderProgressInfo> xVar, i.a.b.x<? super DownloaderDownloadStatus> xVar2, h.f.a.b<? super BigInteger, Boolean> bVar, int i2, Cipher cipher) {
        String str3 = str;
        File file2 = file;
        i.a.b.x<? super DownloaderDownloadStatus> xVar3 = xVar2;
        h.f.a.b<? super BigInteger, Boolean> bVar2 = bVar;
        j.b(str3, "entityId");
        j.b(str2, "url");
        j.b(file2, "destFile");
        j.b(xVar, "progressChannel");
        j.b(xVar3, "downloadStatus");
        j.b(bVar2, "downloadDiffHandler");
        Downloader$startDownloadFile$2 downloader$startDownloadFile$2 = new Downloader$startDownloadFile$2(this, str, xVar2, new Downloader$startDownloadFile$1(file2, bigInteger, bVar2, bigInteger2), file);
        Downloader$startDownloadFile$3 downloader$startDownloadFile$3 = new Downloader$startDownloadFile$3(this, str3, xVar3);
        Downloader$startDownloadFile$5 downloader$startDownloadFile$5 = new Downloader$startDownloadFile$5(this, file, cipher, downloader$startDownloadFile$2, downloader$startDownloadFile$3, new Downloader$startDownloadFile$4(this, str3, xVar3));
        n nVar = r0;
        n nVar2 = new n(this, str2, file, bigInteger, xVar2, str, bigInteger2, xVar, bVar, i2, cipher, downloader$startDownloadFile$3, downloader$startDownloadFile$5);
        this.f12249d.submit(nVar);
    }

    public final void a(w wVar, x xVar) {
        this.f12249d.submit(new m(this, wVar, xVar));
    }

    public final List<w> a(HttpURLConnection httpURLConnection, int i2, File file, String str, String str2) {
        long j2;
        Downloader downloader;
        File file2;
        int i3 = i2;
        ArrayList arrayList = new ArrayList();
        long a2 = d.a(httpURLConnection);
        long j3 = a2 / ((long) i3);
        int i4 = 0;
        while (i4 < i3) {
            long j4 = ((long) i4) * j3;
            if (i4 == i3 - 1) {
                downloader = this;
                file2 = file;
                j2 = a2;
            } else {
                j2 = (j4 + j3) - 1;
                downloader = this;
                file2 = file;
            }
            File a3 = downloader.a(file2, i4);
            long j5 = j4;
            String str3 = str2;
            w wVar = r7;
            w wVar2 = new w(str3, a(str, a3, j5, Long.valueOf(j2)), i4, a3, j5, j2);
            arrayList.add(wVar);
            i4++;
            i3 = i2;
        }
        return arrayList;
    }

    public final File a(File file, int i2) {
        return new File(file.getPath() + ".part" + i2);
    }

    public static /* synthetic */ HttpURLConnection a(Downloader downloader, String str, File file, long j2, Long l2, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            j2 = 0;
        }
        long j3 = j2;
        if ((i2 & 8) != 0) {
            l2 = null;
        }
        return downloader.a(str, file, j3, l2);
    }

    public final HttpURLConnection a(String str, File file, long j2, Long l2) {
        HttpURLConnection httpURLConnection;
        URL url = new URL(str);
        String host = url.getHost();
        URL url2 = new URL(url.getProtocol(), host, url.getPort(), url.getFile());
        if (m.b(str, "https", false, 2, null)) {
            URLConnection openConnection = url2.openConnection();
            if (openConnection != null) {
                httpURLConnection = (HttpsURLConnection) openConnection;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type javax.net.ssl.HttpsURLConnection");
            }
        } else {
            URLConnection openConnection2 = url2.openConnection();
            if (openConnection2 != null) {
                httpURLConnection = (HttpURLConnection) openConnection2;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.net.HttpURLConnection");
            }
        }
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        httpURLConnection.addRequestProperty("Host", host);
        if (file.exists()) {
            j2 += file.length();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("bytes=");
        sb.append(j2);
        sb.append('-');
        Object obj = l2;
        if (l2 == null) {
            obj = "";
        }
        sb.append(obj);
        httpURLConnection.addRequestProperty("Range", sb.toString());
        return httpURLConnection;
    }

    public final void a(i.a.b.x<? super DownloaderDownloadStatus> xVar, boolean z, File file) {
        DownloaderDownloadStatus downloaderDownloadStatus;
        if (!this.f12252g.b()) {
            downloaderDownloadStatus = DownloaderDownloadStatus.NETWORK_LOST;
        } else if (z) {
            downloaderDownloadStatus = DownloaderDownloadStatus.LINK_IS_NOT_VALID;
        } else if (!y.a(this.f12253h, file, 0, 2, null)) {
            downloaderDownloadStatus = DownloaderDownloadStatus.FAILED_STORAGE;
        } else {
            downloaderDownloadStatus = DownloaderDownloadStatus.FAILED;
        }
        a(xVar, downloaderDownloadStatus);
    }

    public final void a(i.a.b.x<? super DownloaderDownloadStatus> xVar, DownloaderDownloadStatus downloaderDownloadStatus) {
        C1125ra unused = C1103g.b(this, null, null, new Downloader$sendDownloadStatus$1(xVar, downloaderDownloadStatus, null), 3, null);
    }

    public final int a(long j2, Long l2) {
        return (int) ((((float) j2) * ((float) 100)) / ((float) (l2 != null ? l2.longValue() : 1)));
    }

    public final boolean a(long j2, long j3, long j4) {
        return TimeUnit.NANOSECONDS.toMillis(j3 - j2) >= j4;
    }

    public void a(String str, int i2, long j2) {
        j.b(str, "entityId");
        this.f12253h.a(str, j2);
    }

    public void a(String str, int i2, DownloaderProgressInfo downloaderProgressInfo) {
        j.b(str, "entityId");
        j.b(downloaderProgressInfo, "downloaderProgressInfo");
        t tVar = this.f12246a.get(str);
        if (tVar != null) {
            tVar.a(i2, downloaderProgressInfo);
            DownloaderProgressInfo d2 = tVar.d();
            if (d2 != null) {
                Downloader$onPartProgressChanged$$inlined$let$lambda$1 downloader$onPartProgressChanged$$inlined$let$lambda$1 = new Downloader$onPartProgressChanged$$inlined$let$lambda$1(d2, null, this, i2, downloaderProgressInfo, str);
                C1125ra unused = C1103g.b(this, null, null, downloader$onPartProgressChanged$$inlined$let$lambda$1, 3, null);
            }
        }
    }

    public void a(String str) {
        j.b(str, "entityId");
        t tVar = this.f12246a.get(str);
        if (tVar != null) {
            tVar.b();
        }
    }

    public void a(String str, int i2) {
        j.b(str, "entityId");
        t tVar = this.f12246a.get(str);
        if (tVar != null) {
            tVar.f();
        }
    }
}
