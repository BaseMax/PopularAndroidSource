package com.koushikdutta.async.http.spdy;

import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.view.MotionEventCompat;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.http.Protocol;
import com.koushikdutta.async.http.spdy.e;
import com.koushikdutta.async.http.spdy.i;
import com.koushikdutta.async.k;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.p;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

final class j implements r {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f4793a = Logger.getLogger(j.class.getName());
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final c f4794b = c.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");

    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f4795a = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f4796b = new String[64];
        private static final String[] c = new String[256];

        a() {
        }

        static String a(boolean z, int i, int i2, byte b2, byte b3) {
            String str;
            String[] strArr = f4795a;
            String format = b2 < strArr.length ? strArr[b2] : String.format(Locale.ENGLISH, "0x%02x", new Object[]{Byte.valueOf(b2)});
            if (b3 == 0) {
                str = "";
            } else {
                if (!(b2 == 2 || b2 == 3)) {
                    if (b2 == 4 || b2 == 6) {
                        str = b3 == 1 ? "ACK" : c[b3];
                    } else if (!(b2 == 7 || b2 == 8)) {
                        String[] strArr2 = f4796b;
                        String str2 = b3 < strArr2.length ? strArr2[b3] : c[b3];
                        str = (b2 != 5 || (b3 & 4) == 0) ? (b2 != 0 || (b3 & 32) == 0) ? str2 : str2.replace("PRIORITY", "COMPRESSED") : str2.replace("HEADERS", "PUSH_PROMISE");
                    }
                }
                str = c[b3];
            }
            Locale locale = Locale.ENGLISH;
            Object[] objArr = new Object[5];
            objArr[0] = z ? "<<" : ">>";
            objArr[1] = Integer.valueOf(i);
            objArr[2] = Integer.valueOf(i2);
            objArr[3] = format;
            objArr[4] = str;
            return String.format(locale, "%s 0x%08x %5d %-13s %s", objArr);
        }

