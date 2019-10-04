package com.pusher.java_websocket;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;

public final class a {
    public static boolean read(ByteBuffer byteBuffer, d dVar, ByteChannel byteChannel) throws IOException {
        byteBuffer.clear();
        int read = byteChannel.read(byteBuffer);
        byteBuffer.flip();
        boolean z = false;
        if (read == -1) {
            dVar.eot();
            return false;
        }
        if (read != 0) {
            z = true;
        }
        return z;
    }

    public static boolean readMore(ByteBuffer byteBuffer, d dVar, f fVar) throws IOException {
        byteBuffer.clear();
        int readMore = fVar.readMore(byteBuffer);
        byteBuffer.flip();
        if (readMore != -1) {
            return fVar.isNeedRead();
        }
        dVar.eot();
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:25:0x0063 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean batch(com.pusher.java_websocket.d r4, java.nio.channels.ByteChannel r5) throws java.io.IOException {
        /*
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r4.outQueue
            java.lang.Object r0 = r0.peek()
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            r1 = 0
            if (r0 != 0) goto L_0x001c
            boolean r0 = r5 instanceof com.pusher.java_websocket.f
            if (r0 == 0) goto L_0x0035
            r0 = r5
            com.pusher.java_websocket.f r0 = (com.pusher.java_websocket.f) r0
            boolean r2 = r0.isNeedWrite()
            if (r2 == 0) goto L_0x0036
            r0.writeMore()
            goto L_0x0036
        L_0x001c:
            r5.write(r0)
            int r0 = r0.remaining()
            if (r0 <= 0) goto L_0x0026
            return r1
        L_0x0026:
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r4.outQueue
            r0.poll()
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r0 = r4.outQueue
            java.lang.Object r0 = r0.peek()
            java.nio.ByteBuffer r0 = (java.nio.ByteBuffer) r0
            if (r0 != 0) goto L_0x001c
        L_0x0035:
            r0 = 0
        L_0x0036:
            if (r4 == 0) goto L_0x006b
            java.util.concurrent.BlockingQueue<java.nio.ByteBuffer> r2 = r4.outQueue
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L_0x006b
            boolean r2 = r4.isFlushAndClose()
            if (r2 == 0) goto L_0x006b
            com.pusher.java_websocket.drafts.Draft r2 = r4.getDraft()
            if (r2 == 0) goto L_0x006b
            com.pusher.java_websocket.drafts.Draft r2 = r4.getDraft()
            com.pusher.java_websocket.WebSocket$Role r2 = r2.getRole()
            if (r2 == 0) goto L_0x006b
            com.pusher.java_websocket.drafts.Draft r2 = r4.getDraft()
            com.pusher.java_websocket.WebSocket$Role r2 = r2.getRole()
            com.pusher.java_websocket.WebSocket$Role r3 = com.pusher.java_websocket.WebSocket.Role.SERVER
            if (r2 != r3) goto L_0x006b
            monitor-enter(r4)
            r4.closeConnection()     // Catch:{ all -> 0x0068 }
            monitor-exit(r4)     // Catch:{ all -> 0x0068 }
            goto L_0x006b
        L_0x0068:
            r5 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0068 }
            throw r5
        L_0x006b:
            if (r0 == 0) goto L_0x0076
            com.pusher.java_websocket.f r5 = (com.pusher.java_websocket.f) r5
            boolean r4 = r5.isNeedWrite()
            if (r4 == 0) goto L_0x0076
            return r1
        L_0x0076:
            r4 = 1
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pusher.java_websocket.a.batch(com.pusher.java_websocket.d, java.nio.channels.ByteChannel):boolean");
    }
}
