package b;

import android.support.v4.media.session.PlaybackStateCompat;
import com.adjust.sdk.Constants;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public final class c implements d, e, Cloneable, ByteChannel {
    private static final byte[] c = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    r f134a;

    /* renamed from: b  reason: collision with root package name */
    long f135b;

    public static final class a implements Closeable {

        /* renamed from: a  reason: collision with root package name */
        private r f138a;
        public c buffer;
        public byte[] data;
        public int end = -1;
        public long offset = -1;
        public boolean readWrite;
        public int start = -1;

        public final int next() {
            if (this.offset != this.buffer.f135b) {
                long j = this.offset;
                if (j == -1) {
                    return seek(0);
                }
                return seek(j + ((long) (this.end - this.start)));
            }
            throw new IllegalStateException();
        }

        public final int seek(long j) {
            r rVar;
            long j2;
            if (j < -1 || j > this.buffer.f135b) {
                throw new ArrayIndexOutOfBoundsException(String.format("offset=%s > size=%s", new Object[]{Long.valueOf(j), Long.valueOf(this.buffer.f135b)}));
            } else if (j == -1 || j == this.buffer.f135b) {
                this.f138a = null;
                this.offset = j;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            } else {
                long j3 = 0;
                long j4 = this.buffer.f135b;
                r rVar2 = this.buffer.f134a;
                r rVar3 = this.buffer.f134a;
                r rVar4 = this.f138a;
                if (rVar4 != null) {
                    long j5 = this.offset - ((long) (this.start - rVar4.f163b));
                    if (j5 > j) {
                        rVar3 = this.f138a;
                        j4 = j5;
                    } else {
                        rVar2 = this.f138a;
                        j3 = j5;
                    }
                }
                if (j4 - j > j - j3) {
                    while (j >= ((long) (rVar.c - rVar.f163b)) + j2) {
                        j3 = j2 + ((long) (rVar.c - rVar.f163b));
                        rVar2 = rVar.f;
                    }
                } else {
                    j2 = j4;
                    rVar = rVar3;
                    while (j2 > j) {
                        rVar = rVar.g;
                        j2 -= (long) (rVar.c - rVar.f163b);
                    }
                }
                if (this.readWrite && rVar.d) {
                    r b2 = rVar.b();
                    if (this.buffer.f134a == rVar) {
                        this.buffer.f134a = b2;
                    }
                    rVar = rVar.push(b2);
                    rVar.g.pop();
                }
                this.f138a = rVar;
                this.offset = j;
                this.data = rVar.f162a;
                this.start = rVar.f163b + ((int) (j - j2));
                this.end = rVar.c;
                return this.end - this.start;
            }
        }

        public final long resizeBuffer(long j) {
            c cVar = this.buffer;
            if (cVar == null) {
                throw new IllegalStateException("not attached to a buffer");
            } else if (this.readWrite) {
                long j2 = cVar.f135b;
                if (j <= j2) {
                    if (j >= 0) {
                        long j3 = j2 - j;
                        while (true) {
                            if (j3 <= 0) {
                                break;
                            }
                            r rVar = this.buffer.f134a.g;
                            long j4 = (long) (rVar.c - rVar.f163b);
                            if (j4 > j3) {
                                rVar.c = (int) (((long) rVar.c) - j3);
                                break;
                            }
                            this.buffer.f134a = rVar.pop();
                            s.a(rVar);
                            j3 -= j4;
                        }
                        this.f138a = null;
                        this.offset = j;
                        this.data = null;
                        this.start = -1;
                        this.end = -1;
                    } else {
                        throw new IllegalArgumentException("newSize < 0: ".concat(String.valueOf(j)));
                    }
                } else if (j > j2) {
                    long j5 = j - j2;
                    boolean z = true;
                    while (j5 > 0) {
                        r a2 = this.buffer.a(1);
                        int min = (int) Math.min(j5, (long) (8192 - a2.c));
                        a2.c += min;
                        j5 -= (long) min;
                        if (z) {
                            this.f138a = a2;
                            this.offset = j2;
                            this.data = a2.f162a;
                            this.start = a2.c - min;
                            this.end = a2.c;
                            z = false;
                        }
                    }
                }
                this.buffer.f135b = j;
                return j2;
            } else {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers");
            }
        }

        public final long expandBuffer(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("minByteCount <= 0: ".concat(String.valueOf(i)));
            } else if (i <= 8192) {
                c cVar = this.buffer;
                if (cVar == null) {
                    throw new IllegalStateException("not attached to a buffer");
                } else if (this.readWrite) {
                    long j = cVar.f135b;
                    r a2 = this.buffer.a(i);
                    int i2 = 8192 - a2.c;
                    a2.c = 8192;
                    long j2 = (long) i2;
                    this.buffer.f135b = j + j2;
                    this.f138a = a2;
                    this.offset = j;
                    this.data = a2.f162a;
                    this.start = 8192 - i2;
                    this.end = 8192;
                    return j2;
                } else {
                    throw new IllegalStateException("expandBuffer() only permitted for read/write buffers");
                }
            } else {
                throw new IllegalArgumentException("minByteCount > Segment.SIZE: ".concat(String.valueOf(i)));
            }
        }

        public final void close() {
            if (this.buffer != null) {
                this.buffer = null;
                this.f138a = null;
                this.offset = -1;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return;
            }
            throw new IllegalStateException("not attached to a buffer");
        }
    }

    public final c buffer() {
        return this;
    }

    public final void close() {
    }

    public final d emit() {
        return this;
    }

    public final c emitCompleteSegments() {
        return this;
    }

    public final void flush() {
    }

    public final boolean isOpen() {
        return true;
    }

    public final long size() {
        return this.f135b;
    }

    public final OutputStream outputStream() {
        return new OutputStream() {
            public final void close() {
            }

            public final void flush() {
            }

            public final void write(int i) {
                c.this.writeByte((int) (byte) i);
            }

            public final void write(byte[] bArr, int i, int i2) {
                c.this.write(bArr, i, i2);
            }

            public final String toString() {
                return c.this + ".outputStream()";
            }
        };
    }

    public final boolean exhausted() {
        return this.f135b == 0;
    }

    public final void require(long j) throws EOFException {
        if (this.f135b < j) {
            throw new EOFException();
        }
    }

    public final boolean request(long j) {
        return this.f135b >= j;
    }

    public final InputStream inputStream() {
        return new InputStream() {
            public final void close() {
            }

            public final int read() {
                if (c.this.f135b > 0) {
                    return c.this.readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
                }
                return -1;
            }

            public final int read(byte[] bArr, int i, int i2) {
                return c.this.read(bArr, i, i2);
            }

            public final int available() {
                return (int) Math.min(c.this.f135b, 2147483647L);
            }

            public final String toString() {
                return c.this + ".inputStream()";
            }
        };
    }

    public final c copyTo(OutputStream outputStream) throws IOException {
        return copyTo(outputStream, 0, this.f135b);
    }

    public final c copyTo(OutputStream outputStream, long j, long j2) throws IOException {
        if (outputStream != null) {
            x.checkOffsetAndCount(this.f135b, j, j2);
            if (j2 == 0) {
                return this;
            }
            r rVar = this.f134a;
            while (j >= ((long) (rVar.c - rVar.f163b))) {
                j -= (long) (rVar.c - rVar.f163b);
                rVar = rVar.f;
            }
            while (j2 > 0) {
                int i = (int) (((long) rVar.f163b) + j);
                int min = (int) Math.min((long) (rVar.c - i), j2);
                outputStream.write(rVar.f162a, i, min);
                j2 -= (long) min;
                rVar = rVar.f;
                j = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    public final c copyTo(c cVar, long j, long j2) {
        if (cVar != null) {
            x.checkOffsetAndCount(this.f135b, j, j2);
            if (j2 == 0) {
                return this;
            }
            cVar.f135b += j2;
            r rVar = this.f134a;
            while (j >= ((long) (rVar.c - rVar.f163b))) {
                j -= (long) (rVar.c - rVar.f163b);
                rVar = rVar.f;
            }
            while (j2 > 0) {
                r a2 = rVar.a();
                a2.f163b = (int) (((long) a2.f163b) + j);
                a2.c = Math.min(a2.f163b + ((int) j2), a2.c);
                r rVar2 = cVar.f134a;
                if (rVar2 == null) {
                    a2.g = a2;
                    a2.f = a2;
                    cVar.f134a = a2;
                } else {
                    rVar2.g.push(a2);
                }
                j2 -= (long) (a2.c - a2.f163b);
                rVar = rVar.f;
                j = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    public final c writeTo(OutputStream outputStream) throws IOException {
        return writeTo(outputStream, this.f135b);
    }

    public final c writeTo(OutputStream outputStream, long j) throws IOException {
        if (outputStream != null) {
            x.checkOffsetAndCount(this.f135b, 0, j);
            r rVar = this.f134a;
            while (j > 0) {
                int min = (int) Math.min(j, (long) (rVar.c - rVar.f163b));
                outputStream.write(rVar.f162a, rVar.f163b, min);
                rVar.f163b += min;
                long j2 = (long) min;
                this.f135b -= j2;
                j -= j2;
                if (rVar.f163b == rVar.c) {
                    r pop = rVar.pop();
                    this.f134a = pop;
                    s.a(rVar);
                    rVar = pop;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    public final c readFrom(InputStream inputStream) throws IOException {
        a(inputStream, Long.MAX_VALUE, true);
        return this;
    }

    public final c readFrom(InputStream inputStream, long j) throws IOException {
        if (j >= 0) {
            a(inputStream, j, false);
            return this;
        }
        throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
    }

    private void a(InputStream inputStream, long j, boolean z) throws IOException {
        if (inputStream != null) {
            while (true) {
                if (j > 0 || z) {
                    r a2 = a(1);
                    int read = inputStream.read(a2.f162a, a2.c, (int) Math.min(j, (long) (8192 - a2.c)));
                    if (read != -1) {
                        a2.c += read;
                        long j2 = (long) read;
                        this.f135b += j2;
                        j -= j2;
                    } else if (!z) {
                        throw new EOFException();
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("in == null");
        }
    }

    public final long completeSegmentByteCount() {
        long j = this.f135b;
        if (j == 0) {
            return 0;
        }
        r rVar = this.f134a.g;
        if (rVar.c < 8192 && rVar.e) {
            j -= (long) (rVar.c - rVar.f163b);
        }
        return j;
    }

    public final byte readByte() {
        if (this.f135b != 0) {
            r rVar = this.f134a;
            int i = rVar.f163b;
            int i2 = rVar.c;
            int i3 = i + 1;
            byte b2 = rVar.f162a[i];
            this.f135b--;
            if (i3 == i2) {
                this.f134a = rVar.pop();
                s.a(rVar);
            } else {
                rVar.f163b = i3;
            }
            return b2;
        }
        throw new IllegalStateException("size == 0");
    }

    public final byte getByte(long j) {
        x.checkOffsetAndCount(this.f135b, j, 1);
        long j2 = this.f135b;
        if (j2 - j > j) {
            r rVar = this.f134a;
            while (true) {
                long j3 = (long) (rVar.c - rVar.f163b);
                if (j < j3) {
                    return rVar.f162a[rVar.f163b + ((int) j)];
                }
                j -= j3;
                rVar = rVar.f;
            }
        } else {
            long j4 = j - j2;
            r rVar2 = this.f134a;
            do {
                rVar2 = rVar2.g;
                j4 += (long) (rVar2.c - rVar2.f163b);
            } while (j4 < 0);
            return rVar2.f162a[rVar2.f163b + ((int) j4)];
        }
    }

    public final short readShort() {
        if (this.f135b >= 2) {
            r rVar = this.f134a;
            int i = rVar.f163b;
            int i2 = rVar.c;
            if (i2 - i < 2) {
                return (short) (((readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 8) | (readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME));
            }
            byte[] bArr = rVar.f162a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            byte b2 = ((bArr[i] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 8) | (bArr[i3] & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
            this.f135b -= 2;
            if (i4 == i2) {
                this.f134a = rVar.pop();
                s.a(rVar);
            } else {
                rVar.f163b = i4;
            }
            return (short) b2;
        }
        throw new IllegalStateException("size < 2: " + this.f135b);
    }

    public final int readInt() {
        if (this.f135b >= 4) {
            r rVar = this.f134a;
            int i = rVar.f163b;
            int i2 = rVar.c;
            if (i2 - i < 4) {
                return ((readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 24) | ((readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 16) | ((readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 8) | (readByte() & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
            }
            byte[] bArr = rVar.f162a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            byte b2 = ((bArr[i] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 24) | ((bArr[i3] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 16);
            int i5 = i4 + 1;
            byte b3 = b2 | ((bArr[i4] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 8);
            int i6 = i5 + 1;
            byte b4 = b3 | (bArr[i5] & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
            this.f135b -= 4;
            if (i6 == i2) {
                this.f134a = rVar.pop();
                s.a(rVar);
            } else {
                rVar.f163b = i6;
            }
            return b4;
        }
        throw new IllegalStateException("size < 4: " + this.f135b);
    }

    public final long readLong() {
        if (this.f135b >= 8) {
            r rVar = this.f134a;
            int i = rVar.f163b;
            int i2 = rVar.c;
            if (i2 - i < 8) {
                return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
            }
            byte[] bArr = rVar.f162a;
            int i3 = i + 1;
            int i4 = i3 + 1;
            int i5 = i4 + 1;
            int i6 = i5 + 1;
            int i7 = i6 + 1;
            int i8 = i7 + 1;
            long j = ((((long) bArr[i]) & 255) << 56) | ((((long) bArr[i3]) & 255) << 48) | ((((long) bArr[i4]) & 255) << 40) | ((((long) bArr[i5]) & 255) << 32) | ((((long) bArr[i6]) & 255) << 24) | ((((long) bArr[i7]) & 255) << 16);
            int i9 = i8 + 1;
            int i10 = i9 + 1;
            long j2 = (((long) bArr[i9]) & 255) | ((((long) bArr[i8]) & 255) << 8) | j;
            this.f135b -= 8;
            if (i10 == i2) {
                this.f134a = rVar.pop();
                s.a(rVar);
            } else {
                rVar.f163b = i10;
            }
            return j2;
        }
        throw new IllegalStateException("size < 8: " + this.f135b);
    }

    public final short readShortLe() {
        return x.reverseBytesShort(readShort());
    }

    public final int readIntLe() {
        return x.reverseBytesInt(readInt());
    }

    public final long readLongLe() {
        return x.reverseBytesLong(readLong());
    }

    /* JADX WARNING: Code restructure failed: missing block: B:32:0x009f, code lost:
        if (r10 != r11) goto L_0x00ab;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x00a1, code lost:
        r0.f134a = r15.pop();
        b.s.a(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00ab, code lost:
        r15.f163b = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x00ae, code lost:
        if (r4 != false) goto L_0x00b4;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long readDecimalLong() {
        /*
            r17 = this;
            r0 = r17
            long r1 = r0.f135b
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L_0x00bf
            r1 = -7
            r5 = 0
            r6 = r3
            r3 = 0
            r4 = 0
        L_0x0010:
            b.r r8 = r0.f134a
            byte[] r9 = r8.f162a
            int r10 = r8.f163b
            int r11 = r8.c
        L_0x0018:
            r12 = 1
            if (r10 >= r11) goto L_0x009e
            byte r13 = r9[r10]
            r14 = 48
            if (r13 < r14) goto L_0x006d
            r15 = 57
            if (r13 > r15) goto L_0x006d
            int r14 = r14 - r13
            r15 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r12 = (r6 > r15 ? 1 : (r6 == r15 ? 0 : -1))
            if (r12 < 0) goto L_0x0043
            int r12 = (r6 > r15 ? 1 : (r6 == r15 ? 0 : -1))
            r15 = r8
            r16 = r9
            if (r12 != 0) goto L_0x003c
            long r8 = (long) r14
            int r12 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r12 >= 0) goto L_0x003c
            goto L_0x0043
        L_0x003c:
            r8 = 10
            long r6 = r6 * r8
            long r8 = (long) r14
            long r6 = r6 + r8
            goto L_0x007a
        L_0x0043:
            b.c r1 = new b.c
            r1.<init>()
            b.c r1 = r1.writeDecimalLong((long) r6)
            b.c r1 = r1.writeByte((int) r13)
            if (r3 != 0) goto L_0x0055
            r1.readByte()
        L_0x0055:
            java.lang.NumberFormatException r2 = new java.lang.NumberFormatException
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "Number too large: "
            r3.<init>(r4)
            java.lang.String r1 = r1.readUtf8()
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            r2.<init>(r1)
            throw r2
        L_0x006d:
            r15 = r8
            r16 = r9
            r8 = 45
            if (r13 != r8) goto L_0x0082
            if (r5 != 0) goto L_0x0082
            r8 = 1
            long r1 = r1 - r8
            r3 = 1
        L_0x007a:
            int r10 = r10 + 1
            int r5 = r5 + 1
            r8 = r15
            r9 = r16
            goto L_0x0018
        L_0x0082:
            if (r5 == 0) goto L_0x0086
            r4 = 1
            goto L_0x009f
        L_0x0086:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Expected leading [0-9] or '-' character but was 0x"
            r2.<init>(r3)
            java.lang.String r3 = java.lang.Integer.toHexString(r13)
            r2.append(r3)
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r1
        L_0x009e:
            r15 = r8
        L_0x009f:
            if (r10 != r11) goto L_0x00ab
            b.r r8 = r15.pop()
            r0.f134a = r8
            b.s.a(r15)
            goto L_0x00ae
        L_0x00ab:
            r8 = r15
            r8.f163b = r10
        L_0x00ae:
            if (r4 != 0) goto L_0x00b4
            b.r r8 = r0.f134a
            if (r8 != 0) goto L_0x0010
        L_0x00b4:
            long r1 = r0.f135b
            long r4 = (long) r5
            long r1 = r1 - r4
            r0.f135b = r1
            if (r3 == 0) goto L_0x00bd
            return r6
        L_0x00bd:
            long r1 = -r6
            return r1
        L_0x00bf:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "size == 0"
            r1.<init>(r2)
            goto L_0x00c8
        L_0x00c7:
            throw r1
        L_0x00c8:
            goto L_0x00c7
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.readDecimalLong():long");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:30:0x008c, code lost:
        if (r8 != r9) goto L_0x0098;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x008e, code lost:
        r15.f134a = r6.pop();
        b.s.a(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0098, code lost:
        r6.f163b = r8;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x009a, code lost:
        if (r5 != false) goto L_0x00a0;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x0074 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final long readHexadecimalUnsignedLong() {
        /*
            r15 = this;
            long r0 = r15.f135b
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L_0x00a7
            r0 = 0
            r0 = r2
            r4 = 0
            r5 = 0
        L_0x000c:
            b.r r6 = r15.f134a
            byte[] r7 = r6.f162a
            int r8 = r6.f163b
            int r9 = r6.c
        L_0x0014:
            if (r8 >= r9) goto L_0x008c
            byte r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L_0x0023
            r11 = 57
            if (r10 > r11) goto L_0x0023
            int r11 = r10 + -48
            goto L_0x003b
        L_0x0023:
            r11 = 97
            if (r10 < r11) goto L_0x0030
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L_0x0030
            int r11 = r10 + -97
        L_0x002d:
            int r11 = r11 + 10
            goto L_0x003b
        L_0x0030:
            r11 = 65
            if (r10 < r11) goto L_0x0070
            r11 = 70
            if (r10 > r11) goto L_0x0070
            int r11 = r10 + -65
            goto L_0x002d
        L_0x003b:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r0
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L_0x004b
            r10 = 4
            long r0 = r0 << r10
            long r10 = (long) r11
            long r0 = r0 | r10
            int r8 = r8 + 1
            int r4 = r4 + 1
            goto L_0x0014
        L_0x004b:
            b.c r2 = new b.c
            r2.<init>()
            b.c r0 = r2.writeHexadecimalUnsignedLong((long) r0)
            b.c r0 = r0.writeByte((int) r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Number too large: "
            r2.<init>(r3)
            java.lang.String r0 = r0.readUtf8()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L_0x0070:
            if (r4 == 0) goto L_0x0074
            r5 = 1
            goto L_0x008c
        L_0x0074:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.<init>(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x008c:
            if (r8 != r9) goto L_0x0098
            b.r r7 = r6.pop()
            r15.f134a = r7
            b.s.a(r6)
            goto L_0x009a
        L_0x0098:
            r6.f163b = r8
        L_0x009a:
            if (r5 != 0) goto L_0x00a0
            b.r r6 = r15.f134a
            if (r6 != 0) goto L_0x000c
        L_0x00a0:
            long r2 = r15.f135b
            long r4 = (long) r4
            long r2 = r2 - r4
            r15.f135b = r2
            return r0
        L_0x00a7:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto L_0x00b0
        L_0x00af:
            throw r0
        L_0x00b0:
            goto L_0x00af
        */
        throw new UnsupportedOperationException("Method not decompiled: b.c.readHexadecimalUnsignedLong():long");
    }

    public final f readByteString() {
        return new f(readByteArray());
    }

    public final f readByteString(long j) throws EOFException {
        return new f(readByteArray(j));
    }

    public final int select(o oVar) {
        int a2 = a(oVar, false);
        if (a2 == -1) {
            return -1;
        }
        try {
            skip((long) oVar.f156a[a2].size());
            return a2;
        } catch (EOFException unused) {
            throw new AssertionError();
        }
    }

    /* access modifiers changed from: package-private */
    public final int a(o oVar, boolean z) {
        int i;
        int i2;
        r rVar;
        o oVar2 = oVar;
        r rVar2 = this.f134a;
        if (rVar2 != null) {
            byte[] bArr = rVar2.f162a;
            int i3 = rVar2.f163b;
            int i4 = rVar2.c;
            int[] iArr = oVar2.f157b;
            int i5 = i3;
            int i6 = i4;
            int i7 = -1;
            r rVar3 = rVar2;
            byte[] bArr2 = bArr;
            int i8 = 0;
            loop0:
            while (true) {
                int i9 = i8 + 1;
                int i10 = iArr[i8];
                int i11 = i9 + 1;
                int i12 = iArr[i9];
                if (i12 != -1) {
                    i7 = i12;
                }
                if (rVar3 == null) {
                    break;
                }
                if (i10 < 0) {
                    int i13 = i11 + (i10 * -1);
                    while (true) {
                        int i14 = i5 + 1;
                        int i15 = i11 + 1;
                        if ((bArr2[i5] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) != iArr[i11]) {
                            return i7;
                        }
                        boolean z2 = i15 == i13;
                        if (i14 == i6) {
                            rVar = rVar3.f;
                            i2 = rVar.f163b;
                            bArr2 = rVar.f162a;
                            i6 = rVar.c;
                            if (rVar == rVar2) {
                                if (!z2) {
                                    break loop0;
                                }
                                rVar = null;
                            }
                        } else {
                            r rVar4 = rVar3;
                            i2 = i14;
                            rVar = rVar4;
                        }
                        if (z2) {
                            i = iArr[i15];
                            break;
                        }
                        i5 = i2;
                        i11 = i15;
                        rVar3 = rVar;
                    }
                } else {
                    int i16 = i5 + 1;
                    byte b2 = bArr2[i5] & com.pusher.java_websocket.drafts.c.END_OF_FRAME;
                    int i17 = i11 + i10;
                    while (i11 != i17) {
                        if (b2 == iArr[i11]) {
                            i = iArr[i11 + i10];
                            if (i16 == i6) {
                                rVar = rVar3.f;
                                i2 = rVar.f163b;
                                bArr2 = rVar.f162a;
                                i6 = rVar.c;
                                if (rVar == rVar2) {
                                    rVar = null;
                                }
                            } else {
                                rVar = rVar3;
                                i2 = i16;
                            }
                        } else {
                            i11++;
                        }
                    }
                    return i7;
                }
                if (i >= 0) {
                    return i;
                }
                int i18 = -i;
                i5 = i2;
                rVar3 = rVar;
                i8 = i18;
            }
            if (z) {
                return -2;
            }
            return i7;
        } else if (z) {
            return -2;
        } else {
            return oVar2.indexOf(f.EMPTY);
        }
    }

    public final void readFully(c cVar, long j) throws EOFException {
        long j2 = this.f135b;
        if (j2 >= j) {
            cVar.write(this, j);
        } else {
            cVar.write(this, j2);
            throw new EOFException();
        }
    }

    public final long readAll(u uVar) throws IOException {
        long j = this.f135b;
        if (j > 0) {
            uVar.write(this, j);
        }
        return j;
    }

    public final String readUtf8() {
        try {
            return readString(this.f135b, x.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final String readUtf8(long j) throws EOFException {
        return readString(j, x.UTF_8);
    }

    public final String readString(Charset charset) {
        try {
            return readString(this.f135b, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final String readString(long j, Charset charset) throws EOFException {
        x.checkOffsetAndCount(this.f135b, 0, j);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (j > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
        } else if (j == 0) {
            return "";
        } else {
            r rVar = this.f134a;
            if (((long) rVar.f163b) + j > ((long) rVar.c)) {
                return new String(readByteArray(j), charset);
            }
            String str = new String(rVar.f162a, rVar.f163b, (int) j, charset);
            rVar.f163b = (int) (((long) rVar.f163b) + j);
            this.f135b -= j;
            if (rVar.f163b == rVar.c) {
                this.f134a = rVar.pop();
                s.a(rVar);
            }
            return str;
        }
    }

    @Nullable
    public final String readUtf8Line() throws EOFException {
        long indexOf = indexOf((byte) 10);
        if (indexOf != -1) {
            return a(indexOf);
        }
        long j = this.f135b;
        if (j != 0) {
            return readUtf8(j);
        }
        return null;
    }

    public final String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    public final String readUtf8LineStrict(long j) throws EOFException {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long indexOf = indexOf((byte) 10, 0, j2);
            if (indexOf != -1) {
                return a(indexOf);
            }
            if (j2 < size() && getByte(j2 - 1) == 13 && getByte(j2) == 10) {
                return a(j2);
            }
            c cVar = new c();
            copyTo(cVar, 0, Math.min(32, size()));
            throw new EOFException("\\n not found: limit=" + Math.min(size(), j) + " content=" + cVar.readByteString().hex() + 8230);
        }
        throw new IllegalArgumentException("limit < 0: ".concat(String.valueOf(j)));
    }

    /* access modifiers changed from: package-private */
    public final String a(long j) throws EOFException {
        if (j > 0) {
            long j2 = j - 1;
            if (getByte(j2) == 13) {
                String readUtf8 = readUtf8(j2);
                skip(2);
                return readUtf8;
            }
        }
        String readUtf82 = readUtf8(j);
        skip(1);
        return readUtf82;
    }

    public final int readUtf8CodePoint() throws EOFException {
        byte b2;
        int i;
        byte b3;
        if (this.f135b != 0) {
            byte b4 = getByte(0);
            int i2 = 1;
            if ((b4 & 128) == 0) {
                b3 = b4 & Byte.MAX_VALUE;
                i = 1;
                b2 = 0;
            } else if ((b4 & 224) == 192) {
                b3 = b4 & 31;
                i = 2;
                b2 = 128;
            } else if ((b4 & 240) == 224) {
                b3 = b4 & 15;
                i = 3;
                b2 = 2048;
            } else if ((b4 & 248) == 240) {
                b3 = b4 & 7;
                i = 4;
                b2 = 65536;
            } else {
                skip(1);
                return 65533;
            }
            long j = (long) i;
            if (this.f135b >= j) {
                while (i2 < i) {
                    long j2 = (long) i2;
                    byte b5 = getByte(j2);
                    if ((b5 & 192) == 128) {
                        b3 = (b3 << 6) | (b5 & 63);
                        i2++;
                    } else {
                        skip(j2);
                        return 65533;
                    }
                }
                skip(j);
                if (b3 > 1114111) {
                    return 65533;
                }
                if ((b3 < 55296 || b3 > 57343) && b3 >= b2) {
                    return b3;
                }
                return 65533;
            }
            throw new EOFException("size < " + i + ": " + this.f135b + " (to read code point prefixed 0x" + Integer.toHexString(b4) + ")");
        }
        throw new EOFException();
    }

    public final byte[] readByteArray() {
        try {
            return readByteArray(this.f135b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final byte[] readByteArray(long j) throws EOFException {
        x.checkOffsetAndCount(this.f135b, 0, j);
        if (j <= 2147483647L) {
            byte[] bArr = new byte[((int) j)];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: ".concat(String.valueOf(j)));
    }

    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    public final void readFully(byte[] bArr) throws EOFException {
        int i = 0;
        while (i < bArr.length) {
            int read = read(bArr, i, bArr.length - i);
            if (read != -1) {
                i += read;
            } else {
                throw new EOFException();
            }
        }
    }

    public final int read(byte[] bArr, int i, int i2) {
        x.checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
        r rVar = this.f134a;
        if (rVar == null) {
            return -1;
        }
        int min = Math.min(i2, rVar.c - rVar.f163b);
        System.arraycopy(rVar.f162a, rVar.f163b, bArr, i, min);
        rVar.f163b += min;
        this.f135b -= (long) min;
        if (rVar.f163b == rVar.c) {
            this.f134a = rVar.pop();
            s.a(rVar);
        }
        return min;
    }

    public final int read(ByteBuffer byteBuffer) throws IOException {
        r rVar = this.f134a;
        if (rVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), rVar.c - rVar.f163b);
        byteBuffer.put(rVar.f162a, rVar.f163b, min);
        rVar.f163b += min;
        this.f135b -= (long) min;
        if (rVar.f163b == rVar.c) {
            this.f134a = rVar.pop();
            s.a(rVar);
        }
        return min;
    }

    public final void clear() {
        try {
            skip(this.f135b);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    public final void skip(long j) throws EOFException {
        while (j > 0) {
            r rVar = this.f134a;
            if (rVar != null) {
                int min = (int) Math.min(j, (long) (rVar.c - this.f134a.f163b));
                long j2 = (long) min;
                this.f135b -= j2;
                j -= j2;
                this.f134a.f163b += min;
                if (this.f134a.f163b == this.f134a.c) {
                    r rVar2 = this.f134a;
                    this.f134a = rVar2.pop();
                    s.a(rVar2);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    public final c write(f fVar) {
        if (fVar != null) {
            fVar.a(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    public final c writeUtf8(String str) {
        return writeUtf8(str, 0, str.length());
    }

    public final c writeUtf8(String str, int i, int i2) {
        char c2;
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalArgumentException("beginIndex < 0: ".concat(String.valueOf(i)));
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 <= str.length()) {
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt < 128) {
                    r a2 = a(1);
                    byte[] bArr = a2.f162a;
                    int i3 = a2.c - i;
                    int min = Math.min(i2, 8192 - i3);
                    int i4 = i + 1;
                    bArr[i + i3] = (byte) charAt;
                    while (true) {
                        i = i4;
                        if (i >= min) {
                            break;
                        }
                        char charAt2 = str.charAt(i);
                        if (charAt2 >= 128) {
                            break;
                        }
                        i4 = i + 1;
                        bArr[i + i3] = (byte) charAt2;
                    }
                    int i5 = (i3 + i) - a2.c;
                    a2.c += i5;
                    this.f135b += (long) i5;
                } else {
                    if (charAt < 2048) {
                        writeByte((charAt >> 6) | 192);
                        writeByte((int) (charAt & '?') | 128);
                    } else if (charAt < 55296 || charAt > 57343) {
                        writeByte((charAt >> 12) | 224);
                        writeByte(((charAt >> 6) & 63) | 128);
                        writeByte((int) (charAt & '?') | 128);
                    } else {
                        int i6 = i + 1;
                        if (i6 < i2) {
                            c2 = str.charAt(i6);
                        } else {
                            c2 = 0;
                        }
                        if (charAt > 56319 || c2 < 56320 || c2 > 57343) {
                            writeByte(63);
                            i = i6;
                        } else {
                            int i7 = (((charAt & 10239) << 10) | (9215 & c2)) + 0;
                            writeByte((i7 >> 18) | 240);
                            writeByte(((i7 >> 12) & 63) | 128);
                            writeByte(((i7 >> 6) & 63) | 128);
                            writeByte((i7 & 63) | 128);
                            i += 2;
                        }
                    }
                    i++;
                }
            }
            return this;
        } else {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        }
    }

    public final c writeUtf8CodePoint(int i) {
        if (i < 128) {
            writeByte(i);
        } else if (i < 2048) {
            writeByte((i >> 6) | 192);
            writeByte((i & 63) | 128);
        } else if (i < 65536) {
            if (i < 55296 || i > 57343) {
                writeByte((i >> 12) | 224);
                writeByte(((i >> 6) & 63) | 128);
                writeByte((i & 63) | 128);
            } else {
                writeByte(63);
            }
        } else if (i <= 1114111) {
            writeByte((i >> 18) | 240);
            writeByte(((i >> 12) & 63) | 128);
            writeByte(((i >> 6) & 63) | 128);
            writeByte((i & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i));
        }
        return this;
    }

    public final c writeString(String str, Charset charset) {
        return writeString(str, 0, str.length(), charset);
    }

    public final c writeString(String str, int i, int i2, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        } else if (i < 0) {
            throw new IllegalAccessError("beginIndex < 0: ".concat(String.valueOf(i)));
        } else if (i2 < i) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + i2 + " < " + i);
        } else if (i2 > str.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + i2 + " > " + str.length());
        } else if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        } else if (charset.equals(x.UTF_8)) {
            return writeUtf8(str, i, i2);
        } else {
            byte[] bytes = str.substring(i, i2).getBytes(charset);
            return write(bytes, 0, bytes.length);
        }
    }

    public final c write(byte[] bArr) {
        if (bArr != null) {
            return write(bArr, 0, bArr.length);
        }
        throw new IllegalArgumentException("source == null");
    }

    public final c write(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            long j = (long) i2;
            x.checkOffsetAndCount((long) bArr.length, (long) i, j);
            int i3 = i2 + i;
            while (i < i3) {
                r a2 = a(1);
                int min = Math.min(i3 - i, 8192 - a2.c);
                System.arraycopy(bArr, i, a2.f162a, a2.c, min);
                i += min;
                a2.c += min;
            }
            this.f135b += j;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final int write(ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i = remaining;
            while (i > 0) {
                r a2 = a(1);
                int min = Math.min(i, 8192 - a2.c);
                byteBuffer.get(a2.f162a, a2.c, min);
                i -= min;
                a2.c += min;
            }
            this.f135b += (long) remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    public final long writeAll(v vVar) throws IOException {
        if (vVar != null) {
            long j = 0;
            while (true) {
                long read = vVar.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (read == -1) {
                    return j;
                }
                j += read;
            }
        } else {
            throw new IllegalArgumentException("source == null");
        }
    }

    public final d write(v vVar, long j) throws IOException {
        while (j > 0) {
            long read = vVar.read(this, j);
            if (read != -1) {
                j -= read;
            } else {
                throw new EOFException();
            }
        }
        return this;
    }

    public final c writeByte(int i) {
        r a2 = a(1);
        byte[] bArr = a2.f162a;
        int i2 = a2.c;
        a2.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.f135b++;
        return this;
    }

    public final c writeShort(int i) {
        r a2 = a(2);
        byte[] bArr = a2.f162a;
        int i2 = a2.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        a2.c = i3 + 1;
        this.f135b += 2;
        return this;
    }

    public final c writeShortLe(int i) {
        return writeShort((int) x.reverseBytesShort((short) i));
    }

    public final c writeInt(int i) {
        r a2 = a(4);
        byte[] bArr = a2.f162a;
        int i2 = a2.c;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        a2.c = i5 + 1;
        this.f135b += 4;
        return this;
    }

    public final c writeIntLe(int i) {
        return writeInt(x.reverseBytesInt(i));
    }

    public final c writeLong(long j) {
        r a2 = a(8);
        byte[] bArr = a2.f162a;
        int i = a2.c;
        int i2 = i + 1;
        bArr[i] = (byte) ((int) ((j >>> 56) & 255));
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((int) ((j >>> 48) & 255));
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((int) ((j >>> 40) & 255));
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((int) ((j >>> 32) & 255));
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((int) ((j >>> 24) & 255));
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((int) ((j >>> 16) & 255));
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((int) ((j >>> 8) & 255));
        bArr[i8] = (byte) ((int) (j & 255));
        a2.c = i8 + 1;
        this.f135b += 8;
        return this;
    }

    public final c writeLongLe(long j) {
        return writeLong(x.reverseBytesLong(j));
    }

    public final c writeDecimalLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        boolean z = false;
        int i = 1;
        if (j < 0) {
            j = -j;
            if (j < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (j >= 100000000) {
            i = j < 1000000000000L ? j < 10000000000L ? j < 1000000000 ? 9 : 10 : j < 100000000000L ? 11 : 12 : j < 1000000000000000L ? j < 10000000000000L ? 13 : j < 100000000000000L ? 14 : 15 : j < 100000000000000000L ? j < 10000000000000000L ? 16 : 17 : j < 1000000000000000000L ? 18 : 19;
        } else if (j >= 10000) {
            i = j < 1000000 ? j < 100000 ? 5 : 6 : j < 10000000 ? 7 : 8;
        } else if (j >= 100) {
            i = j < 1000 ? 3 : 4;
        } else if (j >= 10) {
            i = 2;
        }
        if (z) {
            i++;
        }
        r a2 = a(i);
        byte[] bArr = a2.f162a;
        int i2 = a2.c + i;
        while (j != 0) {
            i2--;
            bArr[i2] = c[(int) (j % 10)];
            j /= 10;
        }
        if (z) {
            bArr[i2 - 1] = 45;
        }
        a2.c += i;
        this.f135b += (long) i;
        return this;
    }

    public final c writeHexadecimalUnsignedLong(long j) {
        if (j == 0) {
            return writeByte(48);
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j)) / 4) + 1;
        r a2 = a(numberOfTrailingZeros);
        byte[] bArr = a2.f162a;
        int i = a2.c;
        for (int i2 = (a2.c + numberOfTrailingZeros) - 1; i2 >= i; i2--) {
            bArr[i2] = c[(int) (15 & j)];
            j >>>= 4;
        }
        a2.c += numberOfTrailingZeros;
        this.f135b += (long) numberOfTrailingZeros;
        return this;
    }

    /* access modifiers changed from: package-private */
    public final r a(int i) {
        if (i <= 0 || i > 8192) {
            throw new IllegalArgumentException();
        }
        r rVar = this.f134a;
        if (rVar == null) {
            this.f134a = s.a();
            r rVar2 = this.f134a;
            rVar2.g = rVar2;
            rVar2.f = rVar2;
            return rVar2;
        }
        r rVar3 = rVar.g;
        if (rVar3.c + i > 8192 || !rVar3.e) {
            rVar3 = rVar3.push(s.a());
        }
        return rVar3;
    }

    public final void write(c cVar, long j) {
        int i;
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        } else if (cVar != this) {
            x.checkOffsetAndCount(cVar.f135b, 0, j);
            while (j > 0) {
                if (j < ((long) (cVar.f134a.c - cVar.f134a.f163b))) {
                    r rVar = this.f134a;
                    r rVar2 = rVar != null ? rVar.g : null;
                    if (rVar2 != null && rVar2.e) {
                        long j2 = ((long) rVar2.c) + j;
                        if (rVar2.d) {
                            i = 0;
                        } else {
                            i = rVar2.f163b;
                        }
                        if (j2 - ((long) i) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            cVar.f134a.writeTo(rVar2, (int) j);
                            cVar.f135b -= j;
                            this.f135b += j;
                            return;
                        }
                    }
                    cVar.f134a = cVar.f134a.split((int) j);
                }
                r rVar3 = cVar.f134a;
                long j3 = (long) (rVar3.c - rVar3.f163b);
                cVar.f134a = rVar3.pop();
                r rVar4 = this.f134a;
                if (rVar4 == null) {
                    this.f134a = rVar3;
                    r rVar5 = this.f134a;
                    rVar5.g = rVar5;
                    rVar5.f = rVar5;
                } else {
                    rVar4.g.push(rVar3).compact();
                }
                cVar.f135b -= j3;
                this.f135b += j3;
                j -= j3;
            }
        } else {
            throw new IllegalArgumentException("source == this");
        }
    }

    public final long read(c cVar, long j) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j >= 0) {
            long j2 = this.f135b;
            if (j2 == 0) {
                return -1;
            }
            if (j > j2) {
                j = j2;
            }
            cVar.write(this, j);
            return j;
        } else {
            throw new IllegalArgumentException("byteCount < 0: ".concat(String.valueOf(j)));
        }
    }

    public final long indexOf(byte b2) {
        return indexOf(b2, 0, Long.MAX_VALUE);
    }

    public final long indexOf(byte b2, long j) {
        return indexOf(b2, j, Long.MAX_VALUE);
    }

    public final long indexOf(byte b2, long j, long j2) {
        long j3 = 0;
        if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", new Object[]{Long.valueOf(this.f135b), Long.valueOf(j), Long.valueOf(j2)}));
        }
        long j4 = this.f135b;
        if (j2 <= j4) {
            j4 = j2;
        }
        if (j == j4) {
            return -1;
        }
        r rVar = this.f134a;
        if (rVar == null) {
            return -1;
        }
        long j5 = this.f135b;
        if (j5 - j >= j) {
            while (true) {
                j5 = j3;
                j3 = ((long) (rVar.c - rVar.f163b)) + j5;
                if (j3 >= j) {
                    break;
                }
                rVar = rVar.f;
            }
        } else {
            while (j5 > j) {
                rVar = rVar.g;
                j5 -= (long) (rVar.c - rVar.f163b);
            }
        }
        long j6 = j;
        while (j5 < j4) {
            byte[] bArr = rVar.f162a;
            int min = (int) Math.min((long) rVar.c, (((long) rVar.f163b) + j4) - j5);
            for (int i = (int) ((((long) rVar.f163b) + j6) - j5); i < min; i++) {
                if (bArr[i] == b2) {
                    return ((long) (i - rVar.f163b)) + j5;
                }
            }
            byte b3 = b2;
            j6 = ((long) (rVar.c - rVar.f163b)) + j5;
            rVar = rVar.f;
            j5 = j6;
        }
        return -1;
    }

    public final long indexOf(f fVar) throws IOException {
        return indexOf(fVar, 0);
    }

    public final long indexOf(f fVar, long j) throws IOException {
        f fVar2 = fVar;
        if (fVar.size() != 0) {
            long j2 = 0;
            if (j >= 0) {
                r rVar = this.f134a;
                long j3 = -1;
                if (rVar == null) {
                    return -1;
                }
                long j4 = this.f135b;
                if (j4 - j >= j) {
                    while (true) {
                        j4 = j2;
                        j2 = ((long) (rVar.c - rVar.f163b)) + j4;
                        if (j2 >= j) {
                            break;
                        }
                        rVar = rVar.f;
                    }
                } else {
                    while (j4 > j) {
                        rVar = rVar.g;
                        j4 -= (long) (rVar.c - rVar.f163b);
                    }
                }
                byte b2 = fVar2.getByte(0);
                int size = fVar.size();
                long j5 = (this.f135b - ((long) size)) + 1;
                long j6 = j;
                while (j4 < j5) {
                    byte[] bArr = rVar.f162a;
                    int min = (int) Math.min((long) rVar.c, (((long) rVar.f163b) + j5) - j4);
                    for (int i = (int) ((((long) rVar.f163b) + j6) - j4); i < min; i++) {
                        if (bArr[i] == b2 && a(rVar, i + 1, fVar2, size)) {
                            return ((long) (i - rVar.f163b)) + j4;
                        }
                    }
                    j6 = j4 + ((long) (rVar.c - rVar.f163b));
                    rVar = rVar.f;
                    j4 = j6;
                    j3 = -1;
                }
                return j3;
            }
            throw new IllegalArgumentException("fromIndex < 0");
        }
        throw new IllegalArgumentException("bytes is empty");
    }

    public final long indexOfElement(f fVar) {
        return indexOfElement(fVar, 0);
    }

    public final long indexOfElement(f fVar, long j) {
        int i;
        int i2;
        long j2 = 0;
        if (j >= 0) {
            r rVar = this.f134a;
            if (rVar == null) {
                return -1;
            }
            long j3 = this.f135b;
            if (j3 - j >= j) {
                while (true) {
                    j3 = j2;
                    j2 = ((long) (rVar.c - rVar.f163b)) + j3;
                    if (j2 >= j) {
                        break;
                    }
                    rVar = rVar.f;
                }
            } else {
                while (j3 > j) {
                    rVar = rVar.g;
                    j3 -= (long) (rVar.c - rVar.f163b);
                }
            }
            if (fVar.size() == 2) {
                byte b2 = fVar.getByte(0);
                byte b3 = fVar.getByte(1);
                while (j3 < this.f135b) {
                    byte[] bArr = rVar.f162a;
                    i = (int) ((((long) rVar.f163b) + j) - j3);
                    int i3 = rVar.c;
                    while (i < i3) {
                        byte b4 = bArr[i];
                        if (b4 == b2 || b4 == b3) {
                            i2 = rVar.f163b;
                        } else {
                            i++;
                        }
                    }
                    j = ((long) (rVar.c - rVar.f163b)) + j3;
                    rVar = rVar.f;
                    j3 = j;
                }
                return -1;
            }
            byte[] a2 = fVar.a();
            while (j3 < this.f135b) {
                byte[] bArr2 = rVar.f162a;
                int i4 = (int) ((((long) rVar.f163b) + j) - j3);
                int i5 = rVar.c;
                while (i < i5) {
                    byte b5 = bArr2[i];
                    int length = a2.length;
                    int i6 = 0;
                    while (i6 < length) {
                        if (b5 == a2[i6]) {
                            i2 = rVar.f163b;
                        } else {
                            i6++;
                        }
                    }
                    i4 = i + 1;
                }
                j = ((long) (rVar.c - rVar.f163b)) + j3;
                rVar = rVar.f;
                j3 = j;
            }
            return -1;
            return ((long) (i - i2)) + j3;
        }
        throw new IllegalArgumentException("fromIndex < 0");
    }

    public final boolean rangeEquals(long j, f fVar) {
        return rangeEquals(j, fVar, 0, fVar.size());
    }

    public final boolean rangeEquals(long j, f fVar, int i, int i2) {
        if (j < 0 || i < 0 || i2 < 0 || this.f135b - j < ((long) i2) || fVar.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (getByte(((long) i3) + j) != fVar.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    private static boolean a(r rVar, int i, f fVar, int i2) {
        int i3 = rVar.c;
        byte[] bArr = rVar.f162a;
        r rVar2 = rVar;
        for (int i4 = 1; i4 < i2; i4++) {
            if (i == i3) {
                r rVar3 = rVar2.f;
                byte[] bArr2 = rVar3.f162a;
                int i5 = rVar3.f163b;
                int i6 = rVar3.c;
                int i7 = i5;
                rVar2 = rVar3;
                i = i7;
                int i8 = i6;
                bArr = bArr2;
                i3 = i8;
            }
            if (bArr[i] != fVar.getByte(i4)) {
                return false;
            }
            i++;
        }
        return true;
    }

    public final w timeout() {
        return w.NONE;
    }

    public final f md5() {
        return a("MD5");
    }

    public final f sha1() {
        return a("SHA-1");
    }

    public final f sha256() {
        return a(Constants.SHA256);
    }

    public final f sha512() {
        return a("SHA-512");
    }

    private f a(String str) {
        try {
            MessageDigest instance = MessageDigest.getInstance(str);
            if (this.f134a != null) {
                instance.update(this.f134a.f162a, this.f134a.f163b, this.f134a.c - this.f134a.f163b);
                r rVar = this.f134a;
                while (true) {
                    rVar = rVar.f;
                    if (rVar == this.f134a) {
                        break;
                    }
                    instance.update(rVar.f162a, rVar.f163b, rVar.c - rVar.f163b);
                }
            }
            return f.of(instance.digest());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        }
    }

    public final f hmacSha1(f fVar) {
        return a("HmacSHA1", fVar);
    }

    public final f hmacSha256(f fVar) {
        return a("HmacSHA256", fVar);
    }

    public final f hmacSha512(f fVar) {
        return a("HmacSHA512", fVar);
    }

    private f a(String str, f fVar) {
        try {
            Mac instance = Mac.getInstance(str);
            instance.init(new SecretKeySpec(fVar.toByteArray(), str));
            if (this.f134a != null) {
                instance.update(this.f134a.f162a, this.f134a.f163b, this.f134a.c - this.f134a.f163b);
                r rVar = this.f134a;
                while (true) {
                    rVar = rVar.f;
                    if (rVar == this.f134a) {
                        break;
                    }
                    instance.update(rVar.f162a, rVar.f163b, rVar.c - rVar.f163b);
                }
            }
            return f.of(instance.doFinal());
        } catch (NoSuchAlgorithmException unused) {
            throw new AssertionError();
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j = this.f135b;
        if (j != cVar.f135b) {
            return false;
        }
        long j2 = 0;
        if (j == 0) {
            return true;
        }
        r rVar = this.f134a;
        r rVar2 = cVar.f134a;
        int i = rVar.f163b;
        int i2 = rVar2.f163b;
        while (j2 < this.f135b) {
            long min = (long) Math.min(rVar.c - i, rVar2.c - i2);
            int i3 = i2;
            int i4 = i;
            int i5 = 0;
            while (((long) i5) < min) {
                int i6 = i4 + 1;
                int i7 = i3 + 1;
                if (rVar.f162a[i4] != rVar2.f162a[i3]) {
                    return false;
                }
                i5++;
                i4 = i6;
                i3 = i7;
            }
            if (i4 == rVar.c) {
                rVar = rVar.f;
                i = rVar.f163b;
            } else {
                i = i4;
            }
            if (i3 == rVar2.c) {
                rVar2 = rVar2.f;
                i2 = rVar2.f163b;
            } else {
                i2 = i3;
            }
            j2 += min;
        }
        return true;
    }

    public final int hashCode() {
        r rVar = this.f134a;
        if (rVar == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = rVar.c;
            for (int i3 = rVar.f163b; i3 < i2; i3++) {
                i = (i * 31) + rVar.f162a[i3];
            }
            rVar = rVar.f;
        } while (rVar != this.f134a);
        return i;
    }

    public final String toString() {
        return snapshot().toString();
    }

    public final c clone() {
        c cVar = new c();
        if (this.f135b == 0) {
            return cVar;
        }
        cVar.f134a = this.f134a.a();
        r rVar = cVar.f134a;
        rVar.g = rVar;
        rVar.f = rVar;
        r rVar2 = this.f134a;
        while (true) {
            rVar2 = rVar2.f;
            if (rVar2 != this.f134a) {
                cVar.f134a.g.push(rVar2.a());
            } else {
                cVar.f135b = this.f135b;
                return cVar;
            }
        }
    }

    public final f snapshot() {
        long j = this.f135b;
        if (j <= 2147483647L) {
            return snapshot((int) j);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f135b);
    }

    public final f snapshot(int i) {
        if (i == 0) {
            return f.EMPTY;
        }
        return new t(this, i);
    }

    public final a readUnsafe() {
        return readUnsafe(new a());
    }

    public final a readUnsafe(a aVar) {
        if (aVar.buffer == null) {
            aVar.buffer = this;
            aVar.readWrite = false;
            return aVar;
        }
        throw new IllegalStateException("already attached to a buffer");
    }

    public final a readAndWriteUnsafe() {
        return readAndWriteUnsafe(new a());
    }

    public final a readAndWriteUnsafe(a aVar) {
        if (aVar.buffer == null) {
            aVar.buffer = this;
            aVar.readWrite = true;
            return aVar;
        }
        throw new IllegalStateException("already attached to a buffer");
    }
}
