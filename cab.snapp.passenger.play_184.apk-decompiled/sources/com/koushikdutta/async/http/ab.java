package com.koushikdutta.async.http;

import android.text.TextUtils;
import android.util.Base64;
import com.koushikdutta.async.a.a;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.a.g;
import com.koushikdutta.async.af;
import com.koushikdutta.async.h;
import com.koushikdutta.async.http.e.b;
import com.koushikdutta.async.http.z;
import com.koushikdutta.async.j;
import com.koushikdutta.async.k;
import com.koushikdutta.async.l;
import io.fabric.sdk.android.services.network.c;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.LinkedList;
import java.util.UUID;

public final class ab implements z {

    /* renamed from: a  reason: collision with root package name */
    k f4646a;

    /* renamed from: b  reason: collision with root package name */
    r f4647b;
    a c;
    private LinkedList<l> d;
    /* access modifiers changed from: private */
    public j e;
    /* access modifiers changed from: private */
    public z.c f;
    private d g;
    /* access modifiers changed from: private */
    public z.a h;
    /* access modifiers changed from: private */
    public z.b i;

    public final String charset() {
        return null;
    }

    public final boolean isChunked() {
        return false;
    }

    public final void end() {
        this.e.end();
    }

    private static String a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(str.getBytes("iso-8859-1"), 0, str.length());
            return Base64.encodeToString(instance.digest(), 2);
        } catch (Exception unused) {
            return null;
        }
    }

    private void a(boolean z, boolean z2) {
        this.f4647b = new r(this.e) {
            /* access modifiers changed from: protected */
            public final void a(Exception exc) {
                if (ab.this.c != null) {
                    ab.this.c.onCompleted(exc);
                }
            }

            /* access modifiers changed from: protected */
            public final void a(byte[] bArr) {
                ab.a(ab.this, new l(bArr));
            }

            /* access modifiers changed from: protected */
            public final void a(String str) {
                if (ab.this.f != null) {
                    ab.this.f.onStringAvailable(str);
                }
            }

            /* access modifiers changed from: protected */
            public final void b() {
                ab.this.e.close();
            }

            /* access modifiers changed from: protected */
            public final void b(byte[] bArr) {
                ab.this.f4646a.write(new l(bArr));
            }

            /* access modifiers changed from: protected */
            public final void c(String str) {
                if (ab.this.h != null) {
                    ab.this.h.onPingReceived(str);
                }
            }

            /* access modifiers changed from: protected */
            public final void b(String str) {
                if (ab.this.i != null) {
                    ab.this.i.onPongReceived(str);
                }
            }
        };
        this.f4647b.setMasking(z);
        this.f4647b.setDeflate(z2);
        if (this.e.isPaused()) {
            this.e.resume();
        }
    }

    public ab(b bVar, com.koushikdutta.async.http.e.d dVar) {
        this(bVar.getSocket());
        String str = bVar.getHeaders().get("Sec-WebSocket-Key");
        String a2 = a(str + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11");
        bVar.getHeaders().get("Origin");
        dVar.code(101);
        dVar.getHeaders().set("Upgrade", "WebSocket");
        dVar.getHeaders().set("Connection", "Upgrade");
        dVar.getHeaders().set("Sec-WebSocket-Accept", a2);
        String str2 = bVar.getHeaders().get("Sec-WebSocket-Protocol");
        if (!TextUtils.isEmpty(str2)) {
            dVar.getHeaders().set("Sec-WebSocket-Protocol", str2);
        }
        dVar.writeHead();
        a(false, false);
    }

    public static void addWebSocketUpgradeHeaders(d dVar, String str) {
        n headers = dVar.getHeaders();
        UUID randomUUID = UUID.randomUUID();
        byte[] bArr = new byte[16];
        ByteBuffer.wrap(bArr).asLongBuffer().put(new long[]{randomUUID.getMostSignificantBits(), randomUUID.getLeastSignificantBits()});
        String encodeToString = Base64.encodeToString(bArr, 2);
        headers.set("Sec-WebSocket-Version", "13");
        headers.set("Sec-WebSocket-Key", encodeToString);
        headers.set("Sec-WebSocket-Extensions", "x-webkit-deflate-frame");
        headers.set("Connection", "Upgrade");
        headers.set("Upgrade", "websocket");
        if (str != null) {
            headers.set("Sec-WebSocket-Protocol", str);
        }
        headers.set("Pragma", "no-cache");
        headers.set(c.HEADER_CACHE_CONTROL, "no-cache");
        if (TextUtils.isEmpty(dVar.getHeaders().get("User-Agent"))) {
            dVar.getHeaders().set("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.15 Safari/537.36");
        }
    }

    public ab(j jVar) {
        this.e = jVar;
        this.f4646a = new k(this.e);
    }

    public static z finishHandshake(n nVar, e eVar) {
        if (eVar == null || eVar.code() != 101 || !"websocket".equalsIgnoreCase(eVar.headers().get("Upgrade"))) {
            return null;
        }
        String str = eVar.headers().get("Sec-WebSocket-Accept");
        if (str == null) {
            return null;
        }
        String str2 = nVar.get("Sec-WebSocket-Key");
        if (str2 == null) {
            return null;
        }
        if (!str.equalsIgnoreCase(a(str2 + "258EAFA5-E914-47DA-95CA-C5AB0DC85B11").trim())) {
            return null;
        }
        String str3 = nVar.get("Sec-WebSocket-Extensions");
        boolean z = false;
        if (str3 != null && str3.equals("x-webkit-deflate-frame")) {
            z = true;
        }
        ab abVar = new ab(eVar.detachSocket());
        abVar.a(true, z);
        return abVar;
    }

    public final void close() {
        this.e.close();
    }

    public final void setClosedCallback(a aVar) {
        this.e.setClosedCallback(aVar);
    }

    public final a getClosedCallback() {
        return this.e.getClosedCallback();
    }

    public final void setEndCallback(a aVar) {
        this.c = aVar;
    }

    public final a getEndCallback() {
        return this.c;
    }

    public final void send(byte[] bArr) {
        this.f4646a.write(new l(this.f4647b.frame(bArr)));
    }

    public final void send(byte[] bArr, int i2, int i3) {
        this.f4646a.write(new l(this.f4647b.frame(bArr, i2, i3)));
    }

    public final void send(String str) {
        this.f4646a.write(new l(this.f4647b.frame(str)));
    }

    public final void ping(String str) {
        this.f4646a.write(new l(ByteBuffer.wrap(this.f4647b.pingFrame(str))));
    }

    public final void pong(String str) {
        this.f4646a.write(new l(ByteBuffer.wrap(this.f4647b.pongFrame(str))));
    }

    public final void setStringCallback(z.c cVar) {
        this.f = cVar;
    }

    public final void setDataCallback(d dVar) {
        this.g = dVar;
    }

    public final z.c getStringCallback() {
        return this.f;
    }

    public final void setPingCallback(z.a aVar) {
        this.h = aVar;
    }

    public final void setPongCallback(z.b bVar) {
        this.i = bVar;
    }

    public final z.b getPongCallback() {
        return this.i;
    }

    public final d getDataCallback() {
        return this.g;
    }

    public final boolean isOpen() {
        return this.e.isOpen();
    }

    public final boolean isBuffering() {
        return this.f4646a.remaining() > 0;
    }

    public final void write(l lVar) {
        send(lVar.getAllByteArray());
    }

    public final void setWriteableCallback(g gVar) {
        this.f4646a.setWriteableCallback(gVar);
    }

    public final g getWriteableCallback() {
        return this.f4646a.getWriteableCallback();
    }

    public final j getSocket() {
        return this.e;
    }

    public final h getServer() {
        return this.e.getServer();
    }

    public final void pause() {
        this.e.pause();
    }

    public final void resume() {
        this.e.resume();
    }

    public final boolean isPaused() {
        return this.e.isPaused();
    }

    static /* synthetic */ void a(ab abVar, l lVar) {
        if (abVar.d == null) {
            af.emitAllData(abVar, lVar);
            if (lVar.remaining() > 0) {
                abVar.d = new LinkedList<>();
                abVar.d.add(lVar);
            }
            return;
        }
        while (!abVar.isPaused()) {
            l remove = abVar.d.remove();
            af.emitAllData(abVar, remove);
            if (remove.remaining() > 0) {
                abVar.d.add(0, remove);
            }
        }
        if (abVar.d.size() == 0) {
            abVar.d = null;
        }
    }
}
