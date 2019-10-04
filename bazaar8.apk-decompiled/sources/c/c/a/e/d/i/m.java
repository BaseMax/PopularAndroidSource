package c.c.a.e.d.i;

import com.farsitel.bazaar.data.feature.download.Downloader;

/* compiled from: Downloader.kt */
final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Downloader f5169a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ w f5170b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ x f5171c;

    public m(Downloader downloader, w wVar, x xVar) {
        this.f5169a = downloader;
        this.f5170b = wVar;
        this.f5171c = xVar;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v0, resolved type: java.io.FileOutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v0, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v1, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v3, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v4, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v9, resolved type: java.io.InputStream} */
    /* JADX WARNING: type inference failed for: r4v2, types: [java.io.InputStream] */
    /* JADX WARNING: type inference failed for: r4v17 */
    /* JADX WARNING: type inference failed for: r4v18 */
    /*  JADX ERROR: JadxRuntimeException in pass: ProcessVariables
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r4v17 ?
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:189)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.collectCodeVars(ProcessVariables.java:122)
        	at jadx.core.dex.visitors.regions.variables.ProcessVariables.visit(ProcessVariables.java:45)
        */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x015c, code lost:
        if (r4 == 0) goto L_0x017a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
        r4.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x0177, code lost:
        if (r4 != 0) goto L_0x015e;
     */
    /* JADX WARNING: Failed to insert additional move for type inference */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0168 A[SYNTHETIC, Splitter:B:47:0x0168] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x016d A[SYNTHETIC, Splitter:B:51:0x016d] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0174 A[SYNTHETIC, Splitter:B:59:0x0174] */
    public final void run() {
        /*
            r30 = this;
            r1 = r30
            c.c.a.e.d.i.w r0 = r1.f5170b
            r2 = 0
            java.net.HttpURLConnection r3 = r0.f()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            int r3 = r3.getResponseCode()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            java.net.HttpURLConnection r4 = r0.f()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            boolean r4 = c.c.a.e.c.d.b(r4)     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            if (r4 != 0) goto L_0x0020
            c.c.a.e.d.i.x r4 = r1.f5171c     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            java.lang.String r5 = r0.b()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            r4.a(r5)     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
        L_0x0020:
            r4 = 200(0xc8, float:2.8E-43)
            if (r3 != r4) goto L_0x0036
            java.io.File r4 = r0.c()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            boolean r4 = r4.exists()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            if (r4 == 0) goto L_0x0036
            java.io.File r4 = r0.c()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            r4.delete()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            goto L_0x0074
        L_0x0036:
            r4 = 416(0x1a0, float:5.83E-43)
            if (r3 != r4) goto L_0x0074
            java.io.File r3 = r0.c()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            long r3 = r3.length()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            c.c.a.e.d.i.w r5 = r1.f5170b     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            long r5 = r5.a()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            c.c.a.e.d.i.w r7 = r1.f5170b     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            long r7 = r7.e()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            long r5 = r5 - r7
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L_0x0063
            c.c.a.e.d.i.x r3 = r1.f5171c     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            java.lang.String r0 = r0.b()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            c.c.a.e.d.i.w r4 = r1.f5170b     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            int r4 = r4.d()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            r3.a(r0, r4)     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            goto L_0x0073
        L_0x0063:
            java.io.File r3 = r0.c()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            r3.delete()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            c.c.a.e.d.i.x r3 = r1.f5171c     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            java.lang.String r0 = r0.b()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            r3.a(r0)     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
        L_0x0073:
            return
        L_0x0074:
            java.net.HttpURLConnection r4 = r0.f()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            java.io.InputStream r4 = r4.getInputStream()     // Catch:{ Exception -> 0x0171, all -> 0x0164 }
            java.net.HttpURLConnection r5 = r0.f()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            long r5 = c.c.a.e.c.d.a(r5)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r7 = 206(0xce, float:2.89E-43)
            r8 = 0
            if (r3 != r7) goto L_0x0094
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.io.File r7 = r0.c()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r9 = 1
            r3.<init>(r7, r9)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            goto L_0x009d
        L_0x0094:
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.io.File r7 = r0.c()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r3.<init>(r7, r8)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
        L_0x009d:
            r2 = r3
            com.farsitel.bazaar.common.model.DownloaderProgressInfo r3 = new com.farsitel.bazaar.common.model.DownloaderProgressInfo     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r3.<init>()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r3.setDownloadSize(r5)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.io.File r7 = r0.c()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            boolean r7 = r7.exists()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            if (r7 == 0) goto L_0x00b9
            java.io.File r7 = r0.c()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            long r9 = r7.length()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            goto L_0x00bb
        L_0x00b9:
            r9 = 0
        L_0x00bb:
            long r11 = java.lang.System.nanoTime()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            com.farsitel.bazaar.data.feature.download.Downloader r7 = r1.f5169a     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r7 = r7.f12248c     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            byte[] r7 = new byte[r7]     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r13 = r4.read(r7)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            c.c.a.e.d.i.x r14 = r1.f5171c     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.lang.String r15 = r0.b()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r8 = r0.d()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r14.b(r15, r8)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r23 = r11
            r14 = 0
            r11 = r9
        L_0x00dc:
            r15 = -1
            if (r13 == r15) goto L_0x014c
            com.farsitel.bazaar.data.feature.download.Downloader r15 = r1.f5169a     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.util.HashSet r15 = r15.f12250e     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.lang.String r8 = r0.b()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            boolean r8 = r15.contains(r8)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            if (r8 == 0) goto L_0x014c
            long r25 = java.lang.System.nanoTime()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r15 = r7
            long r7 = (long) r13     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            long r11 = r11 + r7
            r27 = r15
            float r15 = (float) r13     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            float r14 = r14 + r15
            long r16 = r5 + r9
            com.farsitel.bazaar.data.feature.download.Downloader r15 = r1.f5169a     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r28 = r5
            java.lang.Long r5 = java.lang.Long.valueOf(r16)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r5 = r15.a((long) r11, (java.lang.Long) r5)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r3.setProgress(r5)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            com.farsitel.bazaar.data.feature.download.Downloader r5 = r1.f5169a     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r21 = 1000(0x3e8, double:4.94E-321)
            r16 = r5
            r17 = r23
            r19 = r25
            boolean r5 = r16.a((long) r17, (long) r19, (long) r21)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            if (r5 == 0) goto L_0x0124
            r3.setDownloadedSize(r11)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r3.setDownloadSpeed(r14)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r23 = r25
            r14 = 0
        L_0x0124:
            c.c.a.e.d.i.x r5 = r1.f5171c     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.lang.String r6 = r0.b()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r15 = r0.d()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r5.a((java.lang.String) r6, (int) r15, (com.farsitel.bazaar.common.model.DownloaderProgressInfo) r3)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            c.c.a.e.d.i.x r5 = r1.f5171c     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.lang.String r6 = r0.b()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r15 = r0.d()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r5.a((java.lang.String) r6, (int) r15, (long) r7)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r5 = r27
            r6 = 0
            r2.write(r5, r6, r13)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r13 = r4.read(r5)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r7 = r5
            r5 = r28
            goto L_0x00dc
        L_0x014c:
            c.c.a.e.d.i.x r3 = r1.f5171c     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            java.lang.String r5 = r0.b()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            int r0 = r0.d()     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r3.a(r5, r0)     // Catch:{ Exception -> 0x0172, all -> 0x0162 }
            r2.close()     // Catch:{ IOException -> 0x015c }
        L_0x015c:
            if (r4 == 0) goto L_0x017a
        L_0x015e:
            r4.close()     // Catch:{ IOException -> 0x017a }
            goto L_0x017a
        L_0x0162:
            r0 = move-exception
            goto L_0x0166
        L_0x0164:
            r0 = move-exception
            r4 = r2
        L_0x0166:
            if (r2 == 0) goto L_0x016b
            r2.close()     // Catch:{ IOException -> 0x016b }
        L_0x016b:
            if (r4 == 0) goto L_0x0170
            r4.close()     // Catch:{ IOException -> 0x0170 }
        L_0x0170:
            throw r0
        L_0x0171:
            r4 = r2
        L_0x0172:
            if (r2 == 0) goto L_0x0177
            r2.close()     // Catch:{ IOException -> 0x0177 }
        L_0x0177:
            if (r4 == 0) goto L_0x017a
            goto L_0x015e
        L_0x017a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.i.m.run():void");
    }
}
