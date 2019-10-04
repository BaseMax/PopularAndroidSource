package c.c.a.e.d.i;

import h.f.b.j;

/* compiled from: PartDownloadMerger.kt */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public final y f5204a;

    public u(y yVar) {
        j.b(yVar, "storageHelper");
        this.f5204a = yVar;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(9:29|30|(9:33|34|35|(1:37)|92|38|39|40|31)|91|(2:46|47)|48|49|50|52) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:48:0x00b8 */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00ce A[SYNTHETIC, Splitter:B:61:0x00ce] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00d3 A[SYNTHETIC, Splitter:B:65:0x00d3] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00d8 A[SYNTHETIC, Splitter:B:69:0x00d8] */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x00df A[SYNTHETIC, Splitter:B:75:0x00df] */
    /* JADX WARNING: Removed duplicated region for block: B:79:0x00e4 A[SYNTHETIC, Splitter:B:79:0x00e4] */
    /* JADX WARNING: Removed duplicated region for block: B:83:0x00e9 A[SYNTHETIC, Splitter:B:83:0x00e9] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final com.farsitel.bazaar.data.feature.download.Downloader.MergeDownloadPartState a(java.util.List<c.c.a.e.d.i.w> r9, java.io.File r10, javax.crypto.Cipher r11) {
        /*
            r8 = this;
            java.lang.String r0 = "partDownloadModels"
            h.f.b.j.b(r9, r0)
            java.lang.String r0 = "mainFile"
            h.f.b.j.b(r10, r0)
            r0 = 0
            int r1 = r9.size()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            r2 = 1
            r3 = 0
            if (r1 != r2) goto L_0x002e
            java.lang.Object r1 = r9.get(r3)     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            c.c.a.e.d.i.w r1 = (c.c.a.e.d.i.w) r1     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            java.io.File r1 = r1.c()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            java.lang.String r1 = r1.getPath()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            java.lang.String r2 = r10.getPath()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            boolean r1 = h.f.b.j.a((java.lang.Object) r1, (java.lang.Object) r2)     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            if (r1 == 0) goto L_0x002e
            com.farsitel.bazaar.data.feature.download.Downloader$MergeDownloadPartState r9 = com.farsitel.bazaar.data.feature.download.Downloader.MergeDownloadPartState.SUCCESS     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            return r9
        L_0x002e:
            r1 = 0
            java.util.Iterator r4 = r9.iterator()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
        L_0x0034:
            boolean r5 = r4.hasNext()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            if (r5 == 0) goto L_0x004e
            java.lang.Object r5 = r4.next()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            c.c.a.e.d.i.w r5 = (c.c.a.e.d.i.w) r5     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            java.io.File r5 = r5.c()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            long r5 = r5.length()     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            int r7 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r7 <= 0) goto L_0x0034
            r1 = r5
            goto L_0x0034
        L_0x004e:
            c.c.a.e.d.i.y r4 = r8.f5204a     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            r5 = 52428800(0x3200000, float:4.7019774E-37)
            long r5 = (long) r5     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            long r1 = r1 + r5
            boolean r1 = r4.a((java.io.File) r10, (long) r1)     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            if (r1 != 0) goto L_0x005d
            com.farsitel.bazaar.data.feature.download.Downloader$MergeDownloadPartState r9 = com.farsitel.bazaar.data.feature.download.Downloader.MergeDownloadPartState.FAILED_STORAGE     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            return r9
        L_0x005d:
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            r1.<init>(r10)     // Catch:{ Exception -> 0x00c4, all -> 0x00c0 }
            if (r11 == 0) goto L_0x0072
            javax.crypto.CipherOutputStream r10 = new javax.crypto.CipherOutputStream     // Catch:{ Exception -> 0x006f, all -> 0x006b }
            r10.<init>(r1, r11)     // Catch:{ Exception -> 0x006f, all -> 0x006b }
            r11 = r10
            goto L_0x0074
        L_0x006b:
            r9 = move-exception
            r10 = r0
            goto L_0x00dd
        L_0x006f:
            r9 = move-exception
            r10 = r0
            goto L_0x00c7
        L_0x0072:
            r10 = r0
            r11 = r1
        L_0x0074:
            r2 = 8192(0x2000, float:1.14794E-41)
            byte[] r2 = new byte[r2]     // Catch:{ Exception -> 0x00be }
            java.util.Iterator r9 = r9.iterator()     // Catch:{ Exception -> 0x00be }
        L_0x007c:
            boolean r4 = r9.hasNext()     // Catch:{ Exception -> 0x00be }
            if (r4 == 0) goto L_0x00b3
            java.lang.Object r4 = r9.next()     // Catch:{ Exception -> 0x00be }
            c.c.a.e.d.i.w r4 = (c.c.a.e.d.i.w) r4     // Catch:{ Exception -> 0x00be }
            java.io.FileInputStream r5 = new java.io.FileInputStream     // Catch:{ Exception -> 0x00be }
            java.io.File r6 = r4.c()     // Catch:{ Exception -> 0x00be }
            r5.<init>(r6)     // Catch:{ Exception -> 0x00be }
            int r6 = r5.read(r2)     // Catch:{ Exception -> 0x00b0, all -> 0x00ad }
        L_0x0095:
            if (r6 < 0) goto L_0x00a2
            r11.write(r2, r3, r6)     // Catch:{ Exception -> 0x00b0, all -> 0x00ad }
            r11.flush()     // Catch:{ Exception -> 0x00b0, all -> 0x00ad }
            int r6 = r5.read(r2)     // Catch:{ Exception -> 0x00b0, all -> 0x00ad }
            goto L_0x0095
        L_0x00a2:
            r5.close()     // Catch:{ Exception -> 0x00b0, all -> 0x00ad }
            java.io.File r4 = r4.c()     // Catch:{ Exception -> 0x00be }
            r4.delete()     // Catch:{ Exception -> 0x00be }
            goto L_0x007c
        L_0x00ad:
            r9 = move-exception
            r0 = r5
            goto L_0x00dd
        L_0x00b0:
            r9 = move-exception
            r0 = r5
            goto L_0x00c7
        L_0x00b3:
            if (r10 == 0) goto L_0x00b8
            r10.close()     // Catch:{ IOException -> 0x00b8 }
        L_0x00b8:
            r1.close()     // Catch:{ IOException -> 0x00bb }
        L_0x00bb:
            com.farsitel.bazaar.data.feature.download.Downloader$MergeDownloadPartState r9 = com.farsitel.bazaar.data.feature.download.Downloader.MergeDownloadPartState.SUCCESS
            return r9
        L_0x00be:
            r9 = move-exception
            goto L_0x00c7
        L_0x00c0:
            r9 = move-exception
            r10 = r0
            r1 = r10
            goto L_0x00dd
        L_0x00c4:
            r9 = move-exception
            r10 = r0
            r1 = r10
        L_0x00c7:
            r9.printStackTrace()     // Catch:{ all -> 0x00dc }
            com.farsitel.bazaar.data.feature.download.Downloader$MergeDownloadPartState r9 = com.farsitel.bazaar.data.feature.download.Downloader.MergeDownloadPartState.FAILED     // Catch:{ all -> 0x00dc }
            if (r0 == 0) goto L_0x00d1
            r0.close()     // Catch:{ IOException -> 0x00d1 }
        L_0x00d1:
            if (r10 == 0) goto L_0x00d6
            r10.close()     // Catch:{ IOException -> 0x00d6 }
        L_0x00d6:
            if (r1 == 0) goto L_0x00db
            r1.close()     // Catch:{ IOException -> 0x00db }
        L_0x00db:
            return r9
        L_0x00dc:
            r9 = move-exception
        L_0x00dd:
            if (r0 == 0) goto L_0x00e2
            r0.close()     // Catch:{ IOException -> 0x00e2 }
        L_0x00e2:
            if (r10 == 0) goto L_0x00e7
            r10.close()     // Catch:{ IOException -> 0x00e7 }
        L_0x00e7:
            if (r1 == 0) goto L_0x00ec
            r1.close()     // Catch:{ IOException -> 0x00ec }
        L_0x00ec:
            goto L_0x00ee
        L_0x00ed:
            throw r9
        L_0x00ee:
            goto L_0x00ed
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.i.u.a(java.util.List, java.io.File, javax.crypto.Cipher):com.farsitel.bazaar.data.feature.download.Downloader$MergeDownloadPartState");
    }
}
