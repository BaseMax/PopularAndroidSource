package io.fabric.sdk.android.services.common;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class o implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private static final Logger f6608b = Logger.getLogger(o.class.getName());

    /* renamed from: a  reason: collision with root package name */
    int f6609a;
    /* access modifiers changed from: private */
    public final RandomAccessFile c;
    private int d;
    private a e;
    private a f;
    private final byte[] g = new byte[16];

    static class a {

        /* renamed from: a  reason: collision with root package name */
        static final a f6612a = new a(0, 0);

        /* renamed from: b  reason: collision with root package name */
        final int f6613b;
        final int c;

        a(int i, int i2) {
            this.f6613b = i;
            this.c = i2;
        }

        public final String toString() {
            return getClass().getSimpleName() + "[position = " + this.f6613b + ", length = " + this.c + "]";
        }
    }

    final class b extends InputStream {

        /* renamed from: b  reason: collision with root package name */
        private int f6615b;
        private int c;

        /* synthetic */ b(o oVar, a aVar, byte b2) {
            this(aVar);
        }

        private b(a aVar) {
            this.f6615b = o.this.b(aVar.f6613b + 4);
            this.c = aVar.c;
        }

        public final int read(byte[] bArr, int i, int i2) throws IOException {
            Object unused = o.b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.c;
            if (i3 <= 0) {
                return -1;
            }
            if (i2 > i3) {
                i2 = i3;
            }
            o.this.b(this.f6615b, bArr, i, i2);
            this.f6615b = o.this.b(this.f6615b + i2);
            this.c -= i2;
            return i2;
        }

        public final int read() throws IOException {
            if (this.c == 0) {
                return -1;
            }
            o.this.c.seek((long) this.f6615b);
            int read = o.this.c.read();
            this.f6615b = o.this.b(this.f6615b + 1);
            this.c--;
            return read;
        }
    }

    public interface c {
        void read(InputStream inputStream, int i) throws IOException;
    }

    /* JADX INFO: finally extract failed */
    public o(File file) throws IOException {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile a2 = a(file2);
            try {
                a2.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                a2.seek(0);
                byte[] bArr = new byte[16];
                a(bArr, 4096, 0, 0, 0);
                a2.write(bArr);
                a2.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                a2.close();
                throw th;
            }
        }
        this.c = a(file);
        this.c.seek(0);
        this.c.readFully(this.g);
        this.f6609a = a(this.g, 0);
        if (((long) this.f6609a) <= this.c.length()) {
            this.d = a(this.g, 4);
            int a3 = a(this.g, 8);
            int a4 = a(this.g, 12);
            this.e = a(a3);
            this.f = a(a4);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f6609a + ", Actual length: " + this.c.length());
    }

    private static void a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    private static void a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            a(bArr, i, iArr[i2]);
            i += 4;
        }
    }

    private static int a(byte[] bArr, int i) {
        return ((bArr[i] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 24) + ((bArr[i + 1] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 16) + ((bArr[i + 2] & com.pusher.java_websocket.drafts.c.END_OF_FRAME) << 8) + (bArr[i + 3] & com.pusher.java_websocket.drafts.c.END_OF_FRAME);
    }

    private void a(int i, int i2, int i3, int i4) throws IOException {
        a(this.g, i, i2, i3, i4);
        this.c.seek(0);
        this.c.write(this.g);
    }

    private a a(int i) throws IOException {
        if (i == 0) {
            return a.f6612a;
        }
        this.c.seek((long) i);
        return new a(i, this.c.readInt());
    }

    private static RandomAccessFile a(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    /* access modifiers changed from: private */
    public int b(int i) {
        int i2 = this.f6609a;
        return i < i2 ? i : (i + 16) - i2;
    }

    private void a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int b2 = b(i);
        int i4 = b2 + i3;
        int i5 = this.f6609a;
        if (i4 <= i5) {
            this.c.seek((long) b2);
            this.c.write(bArr, i2, i3);
            return;
        }
        int i6 = i5 - b2;
        this.c.seek((long) b2);
        this.c.write(bArr, i2, i6);
        this.c.seek(16);
        this.c.write(bArr, i2 + i6, i3 - i6);
    }

    /* access modifiers changed from: private */
    public void b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int b2 = b(i);
        int i4 = b2 + i3;
        int i5 = this.f6609a;
        if (i4 <= i5) {
            this.c.seek((long) b2);
            this.c.readFully(bArr, i2, i3);
            return;
        }
        int i6 = i5 - b2;
        this.c.seek((long) b2);
        this.c.readFully(bArr, i2, i6);
        this.c.seek(16);
        this.c.readFully(bArr, i2 + i6, i3 - i6);
    }

    public void add(byte[] bArr) throws IOException {
        add(bArr, 0, bArr.length);
    }

    public synchronized void add(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        b(bArr, "buffer");
        if ((i | i2) < 0 || i2 > bArr.length - i) {
            throw new IndexOutOfBoundsException();
        }
        c(i2);
        boolean isEmpty = isEmpty();
        if (isEmpty) {
            i3 = 16;
        } else {
            i3 = b(this.f.f6613b + 4 + this.f.c);
        }
        a aVar = new a(i3, i2);
        a(this.g, 0, i2);
        a(aVar.f6613b, this.g, 0, 4);
        a(aVar.f6613b + 4, bArr, i, i2);
        a(this.f6609a, this.d + 1, isEmpty ? aVar.f6613b : this.e.f6613b, aVar.f6613b);
        this.f = aVar;
        this.d++;
        if (isEmpty) {
            this.e = this.f;
        }
    }

    public int usedBytes() {
        if (this.d == 0) {
            return 16;
        }
        if (this.f.f6613b >= this.e.f6613b) {
            return (this.f.f6613b - this.e.f6613b) + 4 + this.f.c + 16;
        }
        return (((this.f.f6613b + 4) + this.f.c) + this.f6609a) - this.e.f6613b;
    }

    public synchronized boolean isEmpty() {
        return this.d == 0;
    }

    private void d(int i) throws IOException {
        this.c.setLength((long) i);
        this.c.getChannel().force(true);
    }

    public synchronized byte[] peek() throws IOException {
        if (isEmpty()) {
            return null;
        }
        int i = this.e.c;
        byte[] bArr = new byte[i];
        b(this.e.f6613b + 4, bArr, 0, i);
        return bArr;
    }

    public synchronized void peek(c cVar) throws IOException {
        if (this.d > 0) {
            cVar.read(new b(this, this.e, (byte) 0), this.e.c);
        }
    }

    public synchronized void forEach(c cVar) throws IOException {
        int i = this.e.f6613b;
        for (int i2 = 0; i2 < this.d; i2++) {
            a a2 = a(i);
            cVar.read(new b(this, a2, (byte) 0), a2.c);
            i = b(a2.f6613b + 4 + a2.c);
        }
    }

    /* access modifiers changed from: private */
    public static <T> T b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public synchronized int size() {
        return this.d;
    }

    public synchronized void remove() throws IOException {
        if (isEmpty()) {
            throw new NoSuchElementException();
        } else if (this.d == 1) {
            clear();
        } else {
            int b2 = b(this.e.f6613b + 4 + this.e.c);
            b(b2, this.g, 0, 4);
            int a2 = a(this.g, 0);
            a(this.f6609a, this.d - 1, b2, this.f.f6613b);
            this.d--;
            this.e = new a(b2, a2);
        }
    }

    public synchronized void clear() throws IOException {
        a(4096, 0, 0, 0);
        this.d = 0;
        this.e = a.f6612a;
        this.f = a.f6612a;
        if (this.f6609a > 4096) {
            d(4096);
        }
        this.f6609a = 4096;
    }

    public synchronized void close() throws IOException {
        this.c.close();
    }

    public boolean hasSpaceFor(int i, int i2) {
        return (usedBytes() + 4) + i <= i2;
    }

    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f6609a);
        sb.append(", size=");
        sb.append(this.d);
        sb.append(", first=");
        sb.append(this.e);
        sb.append(", last=");
        sb.append(this.f);
        sb.append(", element lengths=[");
        try {
            forEach(new c() {

                /* renamed from: a  reason: collision with root package name */
                boolean f6610a = true;

                public final void read(InputStream inputStream, int i) throws IOException {
                    if (this.f6610a) {
                        this.f6610a = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(i);
                }
            });
        } catch (IOException e2) {
            f6608b.log(Level.WARNING, "read error", e2);
        }
        sb.append("]]");
        return sb.toString();
    }

    private void c(int i) throws IOException {
        int i2 = i + 4;
        int usedBytes = this.f6609a - usedBytes();
        if (usedBytes < i2) {
            int i3 = this.f6609a;
            do {
                usedBytes += i3;
                i3 <<= 1;
            } while (usedBytes < i2);
            d(i3);
            if (b(this.f.f6613b + 4 + this.f.c) < this.e.f6613b) {
                FileChannel channel = this.c.getChannel();
                channel.position((long) this.f6609a);
                long j = (long) (r11 - 4);
                if (channel.transferTo(16, j, channel) != j) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.f.f6613b < this.e.f6613b) {
                int i4 = (this.f6609a + this.f.f6613b) - 16;
                a(i3, this.d, this.e.f6613b, i4);
                this.f = new a(i4, this.f.c);
            } else {
                a(i3, this.d, this.e.f6613b, this.f.f6613b);
            }
            this.f6609a = i3;
        }
    }
}