        static {
            int i = 0;
            int i2 = 0;
            while (true) {
                String[] strArr = c;
                if (i2 >= strArr.length) {
                    break;
                }
                strArr[i2] = String.format(Locale.ENGLISH, "%8s", new Object[]{Integer.toBinaryString(i2)}).replace(' ', '0');
                i2++;
            }
            String[] strArr2 = f4796b;
            strArr2[0] = "";
            strArr2[1] = "END_STREAM";
            strArr2[2] = "END_SEGMENT";
            strArr2[3] = "END_STREAM|END_SEGMENT";
            int[] iArr = {1, 2, 3};
            strArr2[8] = "PADDED";
            for (int i3 = 0; i3 < 3; i3++) {
                int i4 = iArr[i3];
                f4796b[i4 | 8] = f4796b[i4] + "|PADDED";
            }
            String[] strArr3 = f4796b;
            strArr3[4] = "END_HEADERS";
            strArr3[32] = "PRIORITY";
            strArr3[36] = "END_HEADERS|PRIORITY";
            int[] iArr2 = {4, 32, 36};
            for (int i5 = 0; i5 < 3; i5++) {
                int i6 = iArr2[i5];
                for (int i7 = 0; i7 < 3; i7++) {
                    int i8 = iArr[i7];
                    String[] strArr4 = f4796b;
                    int i9 = i8 | i6;
                    strArr4[i9] = f4796b[i8] + '|' + f4796b[i6];
                    f4796b[i9 | 8] = f4796b[i8] + '|' + f4796b[i6] + "|PADDED";
                }
            }
            while (true) {
                String[] strArr5 = f4796b;
                if (i < strArr5.length) {
                    if (strArr5[i] == null) {
                        strArr5[i] = c[i];
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    static final class b implements e {

        /* renamed from: a  reason: collision with root package name */
        final e.a f4797a;

        /* renamed from: b  reason: collision with root package name */
        final p f4798b;
        final i.a c;
        int d;
        int e;
        byte f;
        byte g;
        short h;
        int i;
        final d j = new d() {
            public final void onDataAvailable(n nVar, l lVar) {
                try {
                    boolean z = true;
                    short s = 0;
                    switch (b.this.g) {
                        case 0:
                            b bVar = b.this;
                            short s2 = b.this.h;
                            byte b2 = b.this.f;
                            int i = b.this.i;
                            boolean z2 = (b2 & 1) != 0;
                            if ((b2 & 32) == 0) {
                                z = false;
                            }
                            if (!z) {
                                if ((b2 & 8) != 0) {
                                    s = (short) (lVar.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
                                }
                                j.a(s2, b2, s);
                                bVar.f4797a.data(z2, i, lVar);
                                lVar.skip(s);
                                break;
                            } else {
                                throw j.c("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
                            }
                        case 1:
                            b bVar2 = b.this;
                            short s3 = b.this.h;
                            byte b3 = b.this.f;
                            int i2 = b.this.i;
                            if (i2 != 0) {
                                if ((b3 & 8) != 0) {
                                    s = (short) (lVar.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
                                }
                                if ((b3 & 32) != 0) {
                                    bVar2.a(lVar, i2);
                                    s3 = (short) (s3 - 5);
                                }
                                j.a(s3, b3, s);
                                bVar2.k = bVar2.g;
                                bVar2.a(lVar, s, b3, i2);
                                break;
                            } else {
                                throw j.c("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
                            }
                        case 2:
                            b bVar3 = b.this;
                            short s4 = b.this.h;
                            int i3 = b.this.i;
                            if (s4 != 5) {
                                throw j.c("TYPE_PRIORITY length: %d != 5", Short.valueOf(s4));
                            } else if (i3 != 0) {
                                bVar3.a(lVar, i3);
                                break;
                            } else {
                                throw j.c("TYPE_PRIORITY streamId == 0", new Object[0]);
                            }
                        case 3:
                            b bVar4 = b.this;
                            short s5 = b.this.h;
                            int i4 = b.this.i;
                            if (s5 != 4) {
                                throw j.c("TYPE_RST_STREAM length: %d != 4", Short.valueOf(s5));
                            } else if (i4 != 0) {
                                int i5 = lVar.getInt();
                                d fromHttp2 = d.fromHttp2(i5);
                                if (fromHttp2 != null) {
                                    bVar4.f4797a.rstStream(i4, fromHttp2);
                                    break;
                                } else {
                                    throw j.c("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i5));
                                }
                            } else {
                                throw j.c("TYPE_RST_STREAM streamId == 0", new Object[0]);
                            }
                        case 4:
                            b bVar5 = b.this;
                            short s6 = b.this.h;
                            byte b4 = b.this.f;
                            if (b.this.i != 0) {
                                throw j.c("TYPE_SETTINGS streamId != 0", new Object[0]);
                            } else if ((b4 & 1) != 0) {
                                if (s6 == 0) {
                                    bVar5.f4797a.ackSettings();
                                    break;
                                } else {
                                    throw j.c("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
                                }
                            } else if (s6 % 6 == 0) {
                                m mVar = new m();
                                for (int i6 = 0; i6 < s6; i6 += 6) {
                                    short s7 = lVar.getShort();
                                    int i7 = lVar.getInt();
                                    if (s7 != 1) {
                                        if (s7 != 2) {
                                            if (s7 == 3) {
                                                s7 = 4;
                                            } else if (s7 == 4) {
                                                s7 = 7;
                                                if (i7 < 0) {
                                                    throw j.c("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                                                }
                                            } else if (s7 != 5) {
                                                throw j.c("PROTOCOL_ERROR invalid settings id: %s", Short.valueOf(s7));
                                            }
                                        } else if (i7 == 0) {
                                            continue;
                                        } else if (i7 != 1) {
                                            throw j.c("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                                        }
                                    }
                                    mVar.set(s7, 0, i7);
                                }
                                bVar5.f4797a.settings(false, mVar);
                                if (mVar.a() >= 0) {
                                    i.a aVar = bVar5.c;
                                    aVar.c = mVar.a();
                                    aVar.d = aVar.c;
                                    aVar.a();
                                    break;
                                }
                            } else {
                                throw j.c("TYPE_SETTINGS length %% 6 != 0: %s", Short.valueOf(s6));
                            }
                            break;
                        case 5:
                            b bVar6 = b.this;
                            short s8 = b.this.h;
                            byte b5 = b.this.f;
                            int i8 = b.this.i;
                            if (i8 != 0) {
                                if ((b5 & 8) != 0) {
                                    s = (short) (lVar.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
                                }
                                bVar6.m = lVar.getInt() & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                                j.a((short) (s8 - 4), b5, s);
                                bVar6.k = 5;
                                bVar6.a(lVar, s, b5, i8);
                                break;
                            } else {
                                throw j.c("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
                            }
                        case 6:
                            b bVar7 = b.this;
                            short s9 = b.this.h;
                            byte b6 = b.this.f;
                            int i9 = b.this.i;
                            if (s9 != 8) {
                                throw j.c("TYPE_PING length != 8: %s", Short.valueOf(s9));
                            } else if (i9 == 0) {
                                int i10 = lVar.getInt();
                                int i11 = lVar.getInt();
                                if ((b6 & 1) == 0) {
                                    z = false;
                                }
                                bVar7.f4797a.ping(z, i10, i11);
                                break;
                            } else {
                                throw j.c("TYPE_PING streamId != 0", new Object[0]);
                            }
                        case 7:
                            b bVar8 = b.this;
                            short s10 = b.this.h;
                            int i12 = b.this.i;
                            if (s10 < 8) {
                                throw j.c("TYPE_GOAWAY length < 8: %s", Short.valueOf(s10));
                            } else if (i12 == 0) {
                                int i13 = lVar.getInt();
                                int i14 = lVar.getInt();
                                int i15 = s10 - 8;
                                d fromHttp22 = d.fromHttp2(i14);
                                if (fromHttp22 != null) {
                                    c cVar = c.EMPTY;
                                    if (i15 > 0) {
                                        cVar = c.of(lVar.getBytes(i15));
                                    }
                                    bVar8.f4797a.goAway(i13, fromHttp22, cVar);
                                    break;
                                } else {
                                    throw j.c("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i14));
                                }
                            } else {
                                throw j.c("TYPE_GOAWAY streamId != 0", new Object[0]);
                            }
                        case 8:
                            b bVar9 = b.this;
                            short s11 = b.this.h;
                            int i16 = b.this.i;
                            if (s11 == 4) {
                                long j = ((long) lVar.getInt()) & 2147483647L;
                                if (j != 0) {
                                    bVar9.f4797a.windowUpdate(i16, j);
                                    break;
                                } else {
                                    throw j.c("windowSizeIncrement was 0", Long.valueOf(j));
                                }
                            } else {
                                throw j.c("TYPE_WINDOW_UPDATE length !=4: %s", Short.valueOf(s11));
                            }
                        case 9:
                            b bVar10 = b.this;
                            byte b7 = b.this.f;
                            int i17 = b.this.i;
                            if (i17 == bVar10.l) {
                                bVar10.a(lVar, 0, b7, i17);
                                break;
                            } else {
                                throw new IOException("continuation stream id mismatch");
                            }
                        default:
                            lVar.recycle();
                            break;
                    }
                    b.this.a();
                } catch (IOException e) {
                    b.this.f4797a.error(e);
                }
            }
        };
        byte k;
        int l;
        int m;
        private final n n;
        private final boolean o;
        private final d p = new d() {
            public final void onDataAvailable(n nVar, l lVar) {
                lVar.order(ByteOrder.BIG_ENDIAN);
                b.this.d = lVar.getInt();
                b.this.e = lVar.getInt();
                b bVar = b.this;
                bVar.h = (short) ((bVar.d & 1073676288) >> 16);
                b bVar2 = b.this;
                bVar2.g = (byte) ((bVar2.d & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
                b bVar3 = b.this;
                bVar3.f = (byte) (bVar3.d & 255);
                b bVar4 = b.this;
                bVar4.i = bVar4.e & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
                if (j.f4793a.isLoggable(Level.FINE)) {
                    j.f4793a.fine(a.a(true, b.this.i, b.this.h, b.this.g, b.this.f));
                }
                b.this.f4798b.read(b.this.h, b.this.j);
            }
        };

        b(n nVar, e.a aVar, boolean z) {
            this.n = nVar;
            this.o = z;
            this.c = new i.a();
            this.f4797a = aVar;
            this.f4798b = new p();
            a();
        }

        /* access modifiers changed from: package-private */
        public final void a() {
            this.n.setDataCallback(this.f4798b);
            this.f4798b.read(8, this.p);
        }

        /* access modifiers changed from: package-private */
        public final void a(l lVar, short s, byte b2, int i2) throws IOException {
            lVar.skip(s);
            this.c.refill(lVar);
            i.a aVar = this.c;
            while (aVar.f4792b.hasRemaining()) {
                byte b3 = aVar.f4792b.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
                if (b3 == 128) {
                    throw new IOException("index == 0");
                } else if ((b3 & 128) == 128) {
                    int a2 = aVar.a(b3, 127) - 1;
                    if (aVar.c(a2)) {
                        int i3 = a2 - aVar.g;
                        if (i3 <= i.f4789a.length - 1) {
                            g gVar = i.f4789a[i3];
                            if (aVar.d == 0) {
                                aVar.f4791a.add(gVar);
                            } else {
                                aVar.a(gVar);
                            }
                        } else {
                            throw new IOException("Header index too large " + (i3 + 1));
                        }
                    } else {
                        int a3 = aVar.a(a2);
                        if (!aVar.h.get(a3)) {
                            aVar.f4791a.add(aVar.e[a3]);
                            aVar.i.set(a3);
                        }
                        aVar.h.toggle(a3);
                    }
                } else if (b3 == 64) {
                    aVar.a(new g(i.a(aVar.e()), aVar.e()));
                } else if ((b3 & 64) == 64) {
                    aVar.a(new g(aVar.b(aVar.a(b3, 63) - 1), aVar.e()));
                } else if ((b3 & 32) == 32) {
                    if ((b3 & 16) != 16) {
                        aVar.d = aVar.a(b3, 15);
                        if (aVar.d < 0 || aVar.d > aVar.c) {
                            throw new IOException("Invalid header table byte count " + aVar.d);
                        }
                        aVar.a();
                    } else if ((b3 & 15) == 0) {
                        aVar.b();
                    } else {
                        throw new IOException("Invalid header table state change ".concat(String.valueOf(b3)));
                    }
                } else if (b3 == 16 || b3 == 0) {
                    aVar.f4791a.add(new g(i.a(aVar.e()), aVar.e()));
                } else {
                    aVar.f4791a.add(new g(aVar.b(aVar.a(b3, 15) - 1), aVar.e()));
                }
            }
            this.c.c();
            if ((b2 & 4) != 0) {
                byte b4 = this.k;
                if (b4 == 1) {
                    this.f4797a.headers(false, (b2 & 1) != 0, i2, -1, this.c.d(), HeadersMode.HTTP_20_HEADERS);
                } else if (b4 == 5) {
                    this.f4797a.pushPromise(i2, this.m, this.c.d());
                } else {
                    throw new AssertionError("unknown header type");
                }
            } else {
                this.l = i2;
            }
        }

        /* access modifiers changed from: package-private */
        public final void a(l lVar, int i2) throws IOException {
            int i3 = lVar.getInt();
            this.f4797a.priority(i2, i3 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, (lVar.get() & com.pusher.java_websocket.drafts.c.END_OF_FRAME) + 1, (Integer.MIN_VALUE & i3) != 0);
        }
    }

    static final class c implements f {

        /* renamed from: a  reason: collision with root package name */
        private final k f4801a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f4802b;
        private final i.b c;
        private boolean d;
        private final l e = new l();

        c(k kVar, boolean z) {
            this.f4801a = kVar;
            this.f4802b = z;
            this.c = new i.b();
        }

        public final synchronized void ackSettings() throws IOException {
            if (!this.d) {
                a(0, 0, (byte) 4, (byte) 1);
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void connectionPreface() throws IOException {
            if (this.d) {
                throw new IOException("closed");
            } else if (this.f4802b) {
                if (j.f4793a.isLoggable(Level.FINE)) {
                    j.f4793a.fine(String.format(Locale.ENGLISH, ">> CONNECTION %s", new Object[]{j.f4794b.hex()}));
                }
                this.f4801a.write(new l(j.f4794b.toByteArray()));
            }
        }

        public final synchronized void synStream(boolean z, boolean z2, int i, int i2, List<g> list) throws IOException {
            if (!z2) {
                try {
                    if (!this.d) {
                        a(z, i, list);
                    } else {
                        throw new IOException("closed");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }

        public final synchronized void synReply(boolean z, int i, List<g> list) throws IOException {
            if (!this.d) {
                a(z, i, list);
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void headers(int i, List<g> list) throws IOException {
            if (!this.d) {
                a(false, i, list);
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void pushPromise(int i, int i2, List<g> list) throws IOException {
            if (!this.d) {
                l a2 = i.b.a(list);
                long remaining = (long) a2.remaining();
                int min = (int) Math.min(16379, remaining);
                long j = (long) min;
                a(i, min + 4, (byte) 5, remaining == j ? (byte) 4 : 0);
                ByteBuffer order = l.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                order.putInt(i2 & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                order.flip();
                this.e.add(order);
                a2.get(this.e, min);
                this.f4801a.write(this.e);
                if (remaining > j) {
                    a(a2, i);
                }
            } else {
                throw new IOException("closed");
            }
        }

        private void a(boolean z, int i, List<g> list) throws IOException {
            if (!this.d) {
                l a2 = i.b.a(list);
                long remaining = (long) a2.remaining();
                int min = (int) Math.min(16383, remaining);
                long j = (long) min;
                byte b2 = remaining == j ? (byte) 4 : 0;
                if (z) {
                    b2 = (byte) (b2 | 1);
                }
                a(i, min, (byte) 1, b2);
                a2.get(this.e, min);
                this.f4801a.write(this.e);
                if (remaining > j) {
                    a(a2, i);
                    return;
                }
                return;
            }
            throw new IOException("closed");
        }

        private void a(l lVar, int i) throws IOException {
            while (lVar.hasRemaining()) {
                int min = Math.min(16383, lVar.remaining());
                a(i, min, (byte) 9, lVar.remaining() - min == 0 ? (byte) 4 : 0);
                lVar.get(this.e, min);
                this.f4801a.write(this.e);
            }
        }

        public final synchronized void rstStream(int i, d dVar) throws IOException {
            if (this.d) {
                throw new IOException("closed");
            } else if (dVar.spdyRstCode != -1) {
                a(i, 4, (byte) 3, (byte) 0);
                ByteBuffer order = l.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                order.putInt(dVar.httpCode);
                order.flip();
                this.f4801a.write(this.e.add(order));
            } else {
                throw new IllegalArgumentException();
            }
        }

        public final synchronized void data(boolean z, int i, l lVar) throws IOException {
            if (!this.d) {
                a(i, lVar.remaining(), (byte) 0, z ? (byte) 1 : 0);
                this.f4801a.write(lVar);
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void settings(m mVar) throws IOException {
            if (!this.d) {
                int i = 0;
                a(0, Integer.bitCount(mVar.f4809a) * 6, (byte) 4, (byte) 0);
                ByteBuffer order = l.obtain(8192).order(ByteOrder.BIG_ENDIAN);
                while (i < 10) {
                    if (mVar.a(i)) {
                        order.putShort((short) (i == 4 ? 3 : i == 7 ? 4 : i));
                        order.putInt(mVar.f4810b[i]);
                    }
                    i++;
                }
                order.flip();
                this.f4801a.write(this.e.add(order));
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void ping(boolean z, int i, int i2) throws IOException {
            if (!this.d) {
                a(0, 8, (byte) 6, z ? (byte) 1 : 0);
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(i);
                order.putInt(i2);
                order.flip();
                this.f4801a.write(this.e.add(order));
            } else {
                throw new IOException("closed");
            }
        }

        public final synchronized void goAway(int i, d dVar, byte[] bArr) throws IOException {
            if (this.d) {
                throw new IOException("closed");
            } else if (dVar.httpCode != -1) {
                a(0, bArr.length + 8, (byte) 7, (byte) 0);
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(i);
                order.putInt(dVar.httpCode);
                order.put(bArr);
                order.flip();
                this.f4801a.write(this.e.add(order));
            } else {
                throw j.b("errorCode.httpCode == -1", new Object[0]);
            }
        }

        public final synchronized void windowUpdate(int i, long j) throws IOException {
            if (this.d) {
                throw new IOException("closed");
            } else if (j == 0 || j > 2147483647L) {
                throw j.b("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", new Object[]{Long.valueOf(j)});
            } else {
                a(i, 4, (byte) 8, (byte) 0);
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt((int) j);
                order.flip();
                this.f4801a.write(this.e.add(order));
            }
        }

        public final synchronized void close() throws IOException {
            this.d = true;
        }

        private void a(int i, int i2, byte b2, byte b3) throws IOException {
            if (j.f4793a.isLoggable(Level.FINE)) {
                j.f4793a.fine(a.a(false, i, i2, b2, b3));
            }
            if (i2 > 16383) {
                throw j.b("FRAME_SIZE_ERROR length > %d: %d", new Object[]{16383, Integer.valueOf(i2)});
            } else if ((Integer.MIN_VALUE & i) == 0) {
                ByteBuffer order = l.obtain(256).order(ByteOrder.BIG_ENDIAN);
                order.putInt(((i2 & 16383) << 16) | ((b2 & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 8) | (b3 & com.pusher.java_websocket.drafts.c.END_OF_FRAME));
                order.putInt(i & ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
                order.flip();
                this.f4801a.write(this.e.add(order));
            } else {
                throw j.b("reserved bit set: %s", new Object[]{Integer.valueOf(i)});
            }
        }
    }

    public final int maxFrameSize() {
        return 16383;
    }

    j() {
    }

    public final Protocol getProtocol() {
        return Protocol.HTTP_2;
    }

    public final e newReader(n nVar, e.a aVar, boolean z) {
        return new b(nVar, aVar, z);
    }

    public final f newWriter(k kVar, boolean z) {
        return new c(kVar, z);
    }

    /* access modifiers changed from: private */
    public static IOException c(String str, Object... objArr) throws IOException {
        throw new IOException(String.format(Locale.ENGLISH, str, objArr));
    }

    static /* synthetic */ short a(short s, byte b2, short s2) throws IOException {
        if ((b2 & 8) != 0) {
            s = (short) (s - 1);
        }
        if (s2 <= s) {
            return (short) (s - s2);
        }
        throw c("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s2), Short.valueOf(s));
    }

    static /* synthetic */ IllegalArgumentException b(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(Locale.ENGLISH, str, objArr));
    }
}
