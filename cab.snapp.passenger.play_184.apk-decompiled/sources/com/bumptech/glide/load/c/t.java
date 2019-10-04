package com.bumptech.glide.load.c;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.b.a.b;
import java.io.InputStream;

public final class t implements a<InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final b f2312a;

    public t(b bVar) {
        this.f2312a = bVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x002e A[SYNTHETIC, Splitter:B:17:0x002e] */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x003a A[SYNTHETIC, Splitter:B:24:0x003a] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean encode(java.io.InputStream r4, java.io.File r5, com.bumptech.glide.load.g r6) {
        /*
            r3 = this;
            com.bumptech.glide.load.b.a.b r6 = r3.f2312a
            java.lang.Class<byte[]> r0 = byte[].class
            r1 = 65536(0x10000, float:9.18355E-41)
            java.lang.Object r6 = r6.get(r1, r0)
            byte[] r6 = (byte[]) r6
            r0 = 0
            r1 = 0
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x0037, all -> 0x002a }
            r2.<init>(r5)     // Catch:{ IOException -> 0x0037, all -> 0x002a }
        L_0x0013:
            int r5 = r4.read(r6)     // Catch:{ IOException -> 0x0028, all -> 0x0026 }
            r1 = -1
            if (r5 == r1) goto L_0x001e
            r2.write(r6, r0, r5)     // Catch:{ IOException -> 0x0028, all -> 0x0026 }
            goto L_0x0013
        L_0x001e:
            r2.close()     // Catch:{ IOException -> 0x0028, all -> 0x0026 }
            r0 = 1
            r2.close()     // Catch:{ IOException -> 0x003d }
            goto L_0x003d
        L_0x0026:
            r4 = move-exception
            goto L_0x002c
        L_0x0028:
            r1 = r2
            goto L_0x0038
        L_0x002a:
            r4 = move-exception
            r2 = r1
        L_0x002c:
            if (r2 == 0) goto L_0x0031
            r2.close()     // Catch:{ IOException -> 0x0031 }
        L_0x0031:
            com.bumptech.glide.load.b.a.b r5 = r3.f2312a
            r5.put(r6)
            throw r4
        L_0x0037:
        L_0x0038:
            if (r1 == 0) goto L_0x003d
            r1.close()     // Catch:{ IOException -> 0x003d }
        L_0x003d:
            com.bumptech.glide.load.b.a.b r4 = r3.f2312a
            r4.put(r6)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.c.t.encode(java.io.InputStream, java.io.File, com.bumptech.glide.load.g):boolean");
    }
}
