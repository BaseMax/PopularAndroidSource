package e.a.a.a.a.b;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: QueueFile */
public class z implements Closeable {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f13708a = Logger.getLogger(z.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public final RandomAccessFile f13709b;

    /* renamed from: c  reason: collision with root package name */
    public int f13710c;

    /* renamed from: d  reason: collision with root package name */
    public int f13711d;

    /* renamed from: e  reason: collision with root package name */
    public a f13712e;

    /* renamed from: f  reason: collision with root package name */
    public a f13713f;

    /* renamed from: g  reason: collision with root package name */
    public final byte[] f13714g = new byte[16];

    /* compiled from: QueueFile */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f13715a = new a(0, 0);

        /* renamed from: b  reason: collision with root package name */
        public final int f13716b;

        /* renamed from: c  reason: collision with root package name */
        public final int f13717c;

        public a(int i2, int i3) {
            this.f13716b = i2;
            this.f13717c = i3;
        }

        public String toString() {
            return a.class.getSimpleName() + "[position = " + this.f13716b + ", length = " + this.f13717c + "]";
        }
    }

    /* compiled from: QueueFile */
    private final class b extends InputStream {

        /* renamed from: a  reason: collision with root package name */
        public int f13718a;

        /* renamed from: b  reason: collision with root package name */
        public int f13719b;

        public /* synthetic */ b(z zVar, a aVar, y yVar) {
            this(aVar);
        }

        public int read(byte[] bArr, int i2, int i3) {
            Object unused = z.b(bArr, "buffer");
            if ((i2 | i3) < 0 || i3 > bArr.length - i2) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i4 = this.f13719b;
            if (i4 <= 0) {
                return -1;
            }
            if (i3 > i4) {
                i3 = i4;
            }
            z.this.a(this.f13718a, bArr, i2, i3);
            this.f13718a = z.this.e(this.f13718a + i3);
            this.f13719b -= i3;
            return i3;
        }

        public b(a aVar) {
            this.f13718a = z.this.e(aVar.f13716b + 4);
            this.f13719b = aVar.f13717c;
        }

        public int read() {
            if (this.f13719b == 0) {
                return -1;
            }
            z.this.f13709b.seek((long) this.f13718a);
            int read = z.this.f13709b.read();
            this.f13718a = z.this.e(this.f13718a + 1);
            this.f13719b--;
            return read;
        }
    }

    /* compiled from: QueueFile */
    public interface c {
        void read(InputStream inputStream, int i2);
    }

    public z(File file) {
        if (!file.exists()) {
            a(file);
        }
        this.f13709b = b(file);
        u();
    }

    public static void b(byte[] bArr, int i2, int i3) {
        bArr[i2] = (byte) (i3 >> 24);
        bArr[i2 + 1] = (byte) (i3 >> 16);
        bArr[i2 + 2] = (byte) (i3 >> 8);
        bArr[i2 + 3] = (byte) i3;
    }

    public final a c(int i2) {
        if (i2 == 0) {
            return a.f13715a;
        }
        this.f13709b.seek((long) i2);
        return new a(i2, this.f13709b.readInt());
    }

    public synchronized void close() {
        this.f13709b.close();
    }

    public final void d(int i2) {
        this.f13709b.setLength((long) i2);
        this.f13709b.getChannel().force(true);
    }

    public final int e(int i2) {
        int i3 = this.f13710c;
        return i2 < i3 ? i2 : (i2 + 16) - i3;
    }

    public synchronized void s() {
        a((int) CodedOutputStream.DEFAULT_BUFFER_SIZE, 0, 0, 0);
        this.f13711d = 0;
        this.f13712e = a.f13715a;
        this.f13713f = a.f13715a;
        if (this.f13710c > 4096) {
            d(CodedOutputStream.DEFAULT_BUFFER_SIZE);
        }
        this.f13710c = CodedOutputStream.DEFAULT_BUFFER_SIZE;
    }

    public synchronized boolean t() {
        return this.f13711d == 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(z.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f13710c);
        sb.append(", size=");
        sb.append(this.f13711d);
        sb.append(", first=");
        sb.append(this.f13712e);
        sb.append(", last=");
        sb.append(this.f13713f);
        sb.append(", element lengths=[");
        try {
            a((c) new y(this, sb));
        } catch (IOException e2) {
            f13708a.log(Level.WARNING, "read error", e2);
        }
        sb.append("]]");
        return sb.toString();
    }

