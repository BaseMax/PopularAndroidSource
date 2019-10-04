package com.koushikdutta.async.http.spdy;

import com.adjust.sdk.Constants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.koushikdutta.async.http.spdy.b;
import com.koushikdutta.async.http.spdy.k;
import com.koushikdutta.async.l;
import io.fabric.sdk.android.services.network.c;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.eclipse.paho.a.a.w;

final class i {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final g[] f4789a = {new g(g.TARGET_AUTHORITY, ""), new g(g.TARGET_METHOD, "GET"), new g(g.TARGET_METHOD, c.METHOD_POST), new g(g.TARGET_PATH, w.TOPIC_LEVEL_SEPARATOR), new g(g.TARGET_PATH, "/index.html"), new g(g.TARGET_SCHEME, "http"), new g(g.TARGET_SCHEME, Constants.SCHEME), new g(g.RESPONSE_STATUS, "200"), new g(g.RESPONSE_STATUS, "204"), new g(g.RESPONSE_STATUS, "206"), new g(g.RESPONSE_STATUS, "304"), new g(g.RESPONSE_STATUS, "400"), new g(g.RESPONSE_STATUS, "404"), new g(g.RESPONSE_STATUS, "500"), new g("accept-charset", ""), new g("accept-encoding", "gzip, deflate"), new g("accept-language", ""), new g("accept-ranges", ""), new g("accept", ""), new g("access-control-allow-origin", ""), new g("age", ""), new g("allow", ""), new g("authorization", ""), new g("cache-control", ""), new g("content-disposition", ""), new g("content-encoding", ""), new g("content-language", ""), new g("content-length", ""), new g("content-location", ""), new g("content-range", ""), new g("content-type", ""), new g("cookie", ""), new g("date", ""), new g("etag", ""), new g("expect", ""), new g("expires", ""), new g("from", ""), new g("host", ""), new g("if-match", ""), new g("if-modified-since", ""), new g("if-none-match", ""), new g("if-range", ""), new g("if-unmodified-since", ""), new g("last-modified", ""), new g("link", ""), new g(FirebaseAnalytics.b.LOCATION, ""), new g("max-forwards", ""), new g("proxy-authenticate", ""), new g("proxy-authorization", ""), new g("range", ""), new g("referer", ""), new g("refresh", ""), new g("retry-after", ""), new g("server", ""), new g("set-cookie", ""), new g("strict-transport-security", ""), new g("transfer-encoding", ""), new g("user-agent", ""), new g("vary", ""), new g("via", ""), new g("www-authenticate", "")};
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final Map<c, Integer> f4790b;

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        final List<g> f4791a = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        final l f4792b = new l();
        int c = 4096;
        int d = 4096;
        g[] e = new g[8];
        int f = (this.e.length - 1);
        int g = 0;
        b h = new b.a();
        b i = new b.a();
        int j = 0;

        a() {
        }

        public final void refill(l lVar) {
            lVar.get(this.f4792b);
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            int i2 = this.d;
            int i3 = this.j;
            if (i2 < i3) {
                if (i2 == 0) {
                    f();
                    return;
                }
                d(i3 - i2);
            }
        }

        private void f() {
            b();
            Arrays.fill(this.e, null);
            this.f = this.e.length - 1;
            this.g = 0;
            this.j = 0;
        }

        private int d(int i2) {
            int i3 = 0;
            if (i2 > 0) {
                int length = this.e.length;
                while (true) {
                    length--;
                    if (length < this.f || i2 <= 0) {
                        this.h.shiftLeft(i3);
                        this.i.shiftLeft(i3);
                        g[] gVarArr = this.e;
                        int i4 = this.f;
                        System.arraycopy(gVarArr, i4 + 1, gVarArr, i4 + 1 + i3, this.g);
                        this.f += i3;
                    } else {
                        i2 -= this.e[length].f4786a;
                        this.j -= this.e[length].f4786a;
                        this.g--;
                        i3++;
                    }
                }
                this.h.shiftLeft(i3);
                this.i.shiftLeft(i3);
                g[] gVarArr2 = this.e;
                int i42 = this.f;
                System.arraycopy(gVarArr2, i42 + 1, gVarArr2, i42 + 1 + i3, this.g);
                this.f += i3;
            }
            return i3;
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            this.h.clear();
            this.i.clear();
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            int length = this.e.length;
            while (true) {
                length--;
                if (length == this.f) {
                    return;
                }
                if (this.h.get(length) && !this.i.get(length)) {
                    this.f4791a.add(this.e[length]);
                }
            }
        }

        /* access modifiers changed from: package-private */
        public final List<g> d() {
            ArrayList arrayList = new ArrayList(this.f4791a);
            this.f4791a.clear();
            this.i.clear();
            return arrayList;
        }

        /* access modifiers changed from: package-private */
        public final int a(int i2) {
            return this.f + 1 + i2;
        }

        /* access modifiers changed from: package-private */
        public final c b(int i2) {
            if (c(i2)) {
                return i.f4789a[i2 - this.g].name;
            }
            return this.e[a(i2)].name;
        }

        /* access modifiers changed from: package-private */
        public final boolean c(int i2) {
            return i2 >= this.g;
        }

