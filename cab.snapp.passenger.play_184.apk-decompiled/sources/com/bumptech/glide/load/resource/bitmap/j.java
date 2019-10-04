package com.bumptech.glide.load.resource.bitmap;

import android.util.Log;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.MotionEventCompat;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

public final class j implements ImageHeaderParser {

    /* renamed from: a  reason: collision with root package name */
    static final byte[] f2346a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f2347b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f2348a;

        a(ByteBuffer byteBuffer) {
            this.f2348a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public final int getUInt16() {
            return ((getByte() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (getByte() & 255);
        }

        public final short getUInt8() {
            return (short) (getByte() & 255);
        }

        public final long skip(long j) {
            int min = (int) Math.min((long) this.f2348a.remaining(), j);
            ByteBuffer byteBuffer = this.f2348a;
            byteBuffer.position(byteBuffer.position() + min);
            return (long) min;
        }

        public final int read(byte[] bArr, int i) {
            int min = Math.min(i, this.f2348a.remaining());
            if (min == 0) {
                return -1;
            }
            this.f2348a.get(bArr, 0, min);
            return min;
        }

        public final int getByte() {
            if (this.f2348a.remaining() <= 0) {
                return -1;
            }
            return this.f2348a.get();
        }
    }

    static final class b {

        /* renamed from: a  reason: collision with root package name */
        final ByteBuffer f2349a;

        b(byte[] bArr, int i) {
            this.f2349a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* access modifiers changed from: package-private */
        public final int a(int i) {
            if (a(i, 4)) {
                return this.f2349a.getInt(i);
            }
            return -1;
        }

        /* access modifiers changed from: package-private */
        public final short b(int i) {
            if (a(i, 2)) {
                return this.f2349a.getShort(i);
            }
            return -1;
        }

        private boolean a(int i, int i2) {
            return this.f2349a.remaining() - i >= i2;
        }
    }

    interface c {
        int getByte() throws IOException;

        int getUInt16() throws IOException;

        short getUInt8() throws IOException;

        int read(byte[] bArr, int i) throws IOException;

        long skip(long j) throws IOException;
    }

    static final class d implements c {

        /* renamed from: a  reason: collision with root package name */
        private final InputStream f2350a;

        d(InputStream inputStream) {
            this.f2350a = inputStream;
        }

        public final int getUInt16() throws IOException {
            return ((this.f2350a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.f2350a.read() & 255);
        }

        public final short getUInt8() throws IOException {
            return (short) (this.f2350a.read() & 255);
        }

        public final long skip(long j) throws IOException {
            if (j < 0) {
                return 0;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.f2350a.skip(j2);
                if (skip <= 0) {
                    if (this.f2350a.read() == -1) {
                        break;
                    }
                    skip = 1;
                }
                j2 -= skip;
            }
            return j - j2;
        }

        public final int read(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int read = this.f2350a.read(bArr, i - i2, i2);
                if (read == -1) {
                    break;
                }
                i2 -= read;
            }
            return i - i2;
        }

        public final int getByte() throws IOException {
            return this.f2350a.read();
        }
    }

    public final ImageHeaderParser.ImageType getType(InputStream inputStream) throws IOException {
        return a((c) new d((InputStream) com.bumptech.glide.g.j.checkNotNull(inputStream)));
    }

    public final ImageHeaderParser.ImageType getType(ByteBuffer byteBuffer) throws IOException {
        return a((c) new a((ByteBuffer) com.bumptech.glide.g.j.checkNotNull(byteBuffer)));
    }

    public final int getOrientation(InputStream inputStream, com.bumptech.glide.load.b.a.b bVar) throws IOException {
        return a((c) new d((InputStream) com.bumptech.glide.g.j.checkNotNull(inputStream)), (com.bumptech.glide.load.b.a.b) com.bumptech.glide.g.j.checkNotNull(bVar));
    }

    public final int getOrientation(ByteBuffer byteBuffer, com.bumptech.glide.load.b.a.b bVar) throws IOException {
        return a((c) new a((ByteBuffer) com.bumptech.glide.g.j.checkNotNull(byteBuffer)), (com.bumptech.glide.load.b.a.b) com.bumptech.glide.g.j.checkNotNull(bVar));
    }

    private static ImageHeaderParser.ImageType a(c cVar) throws IOException {
        int uInt16 = cVar.getUInt16();
        if (uInt16 == 65496) {
            return ImageHeaderParser.ImageType.JPEG;
        }
        int uInt162 = ((uInt16 << 16) & SupportMenu.CATEGORY_MASK) | (cVar.getUInt16() & 65535);
        if (uInt162 == -1991225785) {
            cVar.skip(21);
            return cVar.getByte() >= 3 ? ImageHeaderParser.ImageType.PNG_A : ImageHeaderParser.ImageType.PNG;
        } else if ((uInt162 >> 8) == 4671814) {
            return ImageHeaderParser.ImageType.GIF;
        } else {
            if (uInt162 != 1380533830) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            cVar.skip(4);
            if ((((cVar.getUInt16() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.getUInt16() & 65535)) != 1464156752) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int uInt163 = ((cVar.getUInt16() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.getUInt16() & 65535);
            if ((uInt163 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                return ImageHeaderParser.ImageType.UNKNOWN;
            }
            int i = uInt163 & 255;
            if (i == 88) {
                cVar.skip(4);
                return (cVar.getByte() & 16) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            } else if (i != 76) {
                return ImageHeaderParser.ImageType.WEBP;
            } else {
                cVar.skip(4);
                return (cVar.getByte() & 8) != 0 ? ImageHeaderParser.ImageType.WEBP_A : ImageHeaderParser.ImageType.WEBP;
            }
        }
    }

    private static int a(c cVar, com.bumptech.glide.load.b.a.b bVar) throws IOException {
        int i;
        int uInt16 = cVar.getUInt16();
        int i2 = -1;
        if (!((uInt16 & 65496) == 65496 || uInt16 == 19789 || uInt16 == 18761)) {
            return -1;
        }
        while (true) {
            if (cVar.getUInt8() == 255) {
                short uInt8 = cVar.getUInt8();
                if (uInt8 != 218 && uInt8 != 217) {
                    i = cVar.getUInt16() - 2;
                    if (uInt8 == 225) {
                        break;
                    }
                    long j = (long) i;
                    long skip = cVar.skip(j);
                    if (skip != j) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sb = new StringBuilder("Unable to skip enough data, type: ");
                            sb.append(uInt8);
                            sb.append(", wanted to skip: ");
                            sb.append(i);
                            sb.append(", but actually skipped: ");
                            sb.append(skip);
                        }
                    }
                } else {
                    break;
                }
            } else {
                break;
            }
        }
        i = -1;
        if (i == -1) {
            return -1;
        }
        byte[] bArr = (byte[]) bVar.get(i, byte[].class);
        try {
            int read = cVar.read(bArr, i);
            if (read != i) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    StringBuilder sb2 = new StringBuilder("Unable to read exif segment data, length: ");
                    sb2.append(i);
                    sb2.append(", actually read: ");
                    sb2.append(read);
                }
            } else if (a(bArr, i)) {
                i2 = a(new b(bArr, i));
            }
            return i2;
        } finally {
            bVar.put(bArr);
        }
    }

    private static boolean a(byte[] bArr, int i) {
        boolean z = bArr != null && i > f2346a.length;
        if (!z) {
            return z;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f2346a;
            if (i2 >= bArr2.length) {
                return z;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    private static int a(b bVar) {
        ByteOrder byteOrder;
        short b2 = bVar.b(6);
        if (b2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else if (b2 != 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.f2349a.order(byteOrder);
        int a2 = bVar.a(10) + 6;
        short b3 = bVar.b(a2);
        for (int i = 0; i < b3; i++) {
            int i2 = a2 + 2 + (i * 12);
            short b4 = bVar.b(i2);
            if (b4 == 274) {
                short b5 = bVar.b(i2 + 2);
                if (b5 <= 0 || b5 > 12) {
                    boolean isLoggable = Log.isLoggable("DfltImageHeaderParser", 3);
                } else {
                    int a3 = bVar.a(i2 + 4);
                    if (a3 < 0) {
                        boolean isLoggable2 = Log.isLoggable("DfltImageHeaderParser", 3);
                    } else {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sb = new StringBuilder("Got tagIndex=");
                            sb.append(i);
                            sb.append(" tagType=");
                            sb.append(b4);
                            sb.append(" formatCode=");
                            sb.append(b5);
                            sb.append(" componentCount=");
                            sb.append(a3);
                        }
                        int i3 = a3 + f2347b[b5];
                        if (i3 > 4) {
                            boolean isLoggable3 = Log.isLoggable("DfltImageHeaderParser", 3);
                        } else {
                            int i4 = i2 + 8;
                            if (i4 < 0 || i4 > bVar.f2349a.remaining()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    StringBuilder sb2 = new StringBuilder("Illegal tagValueOffset=");
                                    sb2.append(i4);
                                    sb2.append(" tagType=");
                                    sb2.append(b4);
                                }
                            } else if (i3 >= 0 && i3 + i4 <= bVar.f2349a.remaining()) {
                                return bVar.b(i4);
                            } else {
                                boolean isLoggable4 = Log.isLoggable("DfltImageHeaderParser", 3);
                            }
                        }
                    }
                }
            }
        }
        return -1;
    }
}