    public final void u() {
        this.f13709b.seek(0);
        this.f13709b.readFully(this.f13714g);
        this.f13710c = a(this.f13714g, 0);
        if (((long) this.f13710c) <= this.f13709b.length()) {
            this.f13711d = a(this.f13714g, 4);
            int a2 = a(this.f13714g, 8);
            int a3 = a(this.f13714g, 12);
            this.f13712e = c(a2);
            this.f13713f = c(a3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f13710c + ", Actual length: " + this.f13709b.length());
    }

    public final int v() {
        return this.f13710c - x();
    }

    public synchronized void w() {
        if (t()) {
            throw new NoSuchElementException();
        } else if (this.f13711d == 1) {
            s();
        } else {
            int e2 = e(this.f13712e.f13716b + 4 + this.f13712e.f13717c);
            a(e2, this.f13714g, 0, 4);
            int a2 = a(this.f13714g, 0);
            a(this.f13710c, this.f13711d - 1, e2, this.f13713f.f13716b);
            this.f13711d--;
            this.f13712e = new a(e2, a2);
        }
    }

    public int x() {
        if (this.f13711d == 0) {
            return 16;
        }
        a aVar = this.f13713f;
        int i2 = aVar.f13716b;
        int i3 = this.f13712e.f13716b;
        if (i2 >= i3) {
            return (i2 - i3) + 4 + aVar.f13717c + 16;
        }
        return (((i2 + 4) + aVar.f13717c) + this.f13710c) - i3;
    }

    public static void a(byte[] bArr, int... iArr) {
        int i2 = 0;
        for (int b2 : iArr) {
            b(bArr, i2, b2);
            i2 += 4;
        }
    }

    public static RandomAccessFile b(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    public final void b(int i2, byte[] bArr, int i3, int i4) {
        int e2 = e(i2);
        int i5 = e2 + i4;
        int i6 = this.f13710c;
        if (i5 <= i6) {
            this.f13709b.seek((long) e2);
            this.f13709b.write(bArr, i3, i4);
            return;
        }
        int i7 = i6 - e2;
        this.f13709b.seek((long) e2);
        this.f13709b.write(bArr, i3, i7);
        this.f13709b.seek(16);
        this.f13709b.write(bArr, i3 + i7, i4 - i7);
    }

    public static int a(byte[] bArr, int i2) {
        return ((bArr[i2] & 255) << 24) + ((bArr[i2 + 1] & 255) << 16) + ((bArr[i2 + 2] & 255) << 8) + (bArr[i2 + 3] & 255);
    }

    public final void a(int i2, int i3, int i4, int i5) {
        a(this.f13714g, i2, i3, i4, i5);
        this.f13709b.seek(0);
        this.f13709b.write(this.f13714g);
    }

    /* JADX INFO: finally extract failed */
    public static void a(File file) {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile b2 = b(file2);
        try {
            b2.setLength(4096);
            b2.seek(0);
            byte[] bArr = new byte[16];
            a(bArr, 4096, 0, 0, 0);
            b2.write(bArr);
            b2.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            b2.close();
            throw th;
        }
    }

    public final void b(int i2) {
        int i3 = i2 + 4;
        int v = v();
        if (v < i3) {
            int i4 = this.f13710c;
            do {
                v += i4;
                i4 <<= 1;
            } while (v < i3);
            d(i4);
            a aVar = this.f13713f;
            if (e(aVar.f13716b + 4 + aVar.f13717c) < this.f13712e.f13716b) {
                FileChannel channel = this.f13709b.getChannel();
                channel.position((long) this.f13710c);
                long j2 = (long) (r11 - 4);
                if (channel.transferTo(16, j2, channel) != j2) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            int i5 = this.f13713f.f13716b;
            int i6 = this.f13712e.f13716b;
            if (i5 < i6) {
                int i7 = (this.f13710c + i5) - 16;
                a(i4, this.f13711d, i6, i7);
                this.f13713f = new a(i7, this.f13713f.f13717c);
            } else {
                a(i4, this.f13711d, i6, i5);
            }
            this.f13710c = i4;
        }
    }

    public final void a(int i2, byte[] bArr, int i3, int i4) {
        int e2 = e(i2);
        int i5 = e2 + i4;
        int i6 = this.f13710c;
        if (i5 <= i6) {
            this.f13709b.seek((long) e2);
            this.f13709b.readFully(bArr, i3, i4);
            return;
        }
        int i7 = i6 - e2;
        this.f13709b.seek((long) e2);
        this.f13709b.readFully(bArr, i3, i7);
        this.f13709b.seek(16);
        this.f13709b.readFully(bArr, i3 + i7, i4 - i7);
    }

    public static <T> T b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    public void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    public synchronized void a(byte[] bArr, int i2, int i3) {
        int i4;
        b(bArr, "buffer");
        if ((i2 | i3) < 0 || i3 > bArr.length - i2) {
            throw new IndexOutOfBoundsException();
        }
        b(i3);
        boolean t = t();
        if (t) {
            i4 = 16;
        } else {
            i4 = e(this.f13713f.f13716b + 4 + this.f13713f.f13717c);
        }
        a aVar = new a(i4, i3);
        b(this.f13714g, 0, i3);
        b(aVar.f13716b, this.f13714g, 0, 4);
        b(aVar.f13716b + 4, bArr, i2, i3);
        a(this.f13710c, this.f13711d + 1, t ? aVar.f13716b : this.f13712e.f13716b, aVar.f13716b);
        this.f13713f = aVar;
        this.f13711d++;
        if (t) {
            this.f13712e = this.f13713f;
        }
    }

    public synchronized void a(c cVar) {
        int i2 = this.f13712e.f13716b;
        for (int i3 = 0; i3 < this.f13711d; i3++) {
            a c2 = c(i2);
            cVar.read(new b(this, c2, null), c2.f13717c);
            i2 = e(c2.f13716b + 4 + c2.f13717c);
        }
    }

    public boolean a(int i2, int i3) {
        return (x() + 4) + i2 <= i3;
    }
}
