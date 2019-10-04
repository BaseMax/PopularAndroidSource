package c.b.a.i;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ByteBufferUtil */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicReference<byte[]> f4414a = new AtomicReference<>();

    /* renamed from: c.b.a.i.a$a  reason: collision with other inner class name */
    /* compiled from: ByteBufferUtil */
    private static class C0065a extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        public final ByteBuffer f4415a;

        /* renamed from: b  reason: collision with root package name */
        public int f4416b = -1;

        public C0065a(ByteBuffer byteBuffer) {
            this.f4415a = byteBuffer;
        }

        public int available() {
            return this.f4415a.remaining();
        }

        public synchronized void mark(int i2) {
            this.f4416b = this.f4415a.position();
        }

        public boolean markSupported() {
            return true;
        }

        public int read() {
            if (!this.f4415a.hasRemaining()) {
                return -1;
            }
            return this.f4415a.get();
        }

        public synchronized void reset() {
            if (this.f4416b != -1) {
                this.f4415a.position(this.f4416b);
            } else {
                throw new IOException("Cannot reset to unset mark position");
            }
        }

        public long skip(long j2) {
            if (!this.f4415a.hasRemaining()) {
                return -1;
            }
            long min = Math.min(j2, (long) available());
            ByteBuffer byteBuffer = this.f4415a;
            byteBuffer.position((int) (((long) byteBuffer.position()) + min));
            return min;
        }

        public int read(byte[] bArr, int i2, int i3) {
            if (!this.f4415a.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i3, available());
            this.f4415a.get(bArr, i2, min);
            return min;
        }
    }

    /* compiled from: ByteBufferUtil */
    static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f4417a;

        /* renamed from: b  reason: collision with root package name */
        public final int f4418b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f4419c;

        public b(byte[] bArr, int i2, int i3) {
            this.f4419c = bArr;
            this.f4417a = i2;
            this.f4418b = i3;
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:9|10|(2:12|13)|14|15|16) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x002f */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x004e A[SYNTHETIC, Splitter:B:29:0x004e] */
    /* JADX WARNING: Removed duplicated region for block: B:33:0x0055 A[SYNTHETIC, Splitter:B:33:0x0055] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.nio.ByteBuffer a(java.io.File r9) {
        /*
            r0 = 0
            long r5 = r9.length()     // Catch:{ all -> 0x004a }
            r1 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r3 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r3 > 0) goto L_0x0042
            r1 = 0
            int r3 = (r5 > r1 ? 1 : (r5 == r1 ? 0 : -1))
            if (r3 == 0) goto L_0x003a
            java.io.RandomAccessFile r7 = new java.io.RandomAccessFile     // Catch:{ all -> 0x004a }
            java.lang.String r1 = "r"
            r7.<init>(r9, r1)     // Catch:{ all -> 0x004a }
            java.nio.channels.FileChannel r9 = r7.getChannel()     // Catch:{ all -> 0x0038 }
            java.nio.channels.FileChannel$MapMode r2 = java.nio.channels.FileChannel.MapMode.READ_ONLY     // Catch:{ all -> 0x0033 }
            r3 = 0
            r1 = r9
            java.nio.MappedByteBuffer r0 = r1.map(r2, r3, r5)     // Catch:{ all -> 0x0033 }
            java.nio.MappedByteBuffer r0 = r0.load()     // Catch:{ all -> 0x0033 }
            if (r9 == 0) goto L_0x002f
            r9.close()     // Catch:{ IOException -> 0x002f }
        L_0x002f:
            r7.close()     // Catch:{ IOException -> 0x0032 }
        L_0x0032:
            return r0
        L_0x0033:
            r0 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto L_0x004c
        L_0x0038:
            r9 = move-exception
            goto L_0x004c
        L_0x003a:
            java.io.IOException r9 = new java.io.IOException     // Catch:{ all -> 0x004a }
            java.lang.String r1 = "File unsuitable for memory mapping"
            r9.<init>(r1)     // Catch:{ all -> 0x004a }
            throw r9     // Catch:{ all -> 0x004a }
        L_0x0042:
            java.io.IOException r9 = new java.io.IOException     // Catch:{ all -> 0x004a }
            java.lang.String r1 = "File too large to map into memory"
            r9.<init>(r1)     // Catch:{ all -> 0x004a }
            throw r9     // Catch:{ all -> 0x004a }
        L_0x004a:
            r9 = move-exception
            r7 = r0
        L_0x004c:
            if (r0 == 0) goto L_0x0053
            r0.close()     // Catch:{ IOException -> 0x0052 }
            goto L_0x0053
        L_0x0052:
        L_0x0053:
            if (r7 == 0) goto L_0x0058
            r7.close()     // Catch:{ IOException -> 0x0058 }
        L_0x0058:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.i.a.a(java.io.File):java.nio.ByteBuffer");
    }

    public static byte[] b(ByteBuffer byteBuffer) {
        b a2 = a(byteBuffer);
        if (a2 != null && a2.f4417a == 0 && a2.f4418b == a2.f4419c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static InputStream c(ByteBuffer byteBuffer) {
        return new C0065a(byteBuffer);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(9:0|1|2|3|4|(2:6|7)|8|9|23) */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0021 */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x002b A[SYNTHETIC, Splitter:B:15:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0032 A[SYNTHETIC, Splitter:B:19:0x0032] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.nio.ByteBuffer r4, java.io.File r5) {
        /*
            r0 = 0
            r4.position(r0)
            r1 = 0
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch:{ all -> 0x0027 }
            java.lang.String r3 = "rw"
            r2.<init>(r5, r3)     // Catch:{ all -> 0x0027 }
            java.nio.channels.FileChannel r1 = r2.getChannel()     // Catch:{ all -> 0x0025 }
            r1.write(r4)     // Catch:{ all -> 0x0025 }
            r1.force(r0)     // Catch:{ all -> 0x0025 }
            r1.close()     // Catch:{ all -> 0x0025 }
            r2.close()     // Catch:{ all -> 0x0025 }
            if (r1 == 0) goto L_0x0021
            r1.close()     // Catch:{ IOException -> 0x0021 }
        L_0x0021:
            r2.close()     // Catch:{ IOException -> 0x0024 }
        L_0x0024:
            return
        L_0x0025:
            r4 = move-exception
            goto L_0x0029
        L_0x0027:
            r4 = move-exception
            r2 = r1
        L_0x0029:
            if (r1 == 0) goto L_0x0030
            r1.close()     // Catch:{ IOException -> 0x002f }
            goto L_0x0030
        L_0x002f:
        L_0x0030:
            if (r2 == 0) goto L_0x0035
            r2.close()     // Catch:{ IOException -> 0x0035 }
        L_0x0035:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.b.a.i.a.a(java.nio.ByteBuffer, java.io.File):void");
    }

    public static b a(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }
}
