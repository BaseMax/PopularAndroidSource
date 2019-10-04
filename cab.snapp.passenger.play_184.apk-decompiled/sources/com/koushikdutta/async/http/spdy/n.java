package com.koushikdutta.async.http.spdy;

import android.os.Build;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.view.ViewCompat;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.e;
import com.koushikdutta.async.k;
import com.koushikdutta.async.l;
import com.koushikdutta.async.p;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Locale;
import java.util.zip.Deflater;

final class n implements r {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f4811a;

    static final class a implements e {

        /* renamed from: a  reason: collision with root package name */
        final h f4812a = new h();

        /* renamed from: b  reason: collision with root package name */
        final boolean f4813b;
        final e.a c;
        final p d;
        int e;
        int f;
        int g;
        int h;
        int i;
        boolean j;
        final l k = new l();
        l l = new l();
        final d m = new d() {
            public final void onDataAvailable(com.koushikdutta.async.n nVar, l lVar) {
                int min = Math.min(lVar.remaining(), a.this.h);
                if (min < lVar.remaining()) {
                    lVar.get(a.this.l, min);
                    lVar = a.this.l;
                }
                a.this.h -= min;
                a.this.c.data(a.this.h == 0 && a.this.j, a.this.i, lVar);
                if (a.this.h == 0) {
                    a.this.a();
                }
            }
        };
        final d n = new d() {
            public final void onDataAvailable(com.koushikdutta.async.n nVar, l lVar) {
                l lVar2 = lVar;
                lVar2.order(ByteOrder.BIG_ENDIAN);
                int i = (a.this.e & 2147418112) >>> 16;
                int i2 = a.this.e & 65535;
                if (i == 3) {
                    boolean z = true;
                    switch (i2) {
                        case 1:
                            a aVar = a.this;
                            int i3 = a.this.g;
                            int i4 = a.this.h;
                            int i5 = lVar.getInt();
                            int i6 = lVar.getInt();
                            int i7 = i5 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                            int i8 = i6 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                            lVar.getShort();
                            aVar.c.headers((i3 & 2) != 0, (i3 & 1) != 0, i7, i8, aVar.f4812a.readHeader(lVar2, i4 - 10), HeadersMode.SPDY_SYN_STREAM);
                            break;
                        case 2:
                            a aVar2 = a.this;
                            aVar2.c.headers(false, (a.this.g & 1) != 0, lVar.getInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, -1, aVar2.f4812a.readHeader(lVar2, a.this.h - 4), HeadersMode.SPDY_REPLY);
                            break;
                        case 3:
                            a aVar3 = a.this;
                            int i9 = a.this.h;
                            if (i9 == 8) {
                                int i10 = lVar.getInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                                int i11 = lVar.getInt();
                                d fromSpdy3Rst = d.fromSpdy3Rst(i11);
                                if (fromSpdy3Rst != null) {
                                    aVar3.c.rstStream(i10, fromSpdy3Rst);
                                    break;
                                } else {
                                    throw a.a("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i11));
                                }
                            } else {
                                throw a.a("TYPE_RST_STREAM length: %d != 8", Integer.valueOf(i9));
                            }
                        case 4:
                            a.a(a.this, lVar2, a.this.g, a.this.h);
                            break;
                        case 6:
                            a aVar4 = a.this;
                            int i12 = a.this.h;
                            if (i12 == 4) {
                                int i13 = lVar.getInt();
                                if (aVar4.f4813b != ((i13 & 1) == 1)) {
                                    z = false;
                                }
                                aVar4.c.ping(z, i13, 0);
                                break;
                            } else {
                                throw a.a("TYPE_PING length: %d != 4", Integer.valueOf(i12));
                            }
                        case 7:
                            a aVar5 = a.this;
                            int i14 = a.this.h;
                            if (i14 == 8) {
                                int i15 = lVar.getInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                                int i16 = lVar.getInt();
                                d fromSpdyGoAway = d.fromSpdyGoAway(i16);
                                if (fromSpdyGoAway != null) {
                                    aVar5.c.goAway(i15, fromSpdyGoAway, c.EMPTY);
                                    break;
                                } else {
                                    throw a.a("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i16));
                                }
                            } else {
                                throw a.a("TYPE_GOAWAY length: %d != 8", Integer.valueOf(i14));
                            }
                        case 8:
                            a aVar6 = a.this;
                            aVar6.c.headers(false, false, lVar.getInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, -1, aVar6.f4812a.readHeader(lVar2, a.this.h - 4), HeadersMode.SPDY_HEADERS);
                            break;
                        case 9:
                            a aVar7 = a.this;
                            int i17 = a.this.h;
                            if (i17 == 8) {
                                int i18 = lVar.getInt();
                                int i19 = lVar.getInt();
                                int i20 = i18 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                                long j = (long) (i19 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                                if (j != 0) {
                                    aVar7.c.windowUpdate(i20, j);
                                    break;
                                } else {
                                    throw a.a("windowSizeIncrement was 0", Long.valueOf(j));
                                }
                            } else {
                                throw a.a("TYPE_WINDOW_UPDATE length: %d != 8", Integer.valueOf(i17));
                            }
                        default:
                            try {
                                lVar.recycle();
                                break;
                            } catch (IOException e) {
                                a.this.c.error(e);
                                return;
                            }
                    }
                    a.this.a();
                    return;
                }
                throw new ProtocolException("version != 3: ".concat(String.valueOf(i)));
            }
        };
        private final com.koushikdutta.async.n o;
        private final d p = new d() {
            public final void onDataAvailable(com.koushikdutta.async.n nVar, l lVar) {
                lVar.order(ByteOrder.BIG_ENDIAN);
                a.this.e = lVar.getInt();
                a.this.f = lVar.getInt();
                boolean z = false;
                boolean z2 = (a.this.e & Integer.MIN_VALUE) != 0;
                a aVar = a.this;
                aVar.g = (aVar.f & -16777216) >>> 24;
                a aVar2 = a.this;
                aVar2.h = aVar2.f & ViewCompat.MEASURED_SIZE_MASK;
                if (!z2) {
                    a aVar3 = a.this;
                    aVar3.i = aVar3.e & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                    a aVar4 = a.this;
                    if ((aVar4.g & 1) != 0) {
                        z = true;
                    }
                    aVar4.j = z;
                    nVar.setDataCallback(a.this.m);
                    if (a.this.h == 0) {
                        a.this.m.onDataAvailable(nVar, a.this.k);
                    }
                } else {
                    a.this.d.read(a.this.h, a.this.n);
                }
            }
        };

        a(com.koushikdutta.async.n nVar, e.a aVar, boolean z) {
            this.o = nVar;
            this.c = aVar;
            this.f4813b = z;
            nVar.setEndCallback(new com.koushikdutta.async.a.a() {
                public final void onCompleted(Exception exc) {
                }
            });
            this.d = new p();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.o.setDataCallback(this.d);
            this.d.read(8, this.p);
        }

        static IOException a(String str, Object... objArr) throws IOException {
            throw new IOException(String.format(Locale.ENGLISH, str, objArr));
        }

        static /* synthetic */ void a(a aVar, l lVar, int i2, int i3) throws IOException {
            int i4 = lVar.getInt();
            boolean z = false;
            if (i3 == (i4 * 8) + 4) {
                m mVar = new m();
                for (int i5 = 0; i5 < i4; i5++) {
                    int i6 = lVar.getInt();
                    int i7 = lVar.getInt();
                    mVar.set(i6 & ViewCompat.MEASURED_SIZE_MASK, (-16777216 & i6) >>> 24, i7);
                }
                if ((i2 & 1) != 0) {
                    z = true;
                }
                aVar.c.settings(z, mVar);
                return;
            }
            throw a("TYPE_SETTINGS length: %d != 4 + 8 * %d", Integer.valueOf(i3), Integer.valueOf(i4));
        }
    }

    static final class b implements f {

        /* renamed from: a  reason: collision with root package name */
        l f4818a = new l();

        /* renamed from: b  reason: collision with root package name */
        l f4819b = new l();
        private final k c;
        private final boolean d;
        private boolean e;
        private l f = new l();
        private final Deflater g = new Deflater();

        public final void ackSettings() {
        }

        public final void pushPromise(int i, int i2, List<g> list) throws IOException {
        }

        b(k kVar, boolean z) {
            this.c = kVar;
            this.d = z;
            this.g.setDictionary(n.f4811a);
        }

        public final synchronized void connectionPreface() {
        }

        public final synchronized void synStream(boolean z, boolean z2, int i, int i2, List<g> list) throws IOException {
            if (!this.e) {
                l a2 = a(list);
                int remaining = a2.remaining() + 10;
                boolean z3 = z | (z2 ? (char) 2 : 0);
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287039);
                order.putInt(((z3 & true ? 1 : 0) << true) | (remaining & ViewCompat.MEASURED_SIZE_MASK));
                order.putInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                order.putInt(Integer.MAX_VALUE & i2);
                order.putShort(0);
                order.flip();
                this.c.write(this.f.add(order).add(a2));
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void synReply(boolean z, int i, List<g> list) throws IOException {
            if (!this.e) {
                l a2 = a(list);
                int i2 = z ? 1 : 0;
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287038);
                order.putInt(((i2 & 255) << 24) | ((a2.remaining() + 4) & ViewCompat.MEASURED_SIZE_MASK));
                order.putInt(Integer.MAX_VALUE & i);
                order.flip();
                this.c.write(this.f.add(order).add(a2));
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void headers(int i, List<g> list) throws IOException {
            if (!this.e) {
                l a2 = a(list);
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287032);
                order.putInt(((a2.remaining() + 4) & ViewCompat.MEASURED_SIZE_MASK) | 0);
                order.putInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                order.flip();
                this.c.write(this.f.add(order).add(a2));
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void rstStream(int i, d dVar) throws IOException {
            if (this.e) {
                throw new IOException("closed");
            } else if (dVar.spdyRstCode != -1) {
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287037);
                order.putInt(8);
                order.putInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                order.putInt(dVar.spdyRstCode);
                order.flip();
                this.c.write(this.f.addAll(order));
            } else {
                throw new IllegalArgumentException();
            }
        }

        private l a(List<g> list) throws IOException {
            int i;
            if (!this.f4819b.hasRemaining()) {
                ByteBuffer order = l.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                order.putInt(list.size());
                int size = list.size();
                ByteBuffer byteBuffer = order;
                for (int i2 = 0; i2 < size; i2++) {
                    c cVar = list.get(i2).name;
                    byteBuffer.putInt(cVar.size());
                    byteBuffer.put(cVar.toByteArray());
                    c cVar2 = list.get(i2).value;
                    byteBuffer.putInt(cVar2.size());
                    byteBuffer.put(cVar2.toByteArray());
                    if (byteBuffer.remaining() < byteBuffer.capacity() / 2) {
                        ByteBuffer order2 = l.obtain(byteBuffer.capacity() * 2).order(ByteOrder.BIG_ENDIAN);
                        byteBuffer.flip();
                        order2.put(byteBuffer);
                        l.reclaim(byteBuffer);
                        byteBuffer = order2;
                    }
                }
                byteBuffer.flip();
                this.g.setInput(byteBuffer.array(), 0, byteBuffer.remaining());
                while (!this.g.needsInput()) {
                    ByteBuffer order3 = l.obtain(byteBuffer.capacity()).order(ByteOrder.BIG_ENDIAN);
                    if (Build.VERSION.SDK_INT >= 19) {
                        i = this.g.deflate(order3.array(), 0, order3.capacity(), 2);
                    } else {
                        i = this.g.deflate(order3.array(), 0, order3.capacity());
                    }
                    order3.limit(i);
                    this.f4819b.add(order3);
                }
                l.reclaim(byteBuffer);
                return this.f4819b;
            }
            throw new IllegalStateException();
        }

        public final synchronized void settings(m mVar) throws IOException {
            if (!this.e) {
                int bitCount = Integer.bitCount(mVar.f4809a);
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287036);
                order.putInt((((bitCount * 8) + 4) & ViewCompat.MEASURED_SIZE_MASK) | 0);
                order.putInt(bitCount);
                for (int i = 0; i <= 10; i++) {
                    if (mVar.a(i)) {
                        order.putInt(((mVar.b(i) & 255) << 24) | (i & ViewCompat.MEASURED_SIZE_MASK));
                        order.putInt(mVar.f4810b[i]);
                    }
                }
                order.flip();
                this.c.write(this.f.addAll(order));
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (!this.e) {
                if (z == (this.d != ((i & 1) == 1))) {
                    ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                    order.putInt(-2147287034);
                    order.putInt(4);
                    order.putInt(i);
                    order.flip();
                    this.c.write(this.f.addAll(order));
                } else {
                    throw new IllegalArgumentException("payload != reply");
                }
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void goAway(int i, d dVar, byte[] bArr) throws IOException {
            if (this.e) {
                throw new IOException("closed");
            } else if (dVar.spdyGoAwayCode != -1) {
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287033);
                order.putInt(8);
                order.putInt(i);
                order.putInt(dVar.spdyGoAwayCode);
                order.flip();
                this.c.write(this.f.addAll(order));
            } else {
                throw new IllegalArgumentException("errorCode.spdyGoAwayCode == -1");
            }
        }

        public final synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.e) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                throw new IllegalArgumentException("windowSizeIncrement must be between 1 and 0x7fffffff: ".concat(String.valueOf(j)));
            } else {
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(-2147287031);
                order.putInt(8);
                order.putInt(i);
                order.putInt((int) j);
                order.flip();
                this.c.write(this.f.addAll(order));
            }
        }

        public final synchronized void close() throws IOException {
            this.e = true;
        }

        public final synchronized void data(boolean z, int i, l lVar) throws IOException {
            int i2 = z ? 1 : 0;
            if (!this.e) {
                int remaining = lVar.remaining();
                if (((long) remaining) <= 16777215) {
                    ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                    order.putInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                    order.putInt(((i2 & 255) << 24) | (16777215 & remaining));
                    order.flip();
                    this.f4818a.add(order).add(lVar);
                    this.c.write(this.f4818a);
                } else {
                    throw new IllegalArgumentException("FRAME_TOO_LARGE max size is 16Mib: ".concat(String.valueOf(remaining)));
                }
            } else {
                throw new IOException("closed");
            }
        }
    }

    public final int maxFrameSize() {
        return 16383;
    }

    n() {
    }

    public final Protocol getProtocol() {
        return Protocol.SPDY_3;
    }

    static {
        try {
            f4811a = "\u0000\u0000\u0000\u0007options\u0000\u0000\u0000\u0004head\u0000\u0000\u0000\u0004post\u0000\u0000\u0000\u0003put\u0000\u0000\u0000\u0006delete\u0000\u0000\u0000\u0005trace\u0000\u0000\u0000\u0006accept\u0000\u0000\u0000\u000eaccept-charset\u0000\u0000\u0000\u000faccept-encoding\u0000\u0000\u0000\u000faccept-language\u0000\u0000\u0000\raccept-ranges\u0000\u0000\u0000\u0003age\u0000\u0000\u0000\u0005allow\u0000\u0000\u0000\rauthorization\u0000\u0000\u0000\rcache-control\u0000\u0000\u0000\nconnection\u0000\u0000\u0000\fcontent-base\u0000\u0000\u0000\u0010content-encoding\u0000\u0000\u0000\u0010content-language\u0000\u0000\u0000\u000econtent-length\u0000\u0000\u0000\u0010content-location\u0000\u0000\u0000\u000bcontent-md5\u0000\u0000\u0000\rcontent-range\u0000\u0000\u0000\fcontent-type\u0000\u0000\u0000\u0004date\u0000\u0000\u0000\u0004etag\u0000\u0000\u0000\u0006expect\u0000\u0000\u0000\u0007expires\u0000\u0000\u0000\u0004from\u0000\u0000\u0000\u0004host\u0000\u0000\u0000\bif-match\u0000\u0000\u0000\u0011if-modified-since\u0000\u0000\u0000\rif-none-match\u0000\u0000\u0000\bif-range\u0000\u0000\u0000\u0013if-unmodified-since\u0000\u0000\u0000\rlast-modified\u0000\u0000\u0000\blocation\u0000\u0000\u0000\fmax-forwards\u0000\u0000\u0000\u0006pragma\u0000\u0000\u0000\u0012proxy-authenticate\u0000\u0000\u0000\u0013proxy-authorization\u0000\u0000\u0000\u0005range\u0000\u0000\u0000\u0007referer\u0000\u0000\u0000\u000bretry-after\u0000\u0000\u0000\u0006server\u0000\u0000\u0000\u0002te\u0000\u0000\u0000\u0007trailer\u0000\u0000\u0000\u0011transfer-encoding\u0000\u0000\u0000\u0007upgrade\u0000\u0000\u0000\nuser-agent\u0000\u0000\u0000\u0004vary\u0000\u0000\u0000\u0003via\u0000\u0000\u0000\u0007warning\u0000\u0000\u0000\u0010www-authenticate\u0000\u0000\u0000\u0006method\u0000\u0000\u0000\u0003get\u0000\u0000\u0000\u0006status\u0000\u0000\u0000\u0006200 OK\u0000\u0000\u0000\u0007version\u0000\u0000\u0000\bHTTP/1.1\u0000\u0000\u0000\u0003url\u0000\u0000\u0000\u0006public\u0000\u0000\u0000\nset-cookie\u0000\u0000\u0000\nkeep-alive\u0000\u0000\u0000\u0006origin100101201202205206300302303304305306307402405406407408409410411412413414415416417502504505203 Non-Authoritative Information204 No Content301 Moved Permanently400 Bad Request401 Unauthorized403 Forbidden404 Not Found500 Internal Server Error501 Not Implemented503 Service UnavailableJan Feb Mar Apr May Jun Jul Aug Sept Oct Nov Dec 00:00:00 Mon, Tue, Wed, Thu, Fri, Sat, Sun, GMTchunked,text/html,image/png,image/jpg,image/gif,application/xml,application/xhtml+xml,text/plain,text/javascript,publicprivatemax-age=gzip,deflate,sdchcharset=utf-8charset=iso-8859-1,utf-,*,enq=0.".getBytes(com.koushikdutta.async.e.b.UTF_8.name());
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError();
        }
    }

    public final e newReader(com.koushikdutta.async.n nVar, e.a aVar, boolean z) {
        return new a(nVar, aVar, z);
    }

    public final f newWriter(k kVar, boolean z) {
        return new b(kVar, z);
    }
}
