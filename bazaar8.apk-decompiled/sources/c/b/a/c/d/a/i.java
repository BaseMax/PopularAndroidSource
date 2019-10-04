package c.b.a.c.d.a;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* compiled from: DefaultImageHeaderParser */
public final class i implements ImageHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    public static final byte[] f4162a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f4163b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* compiled from: DefaultImageHeaderParser */
    private static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public final ByteBuffer f4164a;

        public a(ByteBuffer byteBuffer) {
            this.f4164a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public int a() {
            return ((c() << 8) & 65280) | (c() & 255);
        }

        public short b() {
            return (short) (c() & 255);
        }

        public int c() {
            if (this.f4164a.remaining() < 1) {
                return -1;
            }
            return this.f4164a.get();
        }

        public long skip(long j2) {
            int min = (int) Math.min((long) this.f4164a.remaining(), j2);
            ByteBuffer byteBuffer = this.f4164a;
            byteBuffer.position(byteBuffer.position() + min);
            return (long) min;
        }

        public int a(byte[] bArr, int i2) {
            int min = Math.min(i2, this.f4164a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f4164a.get(bArr, 0, min);
            return min;
        }
    }

    /* compiled from: DefaultImageHeaderParser */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final ByteBuffer f4165a;

        public b(byte[] bArr, int i2) {
            this.f4165a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i2);
        }

        public void a(ByteOrder byteOrder) {
            this.f4165a.order(byteOrder);
        }

        public int b(int i2) {
            if (a(i2, 4)) {
                return this.f4165a.getInt(i2);
            }
            return -1;
        }

        public int a() {
            return this.f4165a.remaining();
        }

        public short a(int i2) {
            if (a(i2, 2)) {
                return this.f4165a.getShort(i2);
            }
            return -1;
        }

        public final boolean a(int i2, int i3) {
            return this.f4165a.remaining() - i2 >= i3;
        }
    }

    /* compiled from: DefaultImageHeaderParser */
    private interface c {
        int a();

        int a(byte[] bArr, int i2);

        short b();

        int c();

        long skip(long j2);
    }

    /* compiled from: DefaultImageHeaderParser */
    private static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        public final InputStream f4166a;

        public d(InputStream inputStream) {
            this.f4166a = inputStream;
        }

        public int a() {
            return ((this.f4166a.read() << 8) & 65280) | (this.f4166a.read() & 255);
        }

        public short b() {
            return (short) (this.f4166a.read() & 255);
        }

        public int c() {
            return this.f4166a.read();
        }

        public long skip(long j2) {
            if (j2 < 0) {
                return 0;
            }
            long j3 = j2;
            while (j3 > 0) {
                long skip = this.f4166a.skip(j3);
                if (skip <= 0) {
                    if (this.f4166a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j3 -= skip;
            }
            return j2 - j3;
        }

        public int a(byte[] bArr, int i2) {
            int i3 = i2;
            while (i3 > 0) {
                int read = this.f4166a.read(bArr, i2 - i3, i3);
                if (read == -1) {
                    break;
                }
                i3 -= read;
            }
            return i2 - i3;
        }
    }

    public static int a(int i2, int i3) {
        return i2 + 2 + (i3 * 12);
    }

    public static boolean a(int i2) {
        return (i2 & 65496) == 65496 || i2 == 19789 || i2 == 18761;
    }

    public ImageHeaderParser.ImageType a(InputStream inputStream) {
        c.b.a.i.i.a(inputStream);
        return a((c) new d(inputStream));
    }

    public final int b(c cVar) {
        short b2;
        int a2;
        long j2;
        do {
            if (cVar.b() != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + r0);
                }
                return -1;
            }
            b2 = cVar.b();
            if (b2 == 218) {
                return -1;
            }
            if (b2 == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            a2 = cVar.a() - 2;
            if (b2 == 225) {
                return a2;
            }
            j2 = (long) a2;
        } while (cVar.skip(j2) == j2);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + b2 + ", wanted to skip: " + a2 + ", but actually skipped: " + r7);
        }
        return -1;
    }

    public ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        c.b.a.i.i.a(byteBuffer);
        return a((c) new a(byteBuffer));
    }

    public int a(InputStream inputStream, c.b.a.c.b.a.b bVar) {
        c.b.a.i.i.a(inputStream);
        d dVar = new d(inputStream);
        c.b.a.i.i.a(bVar);
        return a((c) dVar, bVar);
    }

    public final ImageHeaderParser.ImageType a(c cVar) {
        int a2 = cVar.a();
        if (a2 == 65496) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int a3 = ((a2 << 16) & -65536) | (cVar.a() & 65535);
        if (a3 == -1991225785) {
            cVar.skip(21);
            return cVar.c() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        } else if ((a3 >> 8) == 4671814) {
            return ImageHeaderParser.ImageType.GIF;
        } else {
            if (a3 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            cVar.skip(4);
            if ((((cVar.a() << 16) & -65536) | (cVar.a() & 65535)) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int a4 = ((cVar.a() << 16) & -65536) | (cVar.a() & 65535);
            if ((a4 & -256) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i2 = a4 & 255;
            if (i2 == 88) {
                cVar.skip(4);
                return (cVar.c() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            } else if (i2 != 76) {
                return ImageHeaderParser.ImageType.WEBP;
            } else {
                cVar.skip(4);
                return (cVar.c() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
        }
    }

    public final int a(c cVar, c.b.a.c.b.a.b bVar) {
        int a2 = cVar.a();
        if (!a(a2)) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + a2);
            }
            return -1;
        }
        int b2 = b(cVar);
        if (b2 == -1) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
            }
            return -1;
        }
        byte[] bArr = (byte[]) bVar.b(b2, byte[].class);
        try {
            return a(cVar, bArr, b2);
        } finally {
            bVar.put(bArr);
        }
    }

    public final int a(c cVar, byte[] bArr, int i2) {
        int a2 = cVar.a(bArr, i2);
        if (a2 != i2) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i2 + ", actually read: " + a2);
            }
            return -1;
        } else if (a(bArr, i2)) {
            return a(new b(bArr, i2));
        } else {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
    }

    public final boolean a(byte[] bArr, int i2) {
        boolean z = bArr != null && i2 > f4162a.length;
        if (!z) {
            return z;
        }
        int i3 = 0;
        while (true) {
            byte[] bArr2 = f4162a;
            if (i3 >= bArr2.length) {
                return z;
            }
            if (bArr[i3] != bArr2[i3]) {
                return false;
            }
            i3++;
        }
    }

    public static int a(b bVar) {
        ByteOrder byteOrder;
        short a2 = bVar.a(6);
        if (a2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (a2 != 19789) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + a2);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.a(byteOrder);
        int b2 = bVar.b(10) + 6;
        short a3 = bVar.a(b2);
        for (int i2 = 0; i2 < a3; i2++) {
            int a4 = a(b2, i2);
            short a5 = bVar.a(a4);
            if (a5 == 274) {
                short a6 = bVar.a(a4 + 2);
                if (a6 >= 1 && a6 <= 12) {
                    int b3 = bVar.b(a4 + 4);
                    if (b3 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got tagIndex=" + i2 + " tagType=" + a5 + " formatCode=" + a6 + " componentCount=" + b3);
                        }
                        int i3 = b3 + f4163b[a6];
                        if (i3 <= 4) {
                            int i4 = a4 + 8;
                            if (i4 < 0 || i4 > bVar.a()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i4 + " tagType=" + a5);
                                }
                            } else if (i3 >= 0 && i3 + i4 <= bVar.a()) {
                                return bVar.a(i4);
                            } else {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + a5);
                                }
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + a6);
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Got invalid format code = " + a6);
                }
            }
        }
        return -1;
    }
}