        /* access modifiers changed from: package-private */
        public final void a(g gVar) {
            int i2 = gVar.f4786a;
            int i3 = this.d;
            if (i2 > i3) {
                f();
                this.f4791a.add(gVar);
                return;
            }
            d((this.j + i2) - i3);
            int i4 = this.g + 1;
            g[] gVarArr = this.e;
            if (i4 > gVarArr.length) {
                g[] gVarArr2 = new g[(gVarArr.length * 2)];
                System.arraycopy(gVarArr, 0, gVarArr2, gVarArr.length, gVarArr.length);
                if (gVarArr2.length == 64) {
                    this.h = ((b.a) this.h).toVariableCapacity();
                    this.i = ((b.a) this.i).toVariableCapacity();
                }
                this.h.shiftLeft(this.e.length);
                this.i.shiftLeft(this.e.length);
                this.f = this.e.length - 1;
                this.e = gVarArr2;
            }
            int i5 = this.f;
            this.f = i5 - 1;
            this.h.set(i5);
            this.e[i5] = gVar;
            this.g++;
            this.j += i2;
        }

        private int g() throws IOException {
            return this.f4792b.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
        }

        /* access modifiers changed from: package-private */
        public final int a(int i2, int i3) throws IOException {
            int i4 = i2 & i3;
            if (i4 < i3) {
                return i4;
            }
            int i5 = 0;
            while (true) {
                int g2 = g();
                if ((g2 & 128) == 0) {
                    return i3 + (g2 << i5);
                }
                i3 += (g2 & 127) << i5;
                i5 += 7;
            }
        }

        /* access modifiers changed from: package-private */
        public final c e() throws IOException {
            int g2 = g();
            boolean z = (g2 & 128) == 128;
            int a2 = a(g2, 127);
            if (!z) {
                return c.of(this.f4792b.getBytes(a2));
            }
            k kVar = k.get();
            byte[] bytes = this.f4792b.getBytes(a2);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            k.a aVar = kVar.f4804a;
            byte b2 = 0;
            int i2 = 0;
            for (byte b3 : bytes) {
                b2 = (b2 << 8) | (b3 & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
                i2 += 8;
                while (i2 >= 8) {
                    aVar = aVar.f4805a[(b2 >>> (i2 - 8)) & 255];
                    if (aVar.f4805a == null) {
                        byteArrayOutputStream.write(aVar.f4806b);
                        i2 -= aVar.c;
                        aVar = kVar.f4804a;
                    } else {
                        i2 -= 8;
                    }
                }
            }
            while (i2 > 0) {
                k.a aVar2 = aVar.f4805a[(b2 << (8 - i2)) & 255];
                if (aVar2.f4805a != null || aVar2.c > i2) {
                    break;
                }
                byteArrayOutputStream.write(aVar2.f4806b);
                i2 -= aVar2.c;
                aVar = kVar.f4804a;
            }
            return c.of(byteArrayOutputStream.toByteArray());
        }
    }

    static final class b {
        b() {
        }

        static l a(List<g> list) throws IOException {
            l lVar = new l();
            ByteBuffer obtain = l.obtain(8192);
            int size = list.size();
            ByteBuffer byteBuffer = obtain;
            for (int i = 0; i < size; i++) {
                if (byteBuffer.remaining() < byteBuffer.capacity() / 2) {
                    byteBuffer.flip();
                    lVar.add(byteBuffer);
                    byteBuffer = l.obtain(byteBuffer.capacity() * 2);
                }
                c asciiLowercase = list.get(i).name.toAsciiLowercase();
                Integer num = (Integer) i.f4790b.get(asciiLowercase);
                if (num != null) {
                    a(byteBuffer, num.intValue() + 1, 15);
                    a(byteBuffer, list.get(i).value);
                } else {
                    byteBuffer.put((byte) 0);
                    a(byteBuffer, asciiLowercase);
                    a(byteBuffer, list.get(i).value);
                }
            }
            lVar.add(byteBuffer);
            return lVar;
        }

        private static void a(ByteBuffer byteBuffer, int i, int i2) throws IOException {
            if (i < i2) {
                byteBuffer.put((byte) (i | 0));
                return;
            }
            byteBuffer.put((byte) (i2 | 0));
            int i3 = i - i2;
            while (i3 >= 128) {
                byteBuffer.put((byte) (128 | (i3 & 127)));
                i3 >>>= 7;
            }
            byteBuffer.put((byte) i3);
        }

        private static void a(ByteBuffer byteBuffer, c cVar) throws IOException {
            a(byteBuffer, cVar.size(), 127);
            byteBuffer.put(cVar.toByteArray());
        }
    }

    static {
        int i = 0;
        LinkedHashMap linkedHashMap = new LinkedHashMap(f4789a.length);
        while (true) {
            g[] gVarArr = f4789a;
            if (i < gVarArr.length) {
                if (!linkedHashMap.containsKey(gVarArr[i].name)) {
                    linkedHashMap.put(f4789a[i].name, Integer.valueOf(i));
                }
                i++;
            } else {
                f4790b = Collections.unmodifiableMap(linkedHashMap);
                return;
            }
        }
    }

    private i() {
    }

    static /* synthetic */ c a(c cVar) throws IOException {
        int size = cVar.size();
        int i = 0;
        while (i < size) {
            byte b2 = cVar.getByte(i);
            if (b2 < 65 || b2 > 90) {
                i++;
            } else {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + cVar.utf8());
            }
        }
        return cVar;
    }
}
