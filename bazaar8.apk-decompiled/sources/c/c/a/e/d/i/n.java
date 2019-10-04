package c.c.a.e.d.i;

import com.farsitel.bazaar.data.feature.download.Downloader;
import h.f.a.b;
import i.a.b.x;
import java.io.File;
import java.math.BigInteger;
import javax.crypto.Cipher;

/* compiled from: Downloader.kt */
final class n implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Downloader f5172a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f5173b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ File f5174c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BigInteger f5175d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ x f5176e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ String f5177f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ BigInteger f5178g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ x f5179h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ b f5180i;

    /* renamed from: j  reason: collision with root package name */
    public final /* synthetic */ int f5181j;

    /* renamed from: k  reason: collision with root package name */
    public final /* synthetic */ Cipher f5182k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ Downloader$startDownloadFile$3 f5183l;
    public final /* synthetic */ Downloader$startDownloadFile$5 m;

    public n(Downloader downloader, String str, File file, BigInteger bigInteger, x xVar, String str2, BigInteger bigInteger2, x xVar2, b bVar, int i2, Cipher cipher, Downloader$startDownloadFile$3 downloader$startDownloadFile$3, Downloader$startDownloadFile$5 downloader$startDownloadFile$5) {
        this.f5172a = downloader;
        this.f5173b = str;
        this.f5174c = file;
        this.f5175d = bigInteger;
        this.f5176e = xVar;
        this.f5177f = str2;
        this.f5178g = bigInteger2;
        this.f5179h = xVar2;
        this.f5180i = bVar;
        this.f5181j = i2;
        this.f5182k = cipher;
        this.f5183l = downloader$startDownloadFile$3;
        this.m = downloader$startDownloadFile$5;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:101:?, code lost:
        r0 = r3.getInputStream();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:102:0x01a0, code lost:
        if (r0 != null) goto L_0x01a2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:103:0x01a2, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:104:0x01a5, code lost:
        if (r3 != null) goto L_0x01a7;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:107:?, code lost:
        r0 = r3.getOutputStream();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:108:0x01ab, code lost:
        if (r0 != null) goto L_0x0164;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:112:0x01b1, code lost:
        if (r1.f5181j > 1) goto L_0x01b3;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:113:0x01b3, code lost:
        if (r3 != null) goto L_0x01b5;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:115:?, code lost:
        r2 = r3.getInputStream();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:116:0x01b9, code lost:
        if (r2 != null) goto L_0x01bb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:117:0x01bb, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:118:0x01be, code lost:
        if (r3 != null) goto L_0x01c0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:121:?, code lost:
        r2 = r3.getOutputStream();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:0x01c4, code lost:
        if (r2 != null) goto L_0x01c6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:123:0x01c6, code lost:
        r2.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:125:0x01ca, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x0162, code lost:
        if (r0 != null) goto L_0x0164;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x0164, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x0168, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:?, code lost:
        r1.f5172a.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r1.f5176e, r5, r1.f5174c);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x0176, code lost:
        if (r1.f5181j > 1) goto L_0x0178;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:83:0x0178, code lost:
        if (r3 != null) goto L_0x017a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:85:?, code lost:
        r0 = r3.getInputStream();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:86:0x017e, code lost:
        if (r0 != null) goto L_0x0180;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:87:0x0180, code lost:
        r0.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:88:0x0183, code lost:
        if (r3 != null) goto L_0x0185;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:91:?, code lost:
        r0 = r3.getOutputStream();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:92:0x0189, code lost:
        if (r0 != null) goto L_0x0164;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:96:?, code lost:
        r1.f5172a.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r1.f5176e, r5, r1.f5174c);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:98:0x0198, code lost:
        if (r1.f5181j > 1) goto L_0x019a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:99:0x019a, code lost:
        if (r3 != null) goto L_0x019c;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [B:79:0x016b, B:95:0x018d] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:79:0x016b */
    /* JADX WARNING: Missing exception handler attribute for start block: B:95:0x018d */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:79:0x016b=Splitter:B:79:0x016b, B:95:0x018d=Splitter:B:95:0x018d} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r21 = this;
            r1 = r21
            r2 = 1
            r3 = 0
            com.farsitel.bazaar.data.feature.download.Downloader r4 = r1.f5172a     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.lang.String r5 = r1.f5173b     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.io.File r6 = r1.f5174c     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            r7 = 0
            r9 = 0
            r10 = 12
            r11 = 0
            java.net.HttpURLConnection r3 = com.farsitel.bazaar.data.feature.download.Downloader.a(r4, r5, r6, r7, r9, r10, r11)     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            int r0 = r3.getResponseCode()     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            r4 = 200(0xc8, float:2.8E-43)
            if (r0 != r4) goto L_0x002a
            java.io.File r5 = r1.f5174c     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            boolean r5 = r5.exists()     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            if (r5 == 0) goto L_0x002a
            java.io.File r5 = r1.f5174c     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            r5.delete()     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            goto L_0x0089
        L_0x002a:
            r5 = 416(0x1a0, float:5.83E-43)
            if (r0 != r5) goto L_0x0089
            java.math.BigInteger r0 = r1.f5175d     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            if (r0 == 0) goto L_0x0050
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            c.c.a.e.d.i.q r0 = r0.f12251f     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.io.File r4 = r1.f5174c     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.math.BigInteger r0 = r0.a((java.io.File) r4)     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.math.BigInteger r4 = r1.f5175d     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r4)     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            if (r0 == 0) goto L_0x0050
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            i.a.b.x r4 = r1.f5176e     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus r5 = com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus.COMPLETED     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            r0.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r4, (com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus) r5)     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            goto L_0x006e
        L_0x0050:
            java.io.File r0 = r1.f5174c     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            r0.delete()     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            com.farsitel.bazaar.data.feature.download.Downloader r4 = r1.f5172a     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.lang.String r5 = r1.f5177f     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.lang.String r6 = r1.f5173b     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.io.File r7 = r1.f5174c     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.math.BigInteger r8 = r1.f5175d     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            java.math.BigInteger r9 = r1.f5178g     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            i.a.b.x r10 = r1.f5179h     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            i.a.b.x r11 = r1.f5176e     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            h.f.a.b r12 = r1.f5180i     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            int r13 = r1.f5181j     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            javax.crypto.Cipher r14 = r1.f5182k     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
            r4.a(r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch:{ IOException -> 0x018c, Exception -> 0x016a }
        L_0x006e:
            int r0 = r1.f5181j
            if (r0 <= r2) goto L_0x0088
            if (r3 == 0) goto L_0x007d
            java.io.InputStream r0 = r3.getInputStream()     // Catch:{ IOException -> 0x007d }
            if (r0 == 0) goto L_0x007d
            r0.close()     // Catch:{ IOException -> 0x007d }
        L_0x007d:
            if (r3 == 0) goto L_0x0088
            java.io.OutputStream r0 = r3.getOutputStream()     // Catch:{ IOException -> 0x0088 }
            if (r0 == 0) goto L_0x0088
            r0.close()     // Catch:{ IOException -> 0x0088 }
        L_0x0088:
            return
        L_0x0089:
            r5 = 0
            if (r0 == r4) goto L_0x009b
            r4 = 206(0xce, float:2.89E-43)
            if (r0 == r4) goto L_0x009b
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            i.a.b.x r4 = r1.f5176e     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus r6 = com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus.LINK_IS_NOT_VALID     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r0.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r4, (com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus) r6)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            goto L_0x014d
        L_0x009b:
            long r6 = c.c.a.e.c.d.a(r3)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            c.c.a.e.d.i.y r0 = r0.f12253h     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.io.File r4 = r1.f5174c     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            boolean r0 = r0.a((java.io.File) r4, (long) r6)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            if (r0 != 0) goto L_0x00d1
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            i.a.b.x r4 = r1.f5176e     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus r6 = com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus.FAILED_STORAGE     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r0.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r4, (com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus) r6)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            int r0 = r1.f5181j
            if (r0 <= r2) goto L_0x00d0
            if (r3 == 0) goto L_0x00c5
            java.io.InputStream r0 = r3.getInputStream()     // Catch:{ IOException -> 0x00c5 }
            if (r0 == 0) goto L_0x00c5
            r0.close()     // Catch:{ IOException -> 0x00c5 }
        L_0x00c5:
            if (r3 == 0) goto L_0x00d0
            java.io.OutputStream r0 = r3.getOutputStream()     // Catch:{ IOException -> 0x00d0 }
            if (r0 == 0) goto L_0x00d0
            r0.close()     // Catch:{ IOException -> 0x00d0 }
        L_0x00d0:
            return
        L_0x00d1:
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            c.c.a.e.d.i.y r0 = r0.f12253h     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.lang.String r4 = r1.f5177f     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r0.b(r4, r6)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            int r0 = r1.f5181j     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            if (r0 <= r2) goto L_0x00f4
            com.farsitel.bazaar.data.feature.download.Downloader r12 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            int r14 = r1.f5181j     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.io.File r15 = r1.f5174c     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.lang.String r0 = r1.f5173b     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.lang.String r4 = r1.f5177f     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r13 = r3
            r16 = r0
            r17 = r4
            java.util.List r0 = r12.a(r13, r14, r15, r16, r17)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            goto L_0x010a
        L_0x00f4:
            c.c.a.e.d.i.w r0 = new c.c.a.e.d.i.w     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.lang.String r13 = r1.f5177f     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r15 = 0
            java.io.File r4 = r1.f5174c     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r17 = 0
            r12 = r0
            r14 = r3
            r16 = r4
            r19 = r6
            r12.<init>(r13, r14, r15, r16, r17, r19)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.util.List r0 = h.a.k.a(r0)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
        L_0x010a:
            com.farsitel.bazaar.data.feature.download.Downloader r4 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.util.HashSet r4 = r4.f12250e     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.lang.String r6 = r1.f5177f     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r4.add(r6)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.Downloader r4 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.util.HashMap r4 = r4.f12246a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.lang.String r12 = r1.f5177f     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            c.c.a.e.d.i.t r13 = new c.c.a.e.d.i.t     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            i.a.b.x r8 = r1.f5179h     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            i.a.b.x r9 = r1.f5176e     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.Downloader$startDownloadFile$6$1 r10 = new com.farsitel.bazaar.data.feature.download.Downloader$startDownloadFile$6$1     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r10.<init>(r1)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.Downloader$startDownloadFile$6$2 r11 = new com.farsitel.bazaar.data.feature.download.Downloader$startDownloadFile$6$2     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r11.<init>(r1)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r6 = r13
            r7 = r0
            r6.<init>(r7, r8, r9, r10, r11)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r4.put(r12, r13)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            java.util.Iterator r0 = r0.iterator()     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
        L_0x0139:
            boolean r4 = r0.hasNext()     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            if (r4 == 0) goto L_0x014d
            java.lang.Object r4 = r0.next()     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            c.c.a.e.d.i.w r4 = (c.c.a.e.d.i.w) r4     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.Downloader r6 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            com.farsitel.bazaar.data.feature.download.Downloader r7 = r1.f5172a     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            r6.a((c.c.a.e.d.i.w) r4, (c.c.a.e.d.i.x) r7)     // Catch:{ IOException -> 0x018d, Exception -> 0x016b }
            goto L_0x0139
        L_0x014d:
            int r0 = r1.f5181j
            if (r0 <= r2) goto L_0x01ae
            if (r3 == 0) goto L_0x015c
            java.io.InputStream r0 = r3.getInputStream()     // Catch:{ IOException -> 0x015c }
            if (r0 == 0) goto L_0x015c
            r0.close()     // Catch:{ IOException -> 0x015c }
        L_0x015c:
            if (r3 == 0) goto L_0x01ae
            java.io.OutputStream r0 = r3.getOutputStream()     // Catch:{ IOException -> 0x01ae }
            if (r0 == 0) goto L_0x01ae
        L_0x0164:
            r0.close()     // Catch:{ IOException -> 0x01ae }
            goto L_0x01ae
        L_0x0168:
            r0 = move-exception
            goto L_0x01af
        L_0x016a:
            r5 = 1
        L_0x016b:
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ all -> 0x0168 }
            i.a.b.x r4 = r1.f5176e     // Catch:{ all -> 0x0168 }
            java.io.File r6 = r1.f5174c     // Catch:{ all -> 0x0168 }
            r0.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r4, (boolean) r5, (java.io.File) r6)     // Catch:{ all -> 0x0168 }
            int r0 = r1.f5181j
            if (r0 <= r2) goto L_0x01ae
            if (r3 == 0) goto L_0x0183
            java.io.InputStream r0 = r3.getInputStream()     // Catch:{ IOException -> 0x0183 }
            if (r0 == 0) goto L_0x0183
            r0.close()     // Catch:{ IOException -> 0x0183 }
        L_0x0183:
            if (r3 == 0) goto L_0x01ae
            java.io.OutputStream r0 = r3.getOutputStream()     // Catch:{ IOException -> 0x01ae }
            if (r0 == 0) goto L_0x01ae
            goto L_0x0164
        L_0x018c:
            r5 = 1
        L_0x018d:
            com.farsitel.bazaar.data.feature.download.Downloader r0 = r1.f5172a     // Catch:{ all -> 0x0168 }
            i.a.b.x r4 = r1.f5176e     // Catch:{ all -> 0x0168 }
            java.io.File r6 = r1.f5174c     // Catch:{ all -> 0x0168 }
            r0.a((i.a.b.x<? super com.farsitel.bazaar.data.feature.download.DownloaderDownloadStatus>) r4, (boolean) r5, (java.io.File) r6)     // Catch:{ all -> 0x0168 }
            int r0 = r1.f5181j
            if (r0 <= r2) goto L_0x01ae
            if (r3 == 0) goto L_0x01a5
            java.io.InputStream r0 = r3.getInputStream()     // Catch:{ IOException -> 0x01a5 }
            if (r0 == 0) goto L_0x01a5
            r0.close()     // Catch:{ IOException -> 0x01a5 }
        L_0x01a5:
            if (r3 == 0) goto L_0x01ae
            java.io.OutputStream r0 = r3.getOutputStream()     // Catch:{ IOException -> 0x01ae }
            if (r0 == 0) goto L_0x01ae
            goto L_0x0164
        L_0x01ae:
            return
        L_0x01af:
            int r4 = r1.f5181j
            if (r4 <= r2) goto L_0x01c9
            if (r3 == 0) goto L_0x01be
            java.io.InputStream r2 = r3.getInputStream()     // Catch:{ IOException -> 0x01be }
            if (r2 == 0) goto L_0x01be
            r2.close()     // Catch:{ IOException -> 0x01be }
        L_0x01be:
            if (r3 == 0) goto L_0x01c9
            java.io.OutputStream r2 = r3.getOutputStream()     // Catch:{ IOException -> 0x01c9 }
            if (r2 == 0) goto L_0x01c9
            r2.close()     // Catch:{ IOException -> 0x01c9 }
        L_0x01c9:
            goto L_0x01cb
        L_0x01ca:
            throw r0
        L_0x01cb:
            goto L_0x01ca
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.i.n.run():void");
    }
}
