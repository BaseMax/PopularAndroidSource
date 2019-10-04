package c.c.a.e.d.i;

import android.os.Handler;
import android.os.HandlerThread;
import com.farsitel.bazaar.common.model.DownloaderProgressInfo;
import com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus;
import h.f.a.a;
import h.f.a.b;
import h.f.b.j;
import h.h;
import i.a.b.x;
import java.util.List;

/* compiled from: PartDownloadHelper.kt */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    public final int f5192a = this.f5202k.size();

    /* renamed from: b  reason: collision with root package name */
    public final DownloaderProgressInfo[] f5193b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f5194c;

    /* renamed from: d  reason: collision with root package name */
    public final Object f5195d;

    /* renamed from: e  reason: collision with root package name */
    public int f5196e;

    /* renamed from: f  reason: collision with root package name */
    public int f5197f;

    /* renamed from: g  reason: collision with root package name */
    public DownloaderProgressInfo f5198g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f5199h;

    /* renamed from: i  reason: collision with root package name */
    public Handler f5200i;

    /* renamed from: j  reason: collision with root package name */
    public boolean f5201j;

    /* renamed from: k  reason: collision with root package name */
    public final List<w> f5202k;

    /* renamed from: l  reason: collision with root package name */
    public final x<DownloaderProgressInfo> f5203l;
    public final x<DownloaderDownloadStatus> m;
    public final a<h> n;
    public final b<List<w>, h> o;

    public t(List<w> list, x<? super DownloaderProgressInfo> xVar, x<? super DownloaderDownloadStatus> xVar2, a<h> aVar, b<? super List<w>, h> bVar) {
        j.b(list, "downloadParts");
        j.b(xVar, "progressChannel");
        j.b(xVar2, "downloadStatus");
        j.b(aVar, "failDownload");
        j.b(bVar, "mergePartFile");
        this.f5202k = list;
        this.f5203l = xVar;
        this.m = xVar2;
        this.n = aVar;
        this.o = bVar;
        DownloaderProgressInfo[] downloaderProgressInfoArr = new DownloaderProgressInfo[this.f5192a];
        int length = downloaderProgressInfoArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            downloaderProgressInfoArr[i2] = new DownloaderProgressInfo();
        }
        this.f5193b = downloaderProgressInfoArr;
        this.f5194c = new Object();
        this.f5195d = new Object();
        this.f5199h = true;
        HandlerThread handlerThread = new HandlerThread("progressLooper");
        handlerThread.start();
        this.f5200i = new Handler(handlerThread.getLooper());
    }

    public final void b() {
        this.f5197f++;
        synchronized (this.f5195d) {
            if (this.f5197f == this.f5192a) {
                this.n.invoke();
            }
            h hVar = h.f14579a;
        }
    }

    public final boolean c() {
        return this.f5201j;
    }

    public final DownloaderProgressInfo d() {
        DownloaderProgressInfo downloaderProgressInfo;
        synchronized (this.f5194c) {
            long j2 = 0;
            long j3 = 0;
            int i2 = 0;
            float f2 = 0.0f;
            for (DownloaderProgressInfo downloaderProgressInfo2 : this.f5193b) {
                i2 += downloaderProgressInfo2.getProgress();
                j2 += downloaderProgressInfo2.getDownloadSize();
                j3 += downloaderProgressInfo2.getDownloadedSize();
                f2 += downloaderProgressInfo2.getDownloadSpeed();
            }
            DownloaderProgressInfo downloaderProgressInfo3 = new DownloaderProgressInfo();
            downloaderProgressInfo3.setProgress(i2 / this.f5193b.length);
            downloaderProgressInfo3.setDownloadSize(j2);
            downloaderProgressInfo3.setDownloadedSize(j3);
            downloaderProgressInfo3.setDownloadSpeed(f2 / ((float) this.f5193b.length));
            downloaderProgressInfo = null;
            if (downloaderProgressInfo3.getProgress() != 100) {
                if (this.f5199h) {
                    int progress = downloaderProgressInfo3.getProgress();
                    DownloaderProgressInfo downloaderProgressInfo4 = this.f5198g;
                    if (downloaderProgressInfo4 == null || progress != downloaderProgressInfo4.getProgress()) {
                        a();
                        this.f5198g = downloaderProgressInfo3;
                    }
                }
            }
            downloaderProgressInfo = downloaderProgressInfo3;
        }
        return downloaderProgressInfo;
    }

    public final x<DownloaderProgressInfo> e() {
        return this.f5203l;
    }

    public final void f() {
        this.f5196e++;
        this.f5197f++;
        synchronized (this.f5195d) {
            if (this.f5196e == this.f5192a) {
                this.o.a(this.f5202k);
            } else if (this.f5197f == this.f5192a) {
                this.n.invoke();
            }
            h hVar = h.f14579a;
        }
    }

    public final void a(boolean z) {
        this.f5201j = z;
    }

    public final void a(int i2, DownloaderProgressInfo downloaderProgressInfo) {
        j.b(downloaderProgressInfo, "downloaderProgressInfo");
        synchronized (this.f5194c) {
            this.f5193b[i2] = downloaderProgressInfo;
            h hVar = h.f14579a;
        }
    }

    public final void a() {
        this.f5199h = false;
        this.f5200i.postDelayed(new s(this), 1000);
    }
}
