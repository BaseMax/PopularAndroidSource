package com.yandex.metrica.impl;

public class as {
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v0, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r4v1, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v4, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v5, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v6, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v9, resolved type: java.io.OutputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v16, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v17, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v18, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v19, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v20, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v21, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v22, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v23, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v24, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r3v25, resolved type: java.io.InputStream} */
    /* JADX WARNING: type inference failed for: r4v0, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r4v2 */
    /* JADX WARNING: type inference failed for: r4v3, types: [java.io.Closeable] */
    /* JADX WARNING: type inference failed for: r4v4 */
    /* JADX WARNING: type inference failed for: r4v6 */
    /* JADX WARNING: type inference failed for: r4v7, types: [java.io.OutputStream, java.io.BufferedOutputStream] */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:48:0x00d5 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x009a A[Catch:{ all -> 0x007f, all -> 0x00cd }] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x00b4 A[SYNTHETIC, Splitter:B:36:0x00b4] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.yandex.metrica.impl.aq r9) {
        /*
            r8 = this;
            r0 = 0
            r9.e()     // Catch:{ all -> 0x00d1 }
            com.yandex.metrica.impl.ob.im r1 = r9.d()     // Catch:{ all -> 0x00d1 }
            java.net.HttpURLConnection r1 = r1.a()     // Catch:{ all -> 0x00d1 }
            java.util.Map r2 = r9.A()     // Catch:{ all -> 0x00cf }
            java.util.Set r2 = r2.entrySet()     // Catch:{ all -> 0x00cf }
            java.util.Iterator r2 = r2.iterator()     // Catch:{ all -> 0x00cf }
        L_0x0018:
            boolean r3 = r2.hasNext()     // Catch:{ all -> 0x00cf }
            if (r3 == 0) goto L_0x003a
            java.lang.Object r3 = r2.next()     // Catch:{ all -> 0x00cf }
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3     // Catch:{ all -> 0x00cf }
            java.lang.Object r4 = r3.getKey()     // Catch:{ all -> 0x00cf }
            java.lang.String r4 = (java.lang.String) r4     // Catch:{ all -> 0x00cf }
            java.lang.String r5 = ","
            java.lang.Object r3 = r3.getValue()     // Catch:{ all -> 0x00cf }
            java.lang.Iterable r3 = (java.lang.Iterable) r3     // Catch:{ all -> 0x00cf }
            java.lang.String r3 = android.text.TextUtils.join(r5, r3)     // Catch:{ all -> 0x00cf }
            r1.setRequestProperty(r4, r3)     // Catch:{ all -> 0x00cf }
            goto L_0x0018
        L_0x003a:
            r2 = 2
            int r3 = r9.j()     // Catch:{ all -> 0x00cf }
            if (r2 != r3) goto L_0x0082
            byte[] r2 = r9.k()     // Catch:{ all -> 0x00cf }
            if (r2 == 0) goto L_0x0082
            int r3 = r2.length     // Catch:{ all -> 0x00cf }
            if (r3 <= 0) goto L_0x0082
            java.lang.Long r3 = r9.z()     // Catch:{ all -> 0x00cf }
            r4 = 1
            r1.setDoOutput(r4)     // Catch:{ all -> 0x00cf }
            if (r3 == 0) goto L_0x0067
            java.lang.String r4 = "Send-Timestamp"
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ all -> 0x00cf }
            long r6 = r3.longValue()     // Catch:{ all -> 0x00cf }
            long r5 = r5.toSeconds(r6)     // Catch:{ all -> 0x00cf }
            java.lang.String r3 = java.lang.String.valueOf(r5)     // Catch:{ all -> 0x00cf }
            r1.setRequestProperty(r4, r3)     // Catch:{ all -> 0x00cf }
        L_0x0067:
            java.io.OutputStream r3 = r1.getOutputStream()     // Catch:{ all -> 0x00cf }
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch:{ all -> 0x007f }
            int r2 = r2.length     // Catch:{ all -> 0x007f }
            r4.<init>(r3, r2)     // Catch:{ all -> 0x007f }
            byte[] r2 = r9.k()     // Catch:{ all -> 0x00cd }
            r4.write(r2)     // Catch:{ all -> 0x00cd }
            r4.flush()     // Catch:{ all -> 0x00cd }
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r3)     // Catch:{ all -> 0x00cd }
            goto L_0x0084
        L_0x007f:
            r2 = r0
            r4 = r2
            goto L_0x00d5
        L_0x0082:
            r3 = r0
            r4 = r3
        L_0x0084:
            int r2 = r1.getResponseCode()     // Catch:{ all -> 0x00cd }
            r9.a((int) r2)     // Catch:{ all -> 0x00cd }
            java.util.Map r5 = r1.getHeaderFields()     // Catch:{ all -> 0x00cd }
            r9.a((java.util.Map<java.lang.String, java.util.List<java.lang.String>>) r5)     // Catch:{ all -> 0x00cd }
            boolean r2 = r9.b((int) r2)     // Catch:{ all -> 0x00cd }
            r5 = 8000(0x1f40, float:1.121E-41)
            if (r2 == 0) goto L_0x00b4
            java.io.InputStream r2 = r1.getInputStream()     // Catch:{ all -> 0x00cd }
            java.io.BufferedInputStream r6 = new java.io.BufferedInputStream     // Catch:{ all -> 0x00d5 }
            r6.<init>(r2, r5)     // Catch:{ all -> 0x00d5 }
            r0 = 2147483647(0x7fffffff, float:NaN)
            byte[] r0 = com.yandex.metrica.impl.w.a((java.io.InputStream) r6, (int) r0)     // Catch:{ all -> 0x00b2 }
            r9.b((byte[]) r0)     // Catch:{ all -> 0x00b2 }
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r2)     // Catch:{ all -> 0x00b2 }
            r0 = r2
            goto L_0x00bd
        L_0x00b2:
            r0 = r6
            goto L_0x00d5
        L_0x00b4:
            java.io.BufferedInputStream r6 = new java.io.BufferedInputStream     // Catch:{ all -> 0x00cd }
            java.io.InputStream r2 = r1.getErrorStream()     // Catch:{ all -> 0x00cd }
            r6.<init>(r2, r5)     // Catch:{ all -> 0x00cd }
        L_0x00bd:
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r4)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r6)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r3)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r0)
        L_0x00c9:
            com.yandex.metrica.impl.bv.a((java.net.HttpURLConnection) r1)
            return
        L_0x00cd:
            r2 = r0
            goto L_0x00d5
        L_0x00cf:
            r2 = r0
            goto L_0x00d3
        L_0x00d1:
            r1 = r0
            r2 = r1
        L_0x00d3:
            r3 = r2
            r4 = r3
        L_0x00d5:
            r9.h()     // Catch:{ all -> 0x00e5 }
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r4)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r0)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r3)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r2)
            goto L_0x00c9
        L_0x00e5:
            r9 = move-exception
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r4)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r0)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r3)
            com.yandex.metrica.impl.bv.a((java.io.Closeable) r2)
            com.yandex.metrica.impl.bv.a((java.net.HttpURLConnection) r1)
            goto L_0x00f7
        L_0x00f6:
            throw r9
        L_0x00f7:
            goto L_0x00f6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.as.a(com.yandex.metrica.impl.aq):void");
    }
}
