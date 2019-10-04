package com.koushikdutta.async.http;

import com.koushikdutta.async.http.b;
import com.koushikdutta.async.http.d.c;

public final class p extends y {
    /* JADX WARNING: type inference failed for: r5v1, types: [com.koushikdutta.async.j] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean exchangeHeaders(final com.koushikdutta.async.http.b.c r9) {
        /*
            r8 = this;
            java.lang.String r0 = r9.protocol
            com.koushikdutta.async.http.Protocol r0 = com.koushikdutta.async.http.Protocol.get(r0)
            if (r0 == 0) goto L_0x0015
            com.koushikdutta.async.http.Protocol r1 = com.koushikdutta.async.http.Protocol.HTTP_1_0
            if (r0 == r1) goto L_0x0015
            com.koushikdutta.async.http.Protocol r1 = com.koushikdutta.async.http.Protocol.HTTP_1_1
            if (r0 == r1) goto L_0x0015
            boolean r9 = super.exchangeHeaders(r9)
            return r9
        L_0x0015:
            com.koushikdutta.async.http.d r0 = r9.request
            com.koushikdutta.async.http.d r1 = r9.request
            com.koushikdutta.async.http.a.a r1 = r1.getBody()
            if (r1 == 0) goto L_0x006f
            int r2 = r1.length()
            if (r2 < 0) goto L_0x003e
            com.koushikdutta.async.http.n r2 = r0.getHeaders()
            int r3 = r1.length()
            java.lang.String r3 = java.lang.String.valueOf(r3)
            java.lang.String r4 = "Content-Length"
            r2.set(r4, r3)
            com.koushikdutta.async.http.b$h r2 = r9.response
            com.koushikdutta.async.j r3 = r9.socket
            r2.sink(r3)
            goto L_0x006f
        L_0x003e:
            com.koushikdutta.async.http.n r2 = r0.getHeaders()
            java.lang.String r3 = "Connection"
            java.lang.String r2 = r2.get(r3)
            java.lang.String r3 = "close"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x0058
            com.koushikdutta.async.http.b$h r2 = r9.response
            com.koushikdutta.async.j r3 = r9.socket
            r2.sink(r3)
            goto L_0x006f
        L_0x0058:
            com.koushikdutta.async.http.n r2 = r0.getHeaders()
            java.lang.String r3 = "Transfer-Encoding"
            java.lang.String r4 = "Chunked"
            r2.set(r3, r4)
            com.koushikdutta.async.http.b$h r2 = r9.response
            com.koushikdutta.async.http.d.c r3 = new com.koushikdutta.async.http.d.c
            com.koushikdutta.async.j r4 = r9.socket
            r3.<init>(r4)
            r2.sink(r3)
        L_0x006f:
            com.koushikdutta.async.http.w r2 = r0.getRequestLine()
            java.lang.String r2 = r2.toString()
            com.koushikdutta.async.http.n r3 = r0.getHeaders()
            java.lang.String r2 = r3.toPrefixString(r2)
            byte[] r3 = r2.getBytes()
            r4 = 1
            if (r1 == 0) goto L_0x0098
            int r5 = r1.length()
            if (r5 < 0) goto L_0x0098
            int r1 = r1.length()
            int r5 = r3.length
            int r1 = r1 + r5
            r5 = 1024(0x400, float:1.435E-42)
            if (r1 >= r5) goto L_0x0098
            r1 = 1
            goto L_0x0099
        L_0x0098:
            r1 = 0
        L_0x0099:
            if (r1 == 0) goto L_0x00b0
            com.koushikdutta.async.k r1 = new com.koushikdutta.async.k
            com.koushikdutta.async.http.b$h r5 = r9.response
            com.koushikdutta.async.q r5 = r5.sink()
            r1.<init>(r5)
            r1.forceBuffering(r4)
            com.koushikdutta.async.http.b$h r5 = r9.response
            r5.sink(r1)
            r5 = r1
            goto L_0x00b6
        L_0x00b0:
            r1 = 0
            com.koushikdutta.async.j r5 = r9.socket
            r7 = r5
            r5 = r1
            r1 = r7
        L_0x00b6:
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r6 = "\n"
            java.lang.String r2 = r6.concat(r2)
            r0.logv(r2)
            com.koushikdutta.async.a.a r0 = r9.sendHeadersCallback
            com.koushikdutta.async.http.p$1 r2 = new com.koushikdutta.async.http.p$1
            r2.<init>(r0, r5)
            com.koushikdutta.async.af.writeAll((com.koushikdutta.async.q) r1, (byte[]) r3, (com.koushikdutta.async.a.a) r2)
            com.koushikdutta.async.http.p$2 r0 = new com.koushikdutta.async.http.p$2
            r0.<init>(r9)
            com.koushikdutta.async.y r1 = new com.koushikdutta.async.y
            r1.<init>()
            com.koushikdutta.async.j r9 = r9.socket
            r9.setDataCallback(r1)
            r1.setLineCallback(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.koushikdutta.async.http.p.exchangeHeaders(com.koushikdutta.async.http.b$c):boolean");
    }

    public final void onRequestSent(b.f fVar) {
        Protocol protocol = Protocol.get(fVar.protocol);
        if ((protocol == null || protocol == Protocol.HTTP_1_0 || protocol == Protocol.HTTP_1_1) && (fVar.response.sink() instanceof c)) {
            fVar.response.sink().end();
        }
    }
}
