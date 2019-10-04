package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.net.URL;
import java.util.Map;

final class jg implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final URL f3239a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f3240b;
    private final je c;
    private final String d;
    private final Map<String, String> e;
    private /* synthetic */ jd f;

    public jg(jd jdVar, String str, URL url, byte[] bArr, Map<String, String> map, je jeVar) {
        this.f = jdVar;
        ap.zzgm(str);
        ap.checkNotNull(url);
        ap.checkNotNull(jeVar);
        this.f3239a = url;
        this.f3240b = bArr;
        this.c = jeVar;
        this.d = str;
        this.e = map;
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x00e6 A[SYNTHETIC, Splitter:B:50:0x00e6] */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x0100  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0121 A[SYNTHETIC, Splitter:B:63:0x0121] */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x013b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r13 = this;
            java.lang.String r0 = "Error closing HTTP compressed POST connection output stream. appId"
            com.google.android.gms.internal.jd r1 = r13.f
            r1.zzawj()
            r1 = 0
            r2 = 0
            java.net.URL r3 = r13.f3239a     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            java.net.URLConnection r3 = r3.openConnection()     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            boolean r4 = r3 instanceof java.net.HttpURLConnection     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            if (r4 == 0) goto L_0x00d8
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            r3.setDefaultUseCaches(r1)     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            r4 = 60000(0xea60, float:8.4078E-41)
            r3.setConnectTimeout(r4)     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            r4 = 61000(0xee48, float:8.5479E-41)
            r3.setReadTimeout(r4)     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            r3.setInstanceFollowRedirects(r1)     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            r4 = 1
            r3.setDoInput(r4)     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            java.util.Map<java.lang.String, java.lang.String> r5 = r13.e     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            if (r5 == 0) goto L_0x0055
            java.util.Map<java.lang.String, java.lang.String> r5 = r13.e     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.util.Set r5 = r5.entrySet()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.util.Iterator r5 = r5.iterator()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
        L_0x0039:
            boolean r6 = r5.hasNext()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            if (r6 == 0) goto L_0x0055
            java.lang.Object r6 = r5.next()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.Object r7 = r6.getKey()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.String r7 = (java.lang.String) r7     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.Object r6 = r6.getValue()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.String r6 = (java.lang.String) r6     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            r3.addRequestProperty(r7, r6)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            goto L_0x0039
        L_0x0055:
            byte[] r5 = r13.f3240b     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            if (r5 == 0) goto L_0x00a0
            com.google.android.gms.internal.jd r5 = r13.f     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            com.google.android.gms.internal.na r5 = r5.zzawu()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            byte[] r6 = r13.f3240b     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            byte[] r5 = r5.zzq(r6)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            com.google.android.gms.internal.jd r6 = r13.f     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            com.google.android.gms.internal.iz r6 = r6.zzawy()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            com.google.android.gms.internal.jb r6 = r6.zzazj()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.String r7 = "Uploading data. size"
            int r8 = r5.length     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            r6.zzj(r7, r8)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            r3.setDoOutput(r4)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.lang.String r4 = "Content-Encoding"
            java.lang.String r6 = "gzip"
            r3.addRequestProperty(r4, r6)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            int r4 = r5.length     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            r3.setFixedLengthStreamingMode(r4)     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            r3.connect()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.io.OutputStream r4 = r3.getOutputStream()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            r4.write(r5)     // Catch:{ IOException -> 0x009a, all -> 0x0095 }
            r4.close()     // Catch:{ IOException -> 0x009a, all -> 0x0095 }
            goto L_0x00a0
        L_0x0095:
            r5 = move-exception
            r11 = r2
            r2 = r4
            r4 = r5
            goto L_0x00e3
        L_0x009a:
            r5 = move-exception
            r11 = r2
            r2 = r4
            r9 = r5
            goto L_0x011e
        L_0x00a0:
            int r8 = r3.getResponseCode()     // Catch:{ IOException -> 0x00d5, all -> 0x00d2 }
            java.util.Map r11 = r3.getHeaderFields()     // Catch:{ IOException -> 0x00ce, all -> 0x00cb }
            byte[] r10 = com.google.android.gms.internal.jd.a(r3)     // Catch:{ IOException -> 0x00c9, all -> 0x00c7 }
            if (r3 == 0) goto L_0x00b1
            r3.disconnect()
        L_0x00b1:
            com.google.android.gms.internal.jd r0 = r13.f
            com.google.android.gms.internal.js r0 = r0.zzawx()
            com.google.android.gms.internal.jf r1 = new com.google.android.gms.internal.jf
            java.lang.String r6 = r13.d
            com.google.android.gms.internal.je r7 = r13.c
            r9 = 0
            r12 = 0
            r5 = r1
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
        L_0x00c3:
            r0.zzg(r1)
            return
        L_0x00c7:
            r4 = move-exception
            goto L_0x00e4
        L_0x00c9:
            r4 = move-exception
            goto L_0x00d0
        L_0x00cb:
            r4 = move-exception
            r11 = r2
            goto L_0x00e4
        L_0x00ce:
            r4 = move-exception
            r11 = r2
        L_0x00d0:
            r9 = r4
            goto L_0x011f
        L_0x00d2:
            r4 = move-exception
            r11 = r2
            goto L_0x00e3
        L_0x00d5:
            r4 = move-exception
            r11 = r2
            goto L_0x011d
        L_0x00d8:
            java.io.IOException r3 = new java.io.IOException     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            java.lang.String r4 = "Failed to obtain HTTP connection"
            r3.<init>(r4)     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
            throw r3     // Catch:{ IOException -> 0x011a, all -> 0x00e0 }
        L_0x00e0:
            r4 = move-exception
            r3 = r2
            r11 = r3
        L_0x00e3:
            r8 = 0
        L_0x00e4:
            if (r2 == 0) goto L_0x00fe
            r2.close()     // Catch:{ IOException -> 0x00ea }
            goto L_0x00fe
        L_0x00ea:
            r1 = move-exception
            com.google.android.gms.internal.jd r2 = r13.f
            com.google.android.gms.internal.iz r2 = r2.zzawy()
            com.google.android.gms.internal.jb r2 = r2.zzazd()
            java.lang.String r5 = r13.d
            java.lang.Object r5 = com.google.android.gms.internal.iz.a((java.lang.String) r5)
            r2.zze(r0, r5, r1)
        L_0x00fe:
            if (r3 == 0) goto L_0x0103
            r3.disconnect()
        L_0x0103:
            com.google.android.gms.internal.jd r0 = r13.f
            com.google.android.gms.internal.js r0 = r0.zzawx()
            com.google.android.gms.internal.jf r1 = new com.google.android.gms.internal.jf
            java.lang.String r6 = r13.d
            com.google.android.gms.internal.je r7 = r13.c
            r9 = 0
            r10 = 0
            r12 = 0
            r5 = r1
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
            r0.zzg(r1)
            throw r4
        L_0x011a:
            r4 = move-exception
            r3 = r2
            r11 = r3
        L_0x011d:
            r9 = r4
        L_0x011e:
            r8 = 0
        L_0x011f:
            if (r2 == 0) goto L_0x0139
            r2.close()     // Catch:{ IOException -> 0x0125 }
            goto L_0x0139
        L_0x0125:
            r1 = move-exception
            com.google.android.gms.internal.jd r2 = r13.f
            com.google.android.gms.internal.iz r2 = r2.zzawy()
            com.google.android.gms.internal.jb r2 = r2.zzazd()
            java.lang.String r4 = r13.d
            java.lang.Object r4 = com.google.android.gms.internal.iz.a((java.lang.String) r4)
            r2.zze(r0, r4, r1)
        L_0x0139:
            if (r3 == 0) goto L_0x013e
            r3.disconnect()
        L_0x013e:
            com.google.android.gms.internal.jd r0 = r13.f
            com.google.android.gms.internal.js r0 = r0.zzawx()
            com.google.android.gms.internal.jf r1 = new com.google.android.gms.internal.jf
            java.lang.String r6 = r13.d
            com.google.android.gms.internal.je r7 = r13.c
            r10 = 0
            r12 = 0
            r5 = r1
            r5.<init>(r6, r7, r8, r9, r10, r11, r12)
            goto L_0x00c3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jg.run():void");
    }
}
