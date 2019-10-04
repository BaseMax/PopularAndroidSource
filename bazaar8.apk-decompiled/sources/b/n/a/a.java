package b.n.a;

import android.content.res.AssetManager;
import android.util.Log;
import com.crashlytics.android.answers.BackgroundManager;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;

/* compiled from: ExifInterface */
public class a {
    public static final HashMap<Integer, c>[] A;
    public static final HashMap<String, c>[] B;
    public static final HashSet<String> C = new HashSet<>(Arrays.asList(new String[]{"FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"}));
    public static final HashMap<Integer, Integer> D = new HashMap<>();
    public static final Charset E = Charset.forName("US-ASCII");
    public static final byte[] F = "Exif\u0000\u0000".getBytes(E);
    public static final Pattern G = Pattern.compile(".*[1-9].*");
    public static final Pattern H = Pattern.compile("^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$");

    /* renamed from: a  reason: collision with root package name */
    public static final List<Integer> f2949a = Arrays.asList(new Integer[]{1, 6, 3, 8});

    /* renamed from: b  reason: collision with root package name */
    public static final List<Integer> f2950b = Arrays.asList(new Integer[]{2, 7, 4, 5});

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f2951c = {8, 8, 8};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f2952d = {4};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f2953e = {8};

    /* renamed from: f  reason: collision with root package name */
    public static final byte[] f2954f = {-1, -40, -1};

    /* renamed from: g  reason: collision with root package name */
    public static final byte[] f2955g = {79, 76, 89, 77, 80, 0};

    /* renamed from: h  reason: collision with root package name */
    public static final byte[] f2956h = {79, 76, 89, 77, 80, 85, 83, 0, 73, 73};

    /* renamed from: i  reason: collision with root package name */
    public static SimpleDateFormat f2957i = new SimpleDateFormat("yyyy:MM:dd HH:mm:ss");

    /* renamed from: j  reason: collision with root package name */
    public static final String[] f2958j = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE"};

    /* renamed from: k  reason: collision with root package name */
    public static final int[] f2959k = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};

    /* renamed from: l  reason: collision with root package name */
    public static final byte[] f2960l = {65, 83, 67, 73, 73, 0, 0, 0};
    public static final c[] m = {new c("NewSubfileType", 254, 4), new c("SubfileType", 255, 4), new c("ImageWidth", 256, 3, 4), new c("ImageLength", 257, 3, 4), new c("BitsPerSample", 258, 3), new c("Compression", 259, 3), new c("PhotometricInterpretation", 262, 3), new c("ImageDescription", 270, 2), new c("Make", 271, 2), new c("Model", 272, 2), new c("StripOffsets", 273, 3, 4), new c("Orientation", 274, 3), new c("SamplesPerPixel", 277, 3), new c("RowsPerStrip", 278, 3, 4), new c("StripByteCounts", 279, 3, 4), new c("XResolution", 282, 5), new c("YResolution", 283, 5), new c("PlanarConfiguration", 284, 3), new c("ResolutionUnit", 296, 3), new c("TransferFunction", 301, 3), new c("Software", 305, 2), new c("DateTime", 306, 2), new c("Artist", 315, 2), new c("WhitePoint", 318, 5), new c("PrimaryChromaticities", 319, 5), new c("SubIFDPointer", 330, 4), new c("JPEGInterchangeFormat", 513, 4), new c("JPEGInterchangeFormatLength", 514, 4), new c("YCbCrCoefficients", 529, 5), new c("YCbCrSubSampling", 530, 3), new c("YCbCrPositioning", 531, 3), new c("ReferenceBlackWhite", 532, 5), new c("Copyright", 33432, 2), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("SensorTopBorder", 4, 4), new c("SensorLeftBorder", 5, 4), new c("SensorBottomBorder", 6, 4), new c("SensorRightBorder", 7, 4), new c("ISO", 23, 3), new c("JpgFromRaw", 46, 7)};
    public static final c[] n = {new c("ExposureTime", 33434, 5), new c("FNumber", 33437, 5), new c("ExposureProgram", 34850, 3), new c("SpectralSensitivity", 34852, 2), new c("PhotographicSensitivity", 34855, 3), new c("OECF", 34856, 7), new c("ExifVersion", 36864, 2), new c("DateTimeOriginal", 36867, 2), new c("DateTimeDigitized", 36868, 2), new c("ComponentsConfiguration", 37121, 7), new c("CompressedBitsPerPixel", 37122, 5), new c("ShutterSpeedValue", 37377, 10), new c("ApertureValue", 37378, 5), new c("BrightnessValue", 37379, 10), new c("ExposureBiasValue", 37380, 10), new c("MaxApertureValue", 37381, 5), new c("SubjectDistance", 37382, 5), new c("MeteringMode", 37383, 3), new c("LightSource", 37384, 3), new c("Flash", 37385, 3), new c("FocalLength", 37386, 5), new c("SubjectArea", 37396, 3), new c("MakerNote", 37500, 7), new c("UserComment", 37510, 7), new c("SubSecTime", 37520, 2), new c("SubSecTimeOriginal", 37521, 2), new c("SubSecTimeDigitized", 37522, 2), new c("FlashpixVersion", 40960, 7), new c("ColorSpace", 40961, 3), new c("PixelXDimension", 40962, 3, 4), new c("PixelYDimension", 40963, 3, 4), new c("RelatedSoundFile", 40964, 2), new c("InteroperabilityIFDPointer", 40965, 4), new c("FlashEnergy", 41483, 5), new c("SpatialFrequencyResponse", 41484, 7), new c("FocalPlaneXResolution", 41486, 5), new c("FocalPlaneYResolution", 41487, 5), new c("FocalPlaneResolutionUnit", 41488, 3), new c("SubjectLocation", 41492, 3), new c("ExposureIndex", 41493, 5), new c("SensingMethod", 41495, 3), new c("FileSource", 41728, 7), new c("SceneType", 41729, 7), new c("CFAPattern", 41730, 7), new c("CustomRendered", 41985, 3), new c("ExposureMode", 41986, 3), new c("WhiteBalance", 41987, 3), new c("DigitalZoomRatio", 41988, 5), new c("FocalLengthIn35mmFilm", 41989, 3), new c("SceneCaptureType", 41990, 3), new c("GainControl", 41991, 3), new c("Contrast", 41992, 3), new c("Saturation", 41993, 3), new c("Sharpness", 41994, 3), new c("DeviceSettingDescription", 41995, 7), new c("SubjectDistanceRange", 41996, 3), new c("ImageUniqueID", 42016, 2), new c("DNGVersion", 50706, 1), new c("DefaultCropSize", 50720, 3, 4)};
    public static final c[] o = {new c("GPSVersionID", 0, 1), new c("GPSLatitudeRef", 1, 2), new c("GPSLatitude", 2, 5), new c("GPSLongitudeRef", 3, 2), new c("GPSLongitude", 4, 5), new c("GPSAltitudeRef", 5, 1), new c("GPSAltitude", 6, 5), new c("GPSTimeStamp", 7, 5), new c("GPSSatellites", 8, 2), new c("GPSStatus", 9, 2), new c("GPSMeasureMode", 10, 2), new c("GPSDOP", 11, 5), new c("GPSSpeedRef", 12, 2), new c("GPSSpeed", 13, 5), new c("GPSTrackRef", 14, 2), new c("GPSTrack", 15, 5), new c("GPSImgDirectionRef", 16, 2), new c("GPSImgDirection", 17, 5), new c("GPSMapDatum", 18, 2), new c("GPSDestLatitudeRef", 19, 2), new c("GPSDestLatitude", 20, 5), new c("GPSDestLongitudeRef", 21, 2), new c("GPSDestLongitude", 22, 5), new c("GPSDestBearingRef", 23, 2), new c("GPSDestBearing", 24, 5), new c("GPSDestDistanceRef", 25, 2), new c("GPSDestDistance", 26, 5), new c("GPSProcessingMethod", 27, 7), new c("GPSAreaInformation", 28, 7), new c("GPSDateStamp", 29, 2), new c("GPSDifferential", 30, 3)};
    public static final c[] p = {new c("InteroperabilityIndex", 1, 2)};
    public static final c[] q = {new c("NewSubfileType", 254, 4), new c("SubfileType", 255, 4), new c("ThumbnailImageWidth", 256, 3, 4), new c("ThumbnailImageLength", 257, 3, 4), new c("BitsPerSample", 258, 3), new c("Compression", 259, 3), new c("PhotometricInterpretation", 262, 3), new c("ImageDescription", 270, 2), new c("Make", 271, 2), new c("Model", 272, 2), new c("StripOffsets", 273, 3, 4), new c("Orientation", 274, 3), new c("SamplesPerPixel", 277, 3), new c("RowsPerStrip", 278, 3, 4), new c("StripByteCounts", 279, 3, 4), new c("XResolution", 282, 5), new c("YResolution", 283, 5), new c("PlanarConfiguration", 284, 3), new c("ResolutionUnit", 296, 3), new c("TransferFunction", 301, 3), new c("Software", 305, 2), new c("DateTime", 306, 2), new c("Artist", 315, 2), new c("WhitePoint", 318, 5), new c("PrimaryChromaticities", 319, 5), new c("SubIFDPointer", 330, 4), new c("JPEGInterchangeFormat", 513, 4), new c("JPEGInterchangeFormatLength", 514, 4), new c("YCbCrCoefficients", 529, 5), new c("YCbCrSubSampling", 530, 3), new c("YCbCrPositioning", 531, 3), new c("ReferenceBlackWhite", 532, 5), new c("Copyright", 33432, 2), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("DNGVersion", 50706, 1), new c("DefaultCropSize", 50720, 3, 4)};
    public static final c r = new c("StripOffsets", 273, 3);
    public static final c[] s = {new c("ThumbnailImage", 256, 7), new c("CameraSettingsIFDPointer", 8224, 4), new c("ImageProcessingIFDPointer", 8256, 4)};
    public static final c[] t = {new c("PreviewImageStart", 257, 4), new c("PreviewImageLength", 258, 4)};
    public static final c[] u = {new c("AspectFrame", 4371, 3)};
    public static final c[] v = {new c("ColorSpace", 55, 3)};
    public static final c[][] w;
    public static final c[] x = {new c("SubIFDPointer", 330, 4), new c("ExifIFDPointer", 34665, 4), new c("GPSInfoIFDPointer", 34853, 4), new c("InteroperabilityIFDPointer", 40965, 4), new c("CameraSettingsIFDPointer", 8224, 1), new c("ImageProcessingIFDPointer", 8256, 1)};
    public static final c y = new c("JPEGInterchangeFormat", 513, 4);
    public static final c z = new c("JPEGInterchangeFormatLength", 514, 4);
    public final String I;
    public final AssetManager.AssetInputStream J;
    public int K;
    public final HashMap<String, b>[] L;
    public Set<Integer> M;
    public ByteOrder N = ByteOrder.BIG_ENDIAN;
    public boolean O;
    public int P;
    public int Q;
    public byte[] R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public boolean Y;

    /* renamed from: b.n.a.a$a  reason: collision with other inner class name */
    /* compiled from: ExifInterface */
    private static class C0038a extends InputStream implements DataInput {

        /* renamed from: a  reason: collision with root package name */
        public static final ByteOrder f2961a = ByteOrder.LITTLE_ENDIAN;

        /* renamed from: b  reason: collision with root package name */
        public static final ByteOrder f2962b = ByteOrder.BIG_ENDIAN;

        /* renamed from: c  reason: collision with root package name */
        public DataInputStream f2963c;

        /* renamed from: d  reason: collision with root package name */
        public ByteOrder f2964d;

        /* renamed from: e  reason: collision with root package name */
        public final int f2965e;

        /* renamed from: f  reason: collision with root package name */
        public int f2966f;

        public C0038a(InputStream inputStream) {
            this.f2964d = ByteOrder.BIG_ENDIAN;
            this.f2963c = new DataInputStream(inputStream);
            this.f2965e = this.f2963c.available();
            this.f2966f = 0;
            this.f2963c.mark(this.f2965e);
        }

        public void a(ByteOrder byteOrder) {
            this.f2964d = byteOrder;
        }

        public int available() {
            return this.f2963c.available();
        }

        public void h(long j2) {
            int i2 = this.f2966f;
            if (((long) i2) > j2) {
                this.f2966f = 0;
                this.f2963c.reset();
                this.f2963c.mark(this.f2965e);
            } else {
                j2 -= (long) i2;
            }
            int i3 = (int) j2;
            if (skipBytes(i3) != i3) {
                throw new IOException("Couldn't seek up to the byteCount");
            }
        }

        public int read() {
            this.f2966f++;
            return this.f2963c.read();
        }

        public boolean readBoolean() {
            this.f2966f++;
            return this.f2963c.readBoolean();
        }

        public byte readByte() {
            this.f2966f++;
            if (this.f2966f <= this.f2965e) {
                int read = this.f2963c.read();
                if (read >= 0) {
                    return (byte) read;
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        public char readChar() {
            this.f2966f += 2;
            return this.f2963c.readChar();
        }

        public double readDouble() {
            return Double.longBitsToDouble(readLong());
        }

        public float readFloat() {
            return Float.intBitsToFloat(readInt());
        }

        public void readFully(byte[] bArr, int i2, int i3) {
            this.f2966f += i3;
            if (this.f2966f > this.f2965e) {
                throw new EOFException();
            } else if (this.f2963c.read(bArr, i2, i3) != i3) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        public int readInt() {
            this.f2966f += 4;
            if (this.f2966f <= this.f2965e) {
                int read = this.f2963c.read();
                int read2 = this.f2963c.read();
                int read3 = this.f2963c.read();
                int read4 = this.f2963c.read();
                if ((read | read2 | read3 | read4) >= 0) {
                    ByteOrder byteOrder = this.f2964d;
                    if (byteOrder == f2961a) {
                        return (read4 << 24) + (read3 << 16) + (read2 << 8) + read;
                    }
                    if (byteOrder == f2962b) {
                        return (read << 24) + (read2 << 16) + (read3 << 8) + read4;
                    }
                    throw new IOException("Invalid byte order: " + this.f2964d);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        public String readLine() {
            Log.d("ExifInterface", "Currently unsupported");
            return null;
        }

        public long readLong() {
            this.f2966f += 8;
            if (this.f2966f <= this.f2965e) {
                int read = this.f2963c.read();
                int read2 = this.f2963c.read();
                int read3 = this.f2963c.read();
                int read4 = this.f2963c.read();
                int read5 = this.f2963c.read();
                int read6 = this.f2963c.read();
                int read7 = this.f2963c.read();
                int read8 = this.f2963c.read();
                if ((read | read2 | read3 | read4 | read5 | read6 | read7 | read8) >= 0) {
                    ByteOrder byteOrder = this.f2964d;
                    if (byteOrder == f2961a) {
                        return (((long) read8) << 56) + (((long) read7) << 48) + (((long) read6) << 40) + (((long) read5) << 32) + (((long) read4) << 24) + (((long) read3) << 16) + (((long) read2) << 8) + ((long) read);
                    }
                    int i2 = read2;
                    if (byteOrder == f2962b) {
                        return (((long) read) << 56) + (((long) i2) << 48) + (((long) read3) << 40) + (((long) read4) << 32) + (((long) read5) << 24) + (((long) read6) << 16) + (((long) read7) << 8) + ((long) read8);
                    }
                    throw new IOException("Invalid byte order: " + this.f2964d);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        public short readShort() {
            this.f2966f += 2;
            if (this.f2966f <= this.f2965e) {
                int read = this.f2963c.read();
                int read2 = this.f2963c.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f2964d;
                    if (byteOrder == f2961a) {
                        return (short) ((read2 << 8) + read);
                    }
                    if (byteOrder == f2962b) {
                        return (short) ((read << 8) + read2);
                    }
                    throw new IOException("Invalid byte order: " + this.f2964d);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        public String readUTF() {
            this.f2966f += 2;
            return this.f2963c.readUTF();
        }

        public int readUnsignedByte() {
            this.f2966f++;
            return this.f2963c.readUnsignedByte();
        }

        public int readUnsignedShort() {
            this.f2966f += 2;
            if (this.f2966f <= this.f2965e) {
                int read = this.f2963c.read();
                int read2 = this.f2963c.read();
                if ((read | read2) >= 0) {
                    ByteOrder byteOrder = this.f2964d;
                    if (byteOrder == f2961a) {
                        return (read2 << 8) + read;
                    }
                    if (byteOrder == f2962b) {
                        return (read << 8) + read2;
                    }
                    throw new IOException("Invalid byte order: " + this.f2964d);
                }
                throw new EOFException();
            }
            throw new EOFException();
        }

        public int s() {
            return this.f2966f;
        }

        public int skipBytes(int i2) {
            int min = Math.min(i2, this.f2965e - this.f2966f);
            int i3 = 0;
            while (i3 < min) {
                i3 += this.f2963c.skipBytes(min - i3);
            }
            this.f2966f += i3;
            return i3;
        }

        public long t() {
            return ((long) readInt()) & 4294967295L;
        }

        public int read(byte[] bArr, int i2, int i3) {
            int read = this.f2963c.read(bArr, i2, i3);
            this.f2966f += read;
            return read;
        }

        public void readFully(byte[] bArr) {
            this.f2966f += bArr.length;
            if (this.f2966f > this.f2965e) {
                throw new EOFException();
            } else if (this.f2963c.read(bArr, 0, bArr.length) != bArr.length) {
                throw new IOException("Couldn't read up to the length of buffer");
            }
        }

        public C0038a(byte[] bArr) {
            this((InputStream) new ByteArrayInputStream(bArr));
        }
    }

    /* compiled from: ExifInterface */
    private static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f2967a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2968b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f2969c;

        public b(int i2, int i3, byte[] bArr) {
            this.f2967a = i2;
            this.f2968b = i3;
            this.f2969c = bArr;
        }

        public static b a(int[] iArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(a.f2959k[3] * iArr.length)]);
            wrap.order(byteOrder);
            for (int i2 : iArr) {
                wrap.putShort((short) i2);
            }
            return new b(3, iArr.length, wrap.array());
        }

        public int b(ByteOrder byteOrder) {
            Object d2 = d(byteOrder);
            if (d2 == null) {
                throw new NumberFormatException("NULL can't be converted to a integer value");
            } else if (d2 instanceof String) {
                return Integer.parseInt((String) d2);
            } else {
                if (d2 instanceof long[]) {
                    long[] jArr = (long[]) d2;
                    if (jArr.length == 1) {
                        return (int) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d2 instanceof int[]) {
                    int[] iArr = (int[]) d2;
                    if (iArr.length == 1) {
                        return iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a integer value");
                }
            }
        }

        public String c(ByteOrder byteOrder) {
            Object d2 = d(byteOrder);
            if (d2 == null) {
                return null;
            }
            if (d2 instanceof String) {
                return (String) d2;
            }
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            if (d2 instanceof long[]) {
                long[] jArr = (long[]) d2;
                while (i2 < jArr.length) {
                    sb.append(jArr[i2]);
                    i2++;
                    if (i2 != jArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (d2 instanceof int[]) {
                int[] iArr = (int[]) d2;
                while (i2 < iArr.length) {
                    sb.append(iArr[i2]);
                    i2++;
                    if (i2 != iArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (d2 instanceof double[]) {
                double[] dArr = (double[]) d2;
                while (i2 < dArr.length) {
                    sb.append(dArr[i2]);
                    i2++;
                    if (i2 != dArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            } else if (!(d2 instanceof d[])) {
                return null;
            } else {
                d[] dVarArr = (d[]) d2;
                while (i2 < dVarArr.length) {
                    sb.append(dVarArr[i2].f2974a);
                    sb.append('/');
                    sb.append(dVarArr[i2].f2975b);
                    i2++;
                    if (i2 != dVarArr.length) {
                        sb.append(",");
                    }
                }
                return sb.toString();
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:164:0x01ab A[SYNTHETIC, Splitter:B:164:0x01ab] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public java.lang.Object d(java.nio.ByteOrder r11) {
            /*
                r10 = this;
                java.lang.String r0 = "IOException occurred while closing InputStream"
                java.lang.String r1 = "ExifInterface"
                r2 = 0
                b.n.a.a$a r3 = new b.n.a.a$a     // Catch:{ IOException -> 0x0196, all -> 0x0193 }
                byte[] r4 = r10.f2969c     // Catch:{ IOException -> 0x0196, all -> 0x0193 }
                r3.<init>((byte[]) r4)     // Catch:{ IOException -> 0x0196, all -> 0x0193 }
                r3.a(r11)     // Catch:{ IOException -> 0x0191 }
                int r11 = r10.f2967a     // Catch:{ IOException -> 0x0191 }
                r4 = 1
                r5 = 0
                switch(r11) {
                    case 1: goto L_0x014c;
                    case 2: goto L_0x00fd;
                    case 3: goto L_0x00e3;
                    case 4: goto L_0x00c9;
                    case 5: goto L_0x00a6;
                    case 6: goto L_0x014c;
                    case 7: goto L_0x00fd;
                    case 8: goto L_0x008c;
                    case 9: goto L_0x0072;
                    case 10: goto L_0x004d;
                    case 11: goto L_0x0032;
                    case 12: goto L_0x0018;
                    default: goto L_0x0016;
                }     // Catch:{ IOException -> 0x0191 }
            L_0x0016:
                goto L_0x0188
            L_0x0018:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                double[] r11 = new double[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x001c:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x0029
                double r6 = r3.readDouble()     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r6     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x001c
            L_0x0029:
                r3.close()     // Catch:{ IOException -> 0x002d }
                goto L_0x0031
            L_0x002d:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x0031:
                return r11
            L_0x0032:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                double[] r11 = new double[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x0036:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x0044
                float r4 = r3.readFloat()     // Catch:{ IOException -> 0x0191 }
                double r6 = (double) r4     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r6     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x0036
            L_0x0044:
                r3.close()     // Catch:{ IOException -> 0x0048 }
                goto L_0x004c
            L_0x0048:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x004c:
                return r11
            L_0x004d:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                b.n.a.a$d[] r11 = new b.n.a.a.d[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x0051:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x0069
                int r4 = r3.readInt()     // Catch:{ IOException -> 0x0191 }
                long r6 = (long) r4     // Catch:{ IOException -> 0x0191 }
                int r4 = r3.readInt()     // Catch:{ IOException -> 0x0191 }
                long r8 = (long) r4     // Catch:{ IOException -> 0x0191 }
                b.n.a.a$d r4 = new b.n.a.a$d     // Catch:{ IOException -> 0x0191 }
                r4.<init>(r6, r8)     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r4     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x0051
            L_0x0069:
                r3.close()     // Catch:{ IOException -> 0x006d }
                goto L_0x0071
            L_0x006d:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x0071:
                return r11
            L_0x0072:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                int[] r11 = new int[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x0076:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x0083
                int r4 = r3.readInt()     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r4     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x0076
            L_0x0083:
                r3.close()     // Catch:{ IOException -> 0x0087 }
                goto L_0x008b
            L_0x0087:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x008b:
                return r11
            L_0x008c:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                int[] r11 = new int[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x0090:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x009d
                short r4 = r3.readShort()     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r4     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x0090
            L_0x009d:
                r3.close()     // Catch:{ IOException -> 0x00a1 }
                goto L_0x00a5
            L_0x00a1:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x00a5:
                return r11
            L_0x00a6:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                b.n.a.a$d[] r11 = new b.n.a.a.d[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x00aa:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x00c0
                long r6 = r3.t()     // Catch:{ IOException -> 0x0191 }
                long r8 = r3.t()     // Catch:{ IOException -> 0x0191 }
                b.n.a.a$d r4 = new b.n.a.a$d     // Catch:{ IOException -> 0x0191 }
                r4.<init>(r6, r8)     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r4     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x00aa
            L_0x00c0:
                r3.close()     // Catch:{ IOException -> 0x00c4 }
                goto L_0x00c8
            L_0x00c4:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x00c8:
                return r11
            L_0x00c9:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                long[] r11 = new long[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x00cd:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x00da
                long r6 = r3.t()     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r6     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x00cd
            L_0x00da:
                r3.close()     // Catch:{ IOException -> 0x00de }
                goto L_0x00e2
            L_0x00de:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x00e2:
                return r11
            L_0x00e3:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                int[] r11 = new int[r11]     // Catch:{ IOException -> 0x0191 }
            L_0x00e7:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x00f4
                int r4 = r3.readUnsignedShort()     // Catch:{ IOException -> 0x0191 }
                r11[r5] = r4     // Catch:{ IOException -> 0x0191 }
                int r5 = r5 + 1
                goto L_0x00e7
            L_0x00f4:
                r3.close()     // Catch:{ IOException -> 0x00f8 }
                goto L_0x00fc
            L_0x00f8:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x00fc:
                return r11
            L_0x00fd:
                int r11 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                byte[] r6 = b.n.a.a.f2960l     // Catch:{ IOException -> 0x0191 }
                int r6 = r6.length     // Catch:{ IOException -> 0x0191 }
                if (r11 < r6) goto L_0x011e
                r11 = 0
            L_0x0105:
                byte[] r6 = b.n.a.a.f2960l     // Catch:{ IOException -> 0x0191 }
                int r6 = r6.length     // Catch:{ IOException -> 0x0191 }
                if (r11 >= r6) goto L_0x0119
                byte[] r6 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                byte r6 = r6[r11]     // Catch:{ IOException -> 0x0191 }
                byte[] r7 = b.n.a.a.f2960l     // Catch:{ IOException -> 0x0191 }
                byte r7 = r7[r11]     // Catch:{ IOException -> 0x0191 }
                if (r6 == r7) goto L_0x0116
                r4 = 0
                goto L_0x0119
            L_0x0116:
                int r11 = r11 + 1
                goto L_0x0105
            L_0x0119:
                if (r4 == 0) goto L_0x011e
                byte[] r11 = b.n.a.a.f2960l     // Catch:{ IOException -> 0x0191 }
                int r5 = r11.length     // Catch:{ IOException -> 0x0191 }
            L_0x011e:
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x0191 }
                r11.<init>()     // Catch:{ IOException -> 0x0191 }
            L_0x0123:
                int r4 = r10.f2968b     // Catch:{ IOException -> 0x0191 }
                if (r5 >= r4) goto L_0x013f
                byte[] r4 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                byte r4 = r4[r5]     // Catch:{ IOException -> 0x0191 }
                if (r4 != 0) goto L_0x012e
                goto L_0x013f
            L_0x012e:
                r6 = 32
                if (r4 < r6) goto L_0x0137
                char r4 = (char) r4     // Catch:{ IOException -> 0x0191 }
                r11.append(r4)     // Catch:{ IOException -> 0x0191 }
                goto L_0x013c
            L_0x0137:
                r4 = 63
                r11.append(r4)     // Catch:{ IOException -> 0x0191 }
            L_0x013c:
                int r5 = r5 + 1
                goto L_0x0123
            L_0x013f:
                java.lang.String r11 = r11.toString()     // Catch:{ IOException -> 0x0191 }
                r3.close()     // Catch:{ IOException -> 0x0147 }
                goto L_0x014b
            L_0x0147:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x014b:
                return r11
            L_0x014c:
                byte[] r11 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                int r11 = r11.length     // Catch:{ IOException -> 0x0191 }
                if (r11 != r4) goto L_0x0176
                byte[] r11 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                byte r11 = r11[r5]     // Catch:{ IOException -> 0x0191 }
                if (r11 < 0) goto L_0x0176
                byte[] r11 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                byte r11 = r11[r5]     // Catch:{ IOException -> 0x0191 }
                if (r11 > r4) goto L_0x0176
                java.lang.String r11 = new java.lang.String     // Catch:{ IOException -> 0x0191 }
                char[] r4 = new char[r4]     // Catch:{ IOException -> 0x0191 }
                byte[] r6 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                byte r6 = r6[r5]     // Catch:{ IOException -> 0x0191 }
                int r6 = r6 + 48
                char r6 = (char) r6     // Catch:{ IOException -> 0x0191 }
                r4[r5] = r6     // Catch:{ IOException -> 0x0191 }
                r11.<init>(r4)     // Catch:{ IOException -> 0x0191 }
                r3.close()     // Catch:{ IOException -> 0x0171 }
                goto L_0x0175
            L_0x0171:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x0175:
                return r11
            L_0x0176:
                java.lang.String r11 = new java.lang.String     // Catch:{ IOException -> 0x0191 }
                byte[] r4 = r10.f2969c     // Catch:{ IOException -> 0x0191 }
                java.nio.charset.Charset r5 = b.n.a.a.E     // Catch:{ IOException -> 0x0191 }
                r11.<init>(r4, r5)     // Catch:{ IOException -> 0x0191 }
                r3.close()     // Catch:{ IOException -> 0x0183 }
                goto L_0x0187
            L_0x0183:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x0187:
                return r11
            L_0x0188:
                r3.close()     // Catch:{ IOException -> 0x018c }
                goto L_0x0190
            L_0x018c:
                r11 = move-exception
                android.util.Log.e(r1, r0, r11)
            L_0x0190:
                return r2
            L_0x0191:
                r11 = move-exception
                goto L_0x0198
            L_0x0193:
                r11 = move-exception
                r3 = r2
                goto L_0x01a9
            L_0x0196:
                r11 = move-exception
                r3 = r2
            L_0x0198:
                java.lang.String r4 = "IOException occurred during reading a value"
                android.util.Log.w(r1, r4, r11)     // Catch:{ all -> 0x01a8 }
                if (r3 == 0) goto L_0x01a7
                r3.close()     // Catch:{ IOException -> 0x01a3 }
                goto L_0x01a7
            L_0x01a3:
                r11 = move-exception
                android.util.Log.e(r1, r0, r11)
            L_0x01a7:
                return r2
            L_0x01a8:
                r11 = move-exception
            L_0x01a9:
                if (r3 == 0) goto L_0x01b3
                r3.close()     // Catch:{ IOException -> 0x01af }
                goto L_0x01b3
            L_0x01af:
                r2 = move-exception
                android.util.Log.e(r1, r0, r2)
            L_0x01b3:
                goto L_0x01b5
            L_0x01b4:
                throw r11
            L_0x01b5:
                goto L_0x01b4
            */
            throw new UnsupportedOperationException("Method not decompiled: b.n.a.a.b.d(java.nio.ByteOrder):java.lang.Object");
        }

        public String toString() {
            return "(" + a.f2958j[this.f2967a] + ", data length:" + this.f2969c.length + ")";
        }

        public static b a(int i2, ByteOrder byteOrder) {
            return a(new int[]{i2}, byteOrder);
        }

        public static b a(long[] jArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(a.f2959k[4] * jArr.length)]);
            wrap.order(byteOrder);
            for (long j2 : jArr) {
                wrap.putInt((int) j2);
            }
            return new b(4, jArr.length, wrap.array());
        }

        public static b a(long j2, ByteOrder byteOrder) {
            return a(new long[]{j2}, byteOrder);
        }

        public static b a(String str) {
            byte[] bytes = (str + 0).getBytes(a.E);
            return new b(2, bytes.length, bytes);
        }

        public static b a(d[] dVarArr, ByteOrder byteOrder) {
            ByteBuffer wrap = ByteBuffer.wrap(new byte[(a.f2959k[5] * dVarArr.length)]);
            wrap.order(byteOrder);
            for (d dVar : dVarArr) {
                wrap.putInt((int) dVar.f2974a);
                wrap.putInt((int) dVar.f2975b);
            }
            return new b(5, dVarArr.length, wrap.array());
        }

        public static b a(d dVar, ByteOrder byteOrder) {
            return a(new d[]{dVar}, byteOrder);
        }

        public double a(ByteOrder byteOrder) {
            Object d2 = d(byteOrder);
            if (d2 == null) {
                throw new NumberFormatException("NULL can't be converted to a double value");
            } else if (d2 instanceof String) {
                return Double.parseDouble((String) d2);
            } else {
                if (d2 instanceof long[]) {
                    long[] jArr = (long[]) d2;
                    if (jArr.length == 1) {
                        return (double) jArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d2 instanceof int[]) {
                    int[] iArr = (int[]) d2;
                    if (iArr.length == 1) {
                        return (double) iArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d2 instanceof double[]) {
                    double[] dArr = (double[]) d2;
                    if (dArr.length == 1) {
                        return dArr[0];
                    }
                    throw new NumberFormatException("There are more than one component");
                } else if (d2 instanceof d[]) {
                    d[] dVarArr = (d[]) d2;
                    if (dVarArr.length == 1) {
                        return dVarArr[0].a();
                    }
                    throw new NumberFormatException("There are more than one component");
                } else {
                    throw new NumberFormatException("Couldn't find a double value");
                }
            }
        }
    }

    /* compiled from: ExifInterface */
    static class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f2970a;

        /* renamed from: b  reason: collision with root package name */
        public final String f2971b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2972c;

        /* renamed from: d  reason: collision with root package name */
        public final int f2973d;

        public c(String str, int i2, int i3) {
            this.f2971b = str;
            this.f2970a = i2;
            this.f2972c = i3;
            this.f2973d = -1;
        }

        public boolean a(int i2) {
            int i3 = this.f2972c;
            if (!(i3 == 7 || i2 == 7 || i3 == i2)) {
                int i4 = this.f2973d;
                if (i4 != i2) {
                    if ((i3 == 4 || i4 == 4) && i2 == 3) {
                        return true;
                    }
                    if ((this.f2972c == 9 || this.f2973d == 9) && i2 == 8) {
                        return true;
                    }
                    if ((this.f2972c == 12 || this.f2973d == 12) && i2 == 11) {
                        return true;
                    }
                    return false;
                }
            }
            return true;
        }

        public c(String str, int i2, int i3, int i4) {
            this.f2971b = str;
            this.f2970a = i2;
            this.f2972c = i3;
            this.f2973d = i4;
        }
    }

    /* compiled from: ExifInterface */
    private static class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f2974a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2975b;

        public d(long j2, long j3) {
            if (j3 == 0) {
                this.f2974a = 0;
                this.f2975b = 1;
                return;
            }
            this.f2974a = j2;
            this.f2975b = j3;
        }

        public double a() {
            double d2 = (double) this.f2974a;
            double d3 = (double) this.f2975b;
            Double.isNaN(d2);
            Double.isNaN(d3);
            return d2 / d3;
        }

        public String toString() {
            return this.f2974a + "/" + this.f2975b;
        }
    }

    static {
        c[] cVarArr = m;
        w = new c[][]{cVarArr, n, o, p, q, cVarArr, s, t, u, v};
        c[][] cVarArr2 = w;
        A = new HashMap[cVarArr2.length];
        B = new HashMap[cVarArr2.length];
        f2957i.setTimeZone(TimeZone.getTimeZone("UTC"));
        for (int i2 = 0; i2 < w.length; i2++) {
            A[i2] = new HashMap<>();
            B[i2] = new HashMap<>();
            for (c cVar : w[i2]) {
                A[i2].put(Integer.valueOf(cVar.f2970a), cVar);
                B[i2].put(cVar.f2971b, cVar);
            }
        }
        D.put(Integer.valueOf(x[0].f2970a), 5);
        D.put(Integer.valueOf(x[1].f2970a), 1);
        D.put(Integer.valueOf(x[2].f2970a), 2);
        D.put(Integer.valueOf(x[3].f2970a), 3);
        D.put(Integer.valueOf(x[4].f2970a), 7);
        D.put(Integer.valueOf(x[5].f2970a), 8);
    }

    public a(String str) {
        c[][] cVarArr = w;
        this.L = new HashMap[cVarArr.length];
        this.M = new HashSet(cVarArr.length);
        if (str != null) {
            FileInputStream fileInputStream = null;
            this.J = null;
            this.I = str;
            try {
                FileInputStream fileInputStream2 = new FileInputStream(str);
                try {
                    a((InputStream) fileInputStream2);
                    a((Closeable) fileInputStream2);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    a((Closeable) fileInputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                a((Closeable) fileInputStream);
                throw th;
            }
        } else {
            throw new IllegalArgumentException("filename cannot be null");
        }
    }

    public String a(String str) {
        b b2 = b(str);
        if (b2 != null) {
            if (!C.contains(str)) {
                return b2.c(this.N);
            }
            if (str.equals("GPSTimeStamp")) {
                int i2 = b2.f2967a;
                if (i2 == 5 || i2 == 10) {
                    d[] dVarArr = (d[]) b2.d(this.N);
                    if (dVarArr == null || dVarArr.length != 3) {
                        Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(dVarArr));
                        return null;
                    }
                    return String.format("%02d:%02d:%02d", new Object[]{Integer.valueOf((int) (((float) dVarArr[0].f2974a) / ((float) dVarArr[0].f2975b))), Integer.valueOf((int) (((float) dVarArr[1].f2974a) / ((float) dVarArr[1].f2975b))), Integer.valueOf((int) (((float) dVarArr[2].f2974a) / ((float) dVarArr[2].f2975b)))});
                }
                Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + b2.f2967a);
                return null;
            }
            try {
                return Double.toString(b2.a(this.N));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final b b(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            str = "PhotographicSensitivity";
        }
        for (int i2 = 0; i2 < w.length; i2++) {
            b bVar = this.L[i2].get(str);
            if (bVar != null) {
                return bVar;
            }
        }
        return null;
    }

    public final boolean c(byte[] bArr) {
        byte[] bytes = "FUJIFILMCCD-RAW".getBytes(Charset.defaultCharset());
        for (int i2 = 0; i2 < bytes.length; i2++) {
            if (bArr[i2] != bytes[i2]) {
                return false;
            }
        }
        return true;
    }

    public final boolean d(byte[] bArr) {
        C0038a aVar = new C0038a(bArr);
        this.N = e(aVar);
        aVar.a(this.N);
        short readShort = aVar.readShort();
        aVar.close();
        return readShort == 85;
    }

    public final ByteOrder e(C0038a aVar) {
        short readShort = aVar.readShort();
        if (readShort == 18761) {
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (readShort == 19789) {
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(readShort));
    }

    public final void f(C0038a aVar) {
        HashMap<String, b> hashMap = this.L[4];
        b bVar = hashMap.get("Compression");
        if (bVar != null) {
            this.S = bVar.b(this.N);
            int i2 = this.S;
            if (i2 != 1) {
                if (i2 == 6) {
                    a(aVar, (HashMap) hashMap);
                    return;
                } else if (i2 != 7) {
                    return;
                }
            }
            if (a((HashMap) hashMap)) {
                b(aVar, (HashMap) hashMap);
                return;
            }
            return;
        }
        this.S = 6;
        a(aVar, (HashMap) hashMap);
    }

    public final boolean b(byte[] bArr) {
        C0038a aVar = new C0038a(bArr);
        this.N = e(aVar);
        aVar.a(this.N);
        short readShort = aVar.readShort();
        aVar.close();
        return readShort == 20306 || readShort == 21330;
    }

    public final void c(C0038a aVar) {
        a(aVar, aVar.available());
        b(aVar, 0);
        d(aVar, 0);
        d(aVar, 5);
        d(aVar, 4);
        b((InputStream) aVar);
        if (this.K == 8) {
            b bVar = this.L[1].get("MakerNote");
            if (bVar != null) {
                C0038a aVar2 = new C0038a(bVar.f2969c);
                aVar2.a(this.N);
                aVar2.h(6);
                b(aVar2, 9);
                b bVar2 = this.L[9].get("ColorSpace");
                if (bVar2 != null) {
                    this.L[1].put("ColorSpace", bVar2);
                }
            }
        }
    }

    public final void d(C0038a aVar) {
        c(aVar);
        if (this.L[0].get("JpgFromRaw") != null) {
            a(aVar, this.X, 5);
        }
        b bVar = this.L[0].get("ISO");
        b bVar2 = this.L[1].get("PhotographicSensitivity");
        if (bVar != null && bVar2 == null) {
            this.L[1].put("PhotographicSensitivity", bVar);
        }
    }

    public final void b(C0038a aVar) {
        aVar.skipBytes(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        aVar.read(bArr);
        aVar.skipBytes(4);
        aVar.read(bArr2);
        int i2 = ByteBuffer.wrap(bArr).getInt();
        int i3 = ByteBuffer.wrap(bArr2).getInt();
        a(aVar, i2, 5);
        aVar.h((long) i3);
        aVar.a(ByteOrder.BIG_ENDIAN);
        int readInt = aVar.readInt();
        for (int i4 = 0; i4 < readInt; i4++) {
            int readUnsignedShort = aVar.readUnsignedShort();
            int readUnsignedShort2 = aVar.readUnsignedShort();
            if (readUnsignedShort == r.f2970a) {
                short readShort = aVar.readShort();
                short readShort2 = aVar.readShort();
                b a2 = b.a((int) readShort, this.N);
                b a3 = b.a((int) readShort2, this.N);
                this.L[0].put("ImageLength", a2);
                this.L[0].put("ImageWidth", a3);
                return;
            }
            aVar.skipBytes(readUnsignedShort2);
        }
    }

    public final void d(C0038a aVar, int i2) {
        b bVar;
        b bVar2;
        b bVar3 = this.L[i2].get("DefaultCropSize");
        b bVar4 = this.L[i2].get("SensorTopBorder");
        b bVar5 = this.L[i2].get("SensorLeftBorder");
        b bVar6 = this.L[i2].get("SensorBottomBorder");
        b bVar7 = this.L[i2].get("SensorRightBorder");
        if (bVar3 != null) {
            if (bVar3.f2967a == 5) {
                d[] dVarArr = (d[]) bVar3.d(this.N);
                if (dVarArr == null || dVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(dVarArr));
                    return;
                }
                bVar2 = b.a(dVarArr[0], this.N);
                bVar = b.a(dVarArr[1], this.N);
            } else {
                int[] iArr = (int[]) bVar3.d(this.N);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                bVar2 = b.a(iArr[0], this.N);
                bVar = b.a(iArr[1], this.N);
            }
            this.L[i2].put("ImageWidth", bVar2);
            this.L[i2].put("ImageLength", bVar);
        } else if (bVar4 == null || bVar5 == null || bVar6 == null || bVar7 == null) {
            c(aVar, i2);
        } else {
            int b2 = bVar4.b(this.N);
            int b3 = bVar6.b(this.N);
            int b4 = bVar7.b(this.N);
            int b5 = bVar5.b(this.N);
            if (b3 > b2 && b4 > b5) {
                b a2 = b.a(b3 - b2, this.N);
                b a3 = b.a(b4 - b5, this.N);
                this.L[i2].put("ImageLength", a2);
                this.L[i2].put("ImageWidth", a3);
            }
        }
    }

    public int a(String str, int i2) {
        b b2 = b(str);
        if (b2 == null) {
            return i2;
        }
        try {
            return b2.b(this.N);
        } catch (NumberFormatException unused) {
            return i2;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0045, code lost:
        r5 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
        r4.Y = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004d, code lost:
        a();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0051, code lost:
        throw r5;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:15:0x0047 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.io.InputStream r5) {
        /*
            r4 = this;
            r0 = 0
            r1 = 0
        L_0x0002:
            b.n.a.a$c[][] r2 = w     // Catch:{ IOException -> 0x0047 }
            int r2 = r2.length     // Catch:{ IOException -> 0x0047 }
            if (r1 >= r2) goto L_0x0013
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r2 = r4.L     // Catch:{ IOException -> 0x0047 }
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ IOException -> 0x0047 }
            r3.<init>()     // Catch:{ IOException -> 0x0047 }
            r2[r1] = r3     // Catch:{ IOException -> 0x0047 }
            int r1 = r1 + 1
            goto L_0x0002
        L_0x0013:
            java.io.BufferedInputStream r1 = new java.io.BufferedInputStream     // Catch:{ IOException -> 0x0047 }
            r2 = 5000(0x1388, float:7.006E-42)
            r1.<init>(r5, r2)     // Catch:{ IOException -> 0x0047 }
            int r5 = r4.a((java.io.BufferedInputStream) r1)     // Catch:{ IOException -> 0x0047 }
            r4.K = r5     // Catch:{ IOException -> 0x0047 }
            b.n.a.a$a r5 = new b.n.a.a$a     // Catch:{ IOException -> 0x0047 }
            r5.<init>((java.io.InputStream) r1)     // Catch:{ IOException -> 0x0047 }
            int r1 = r4.K     // Catch:{ IOException -> 0x0047 }
            switch(r1) {
                case 0: goto L_0x003b;
                case 1: goto L_0x003b;
                case 2: goto L_0x003b;
                case 3: goto L_0x003b;
                case 4: goto L_0x0037;
                case 5: goto L_0x003b;
                case 6: goto L_0x003b;
                case 7: goto L_0x0033;
                case 8: goto L_0x003b;
                case 9: goto L_0x002f;
                case 10: goto L_0x002b;
                case 11: goto L_0x003b;
                default: goto L_0x002a;
            }     // Catch:{ IOException -> 0x0047 }
        L_0x002a:
            goto L_0x003e
        L_0x002b:
            r4.d((b.n.a.a.C0038a) r5)     // Catch:{ IOException -> 0x0047 }
            goto L_0x003e
        L_0x002f:
            r4.b((b.n.a.a.C0038a) r5)     // Catch:{ IOException -> 0x0047 }
            goto L_0x003e
        L_0x0033:
            r4.a((b.n.a.a.C0038a) r5)     // Catch:{ IOException -> 0x0047 }
            goto L_0x003e
        L_0x0037:
            r4.a(r5, r0, r0)     // Catch:{ IOException -> 0x0047 }
            goto L_0x003e
        L_0x003b:
            r4.c((b.n.a.a.C0038a) r5)     // Catch:{ IOException -> 0x0047 }
        L_0x003e:
            r4.f(r5)     // Catch:{ IOException -> 0x0047 }
            r5 = 1
            r4.Y = r5     // Catch:{ IOException -> 0x0047 }
            goto L_0x0049
        L_0x0045:
            r5 = move-exception
            goto L_0x004d
        L_0x0047:
            r4.Y = r0     // Catch:{ all -> 0x0045 }
        L_0x0049:
            r4.a()
            return
        L_0x004d:
            r4.a()
            goto L_0x0052
        L_0x0051:
            throw r5
        L_0x0052:
            goto L_0x0051
        */
        throw new UnsupportedOperationException("Method not decompiled: b.n.a.a.a(java.io.InputStream):void");
    }

    public final void c(C0038a aVar, int i2) {
        b bVar = this.L[i2].get("ImageLength");
        b bVar2 = this.L[i2].get("ImageWidth");
        if (bVar == null || bVar2 == null) {
            b bVar3 = this.L[i2].get("JPEGInterchangeFormat");
            if (bVar3 != null) {
                a(aVar, bVar3.b(this.N), i2);
            }
        }
    }

    public final int a(BufferedInputStream bufferedInputStream) {
        bufferedInputStream.mark(BackgroundManager.BACKGROUND_DELAY);
        byte[] bArr = new byte[BackgroundManager.BACKGROUND_DELAY];
        bufferedInputStream.read(bArr);
        bufferedInputStream.reset();
        if (a(bArr)) {
            return 4;
        }
        if (c(bArr)) {
            return 9;
        }
        if (b(bArr)) {
            return 7;
        }
        return d(bArr) ? 10 : 0;
    }

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ec  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x00f5  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(b.n.a.a.C0038a r24, int r25) {
        /*
            r23 = this;
            r0 = r23
            r1 = r24
            r2 = r25
            java.util.Set<java.lang.Integer> r3 = r0.M
            int r4 = r1.f2966f
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            r3.add(r4)
            int r3 = r1.f2966f
            int r3 = r3 + 2
            int r4 = r1.f2965e
            if (r3 <= r4) goto L_0x001a
            return
        L_0x001a:
            short r3 = r24.readShort()
            int r4 = r1.f2966f
            int r5 = r3 * 12
            int r4 = r4 + r5
            int r5 = r1.f2965e
            if (r4 > r5) goto L_0x0326
            if (r3 > 0) goto L_0x002b
            goto L_0x0326
        L_0x002b:
            r5 = 0
        L_0x002c:
            java.lang.String r9 = "ExifInterface"
            if (r5 >= r3) goto L_0x02b7
            int r10 = r24.readUnsignedShort()
            int r11 = r24.readUnsignedShort()
            int r12 = r24.readInt()
            int r13 = r24.s()
            long r13 = (long) r13
            r15 = 4
            long r13 = r13 + r15
            java.util.HashMap<java.lang.Integer, b.n.a.a$c>[] r17 = A
            r4 = r17[r2]
            java.lang.Integer r8 = java.lang.Integer.valueOf(r10)
            java.lang.Object r4 = r4.get(r8)
            b.n.a.a$c r4 = (b.n.a.a.c) r4
            r8 = 7
            if (r4 != 0) goto L_0x006b
            java.lang.StringBuilder r15 = new java.lang.StringBuilder
            r15.<init>()
            java.lang.String r6 = "Skip the tag entry since tag number is not defined: "
            r15.append(r6)
            r15.append(r10)
            java.lang.String r6 = r15.toString()
            android.util.Log.w(r9, r6)
            goto L_0x00e7
        L_0x006b:
            if (r11 <= 0) goto L_0x00d3
            int[] r6 = f2959k
            int r6 = r6.length
            if (r11 < r6) goto L_0x0073
            goto L_0x00d3
        L_0x0073:
            boolean r6 = r4.a(r11)
            if (r6 != 0) goto L_0x009c
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Skip the tag entry since data format ("
            r6.append(r7)
            java.lang.String[] r7 = f2958j
            r7 = r7[r11]
            r6.append(r7)
            java.lang.String r7 = ") is unexpected for tag: "
            r6.append(r7)
            java.lang.String r7 = r4.f2971b
            r6.append(r7)
            java.lang.String r6 = r6.toString()
            android.util.Log.w(r9, r6)
            goto L_0x00e7
        L_0x009c:
            if (r11 != r8) goto L_0x00a0
            int r11 = r4.f2972c
        L_0x00a0:
            long r6 = (long) r12
            int[] r15 = f2959k
            r15 = r15[r11]
            r16 = r9
            long r8 = (long) r15
            long r6 = r6 * r8
            r8 = 0
            int r15 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r15 < 0) goto L_0x00bc
            r8 = 2147483647(0x7fffffff, double:1.060997895E-314)
            int r15 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r15 <= 0) goto L_0x00b8
            goto L_0x00bc
        L_0x00b8:
            r8 = 1
            r9 = r16
            goto L_0x00ea
        L_0x00bc:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            r8.<init>()
            java.lang.String r9 = "Skip the tag entry since the number of components is invalid: "
            r8.append(r9)
            r8.append(r12)
            java.lang.String r8 = r8.toString()
            r9 = r16
            android.util.Log.w(r9, r8)
            goto L_0x00e9
        L_0x00d3:
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r7 = "Skip the tag entry since data format is invalid: "
            r6.append(r7)
            r6.append(r11)
            java.lang.String r6 = r6.toString()
            android.util.Log.w(r9, r6)
        L_0x00e7:
            r6 = 0
        L_0x00e9:
            r8 = 0
        L_0x00ea:
            if (r8 != 0) goto L_0x00f5
            r1.h(r13)
            r16 = r3
            r18 = r5
            goto L_0x02ae
        L_0x00f5:
            java.lang.String r8 = "Compression"
            r15 = 4
            int r18 = (r6 > r15 ? 1 : (r6 == r15 ? 0 : -1))
            if (r18 <= 0) goto L_0x01a2
            int r15 = r24.readInt()
            r16 = r3
            int r3 = r0.K
            r18 = r5
            r5 = 7
            if (r3 != r5) goto L_0x0165
            java.lang.String r3 = r4.f2971b
            java.lang.String r5 = "MakerNote"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L_0x0117
            r0.U = r15
            goto L_0x0160
        L_0x0117:
            r3 = 6
            if (r2 != r3) goto L_0x0160
            java.lang.String r5 = r4.f2971b
            java.lang.String r3 = "ThumbnailImage"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L_0x0160
            r0.V = r15
            r0.W = r12
            java.nio.ByteOrder r3 = r0.N
            r5 = 6
            b.n.a.a$b r3 = b.n.a.a.b.a((int) r5, (java.nio.ByteOrder) r3)
            int r5 = r0.V
            r20 = r11
            r19 = r12
            long r11 = (long) r5
            java.nio.ByteOrder r5 = r0.N
            b.n.a.a$b r5 = b.n.a.a.b.a((long) r11, (java.nio.ByteOrder) r5)
            int r11 = r0.W
            long r11 = (long) r11
            java.nio.ByteOrder r2 = r0.N
            b.n.a.a$b r2 = b.n.a.a.b.a((long) r11, (java.nio.ByteOrder) r2)
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r11 = r0.L
            r12 = 4
            r11 = r11[r12]
            r11.put(r8, r3)
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r3 = r0.L
            r3 = r3[r12]
            java.lang.String r11 = "JPEGInterchangeFormat"
            r3.put(r11, r5)
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r3 = r0.L
            r3 = r3[r12]
            java.lang.String r5 = "JPEGInterchangeFormatLength"
            r3.put(r5, r2)
            goto L_0x0179
        L_0x0160:
            r20 = r11
            r19 = r12
            goto L_0x0179
        L_0x0165:
            r20 = r11
            r19 = r12
            r2 = 10
            if (r3 != r2) goto L_0x0179
            java.lang.String r2 = r4.f2971b
            java.lang.String r3 = "JpgFromRaw"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L_0x0179
            r0.X = r15
        L_0x0179:
            long r2 = (long) r15
            long r11 = r2 + r6
            int r5 = r1.f2965e
            r21 = r4
            long r4 = (long) r5
            int r22 = (r11 > r4 ? 1 : (r11 == r4 ? 0 : -1))
            if (r22 > 0) goto L_0x0189
            r1.h(r2)
            goto L_0x01ac
        L_0x0189:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Skip the tag entry since data offset is invalid: "
            r2.append(r3)
            r2.append(r15)
            java.lang.String r2 = r2.toString()
            android.util.Log.w(r9, r2)
            r1.h(r13)
            goto L_0x02ae
        L_0x01a2:
            r16 = r3
            r21 = r4
            r18 = r5
            r20 = r11
            r19 = r12
        L_0x01ac:
            java.util.HashMap<java.lang.Integer, java.lang.Integer> r2 = D
            java.lang.Integer r3 = java.lang.Integer.valueOf(r10)
            java.lang.Object r2 = r2.get(r3)
            java.lang.Integer r2 = (java.lang.Integer) r2
            r3 = 8
            r4 = 3
            if (r2 == 0) goto L_0x0245
            r5 = -1
            r11 = r20
            if (r11 == r4) goto L_0x01e2
            r4 = 4
            if (r11 == r4) goto L_0x01dd
            if (r11 == r3) goto L_0x01d8
            r3 = 9
            if (r11 == r3) goto L_0x01d3
            r3 = 13
            if (r11 == r3) goto L_0x01d3
        L_0x01d0:
            r3 = 0
            goto L_0x01e8
        L_0x01d3:
            int r3 = r24.readInt()
            goto L_0x01e6
        L_0x01d8:
            short r3 = r24.readShort()
            goto L_0x01e6
        L_0x01dd:
            long r5 = r24.t()
            goto L_0x01d0
        L_0x01e2:
            int r3 = r24.readUnsignedShort()
        L_0x01e6:
            long r5 = (long) r3
            goto L_0x01d0
        L_0x01e8:
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 <= 0) goto L_0x022d
            int r3 = r1.f2965e
            long r3 = (long) r3
            int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r7 >= 0) goto L_0x022d
            java.util.Set<java.lang.Integer> r3 = r0.M
            int r4 = (int) r5
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            boolean r3 = r3.contains(r4)
            if (r3 != 0) goto L_0x020b
            r1.h(r5)
            int r2 = r2.intValue()
            r0.b((b.n.a.a.C0038a) r1, (int) r2)
            goto L_0x0241
        L_0x020b:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "Skip jump into the IFD since it has already been read: IfdType "
            r3.append(r4)
            r3.append(r2)
            java.lang.String r2 = " (at "
            r3.append(r2)
            r3.append(r5)
            java.lang.String r2 = ")"
            r3.append(r2)
            java.lang.String r2 = r3.toString()
            android.util.Log.w(r9, r2)
            goto L_0x0241
        L_0x022d:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Skip jump into the IFD since its offset is invalid: "
            r2.append(r3)
            r2.append(r5)
            java.lang.String r2 = r2.toString()
            android.util.Log.w(r9, r2)
        L_0x0241:
            r1.h(r13)
            goto L_0x02ae
        L_0x0245:
            r11 = r20
            int r2 = (int) r6
            byte[] r2 = new byte[r2]
            r1.readFully(r2)
            b.n.a.a$b r5 = new b.n.a.a$b
            r6 = r19
            r5.<init>(r11, r6, r2)
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r2 = r0.L
            r2 = r2[r25]
            r6 = r21
            java.lang.String r7 = r6.f2971b
            r2.put(r7, r5)
            java.lang.String r2 = r6.f2971b
            java.lang.String r7 = "DNGVersion"
            boolean r2 = r7.equals(r2)
            if (r2 == 0) goto L_0x026b
            r0.K = r4
        L_0x026b:
            java.lang.String r2 = r6.f2971b
            java.lang.String r4 = "Make"
            boolean r2 = r4.equals(r2)
            if (r2 != 0) goto L_0x027f
            java.lang.String r2 = r6.f2971b
            java.lang.String r4 = "Model"
            boolean r2 = r4.equals(r2)
            if (r2 == 0) goto L_0x028d
        L_0x027f:
            java.nio.ByteOrder r2 = r0.N
            java.lang.String r2 = r5.c(r2)
            java.lang.String r4 = "PENTAX"
            boolean r2 = r2.contains(r4)
            if (r2 != 0) goto L_0x02a0
        L_0x028d:
            java.lang.String r2 = r6.f2971b
            boolean r2 = r8.equals(r2)
            if (r2 == 0) goto L_0x02a2
            java.nio.ByteOrder r2 = r0.N
            int r2 = r5.b(r2)
            r4 = 65535(0xffff, float:9.1834E-41)
            if (r2 != r4) goto L_0x02a2
        L_0x02a0:
            r0.K = r3
        L_0x02a2:
            int r2 = r24.s()
            long r2 = (long) r2
            int r4 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1))
            if (r4 == 0) goto L_0x02ae
            r1.h(r13)
        L_0x02ae:
            int r5 = r18 + 1
            short r5 = (short) r5
            r2 = r25
            r3 = r16
            goto L_0x002c
        L_0x02b7:
            int r2 = r24.s()
            r3 = 4
            int r2 = r2 + r3
            int r3 = r1.f2965e
            if (r2 > r3) goto L_0x0326
            int r2 = r24.readInt()
            long r3 = (long) r2
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L_0x0312
            int r5 = r1.f2965e
            if (r2 >= r5) goto L_0x0312
            java.util.Set<java.lang.Integer> r5 = r0.M
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)
            boolean r5 = r5.contains(r6)
            if (r5 != 0) goto L_0x02fd
            r1.h(r3)
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r2 = r0.L
            r3 = 4
            r2 = r2[r3]
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L_0x02ee
            r0.b((b.n.a.a.C0038a) r1, (int) r3)
            goto L_0x0326
        L_0x02ee:
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r2 = r0.L
            r3 = 5
            r2 = r2[r3]
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L_0x0326
            r0.b((b.n.a.a.C0038a) r1, (int) r3)
            goto L_0x0326
        L_0x02fd:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Stop reading file since re-reading an IFD may cause an infinite loop: "
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.w(r9, r1)
            goto L_0x0326
        L_0x0312:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Stop reading file since a wrong offset may cause an infinite loop: "
            r1.append(r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.w(r9, r1)
        L_0x0326:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.n.a.a.b(b.n.a.a$a, int):void");
    }

    public static boolean a(byte[] bArr) {
        int i2 = 0;
        while (true) {
            byte[] bArr2 = f2954f;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:23:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00e6  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0088 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00f7 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(b.n.a.a.C0038a r10, int r11, int r12) {
        /*
            r9 = this;
            java.nio.ByteOrder r0 = java.nio.ByteOrder.BIG_ENDIAN
            r10.a(r0)
            long r0 = (long) r11
            r10.h(r0)
            byte r0 = r10.readByte()
            java.lang.String r1 = "Invalid marker: "
            r2 = -1
            if (r0 != r2) goto L_0x0153
            r3 = 1
            int r11 = r11 + r3
            byte r4 = r10.readByte()
            r5 = -40
            if (r4 != r5) goto L_0x0138
            int r11 = r11 + r3
        L_0x001d:
            byte r0 = r10.readByte()
            if (r0 != r2) goto L_0x011b
            int r11 = r11 + r3
            byte r0 = r10.readByte()
            int r11 = r11 + r3
            r1 = -39
            if (r0 == r1) goto L_0x0115
            r1 = -38
            if (r0 != r1) goto L_0x0033
            goto L_0x0115
        L_0x0033:
            int r1 = r10.readUnsignedShort()
            int r1 = r1 + -2
            int r11 = r11 + 2
            java.lang.String r4 = "Invalid length"
            if (r1 < 0) goto L_0x010f
            r5 = -31
            r6 = 0
            java.lang.String r7 = "Invalid exif"
            if (r0 == r5) goto L_0x00ba
            r5 = -2
            if (r0 == r5) goto L_0x0090
            switch(r0) {
                case -64: goto L_0x0057;
                case -63: goto L_0x0057;
                case -62: goto L_0x0057;
                case -61: goto L_0x0057;
                default: goto L_0x004c;
            }
        L_0x004c:
            switch(r0) {
                case -59: goto L_0x0057;
                case -58: goto L_0x0057;
                case -57: goto L_0x0057;
                default: goto L_0x004f;
            }
        L_0x004f:
            switch(r0) {
                case -55: goto L_0x0057;
                case -54: goto L_0x0057;
                case -53: goto L_0x0057;
                default: goto L_0x0052;
            }
        L_0x0052:
            switch(r0) {
                case -51: goto L_0x0057;
                case -50: goto L_0x0057;
                case -49: goto L_0x0057;
                default: goto L_0x0055;
            }
        L_0x0055:
            goto L_0x00e4
        L_0x0057:
            int r0 = r10.skipBytes(r3)
            if (r0 != r3) goto L_0x0088
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r0 = r9.L
            r0 = r0[r12]
            int r5 = r10.readUnsignedShort()
            long r5 = (long) r5
            java.nio.ByteOrder r7 = r9.N
            b.n.a.a$b r5 = b.n.a.a.b.a((long) r5, (java.nio.ByteOrder) r7)
            java.lang.String r6 = "ImageLength"
            r0.put(r6, r5)
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r0 = r9.L
            r0 = r0[r12]
            int r5 = r10.readUnsignedShort()
            long r5 = (long) r5
            java.nio.ByteOrder r7 = r9.N
            b.n.a.a$b r5 = b.n.a.a.b.a((long) r5, (java.nio.ByteOrder) r7)
            java.lang.String r6 = "ImageWidth"
            r0.put(r6, r5)
            int r1 = r1 + -5
            goto L_0x00e4
        L_0x0088:
            java.io.IOException r10 = new java.io.IOException
            java.lang.String r11 = "Invalid SOFx"
            r10.<init>(r11)
            throw r10
        L_0x0090:
            byte[] r0 = new byte[r1]
            int r5 = r10.read(r0)
            if (r5 != r1) goto L_0x00b4
            java.lang.String r1 = "UserComment"
            java.lang.String r5 = r9.a((java.lang.String) r1)
            if (r5 != 0) goto L_0x00b2
            java.util.HashMap<java.lang.String, b.n.a.a$b>[] r5 = r9.L
            r5 = r5[r3]
            java.lang.String r7 = new java.lang.String
            java.nio.charset.Charset r8 = E
            r7.<init>(r0, r8)
            b.n.a.a$b r0 = b.n.a.a.b.a((java.lang.String) r7)
            r5.put(r1, r0)
        L_0x00b2:
            r1 = 0
            goto L_0x00e4
        L_0x00b4:
            java.io.IOException r10 = new java.io.IOException
            r10.<init>(r7)
            throw r10
        L_0x00ba:
            r0 = 6
            if (r1 >= r0) goto L_0x00be
            goto L_0x00e4
        L_0x00be:
            byte[] r5 = new byte[r0]
            int r8 = r10.read(r5)
            if (r8 != r0) goto L_0x0109
            int r11 = r11 + 6
            int r1 = r1 + -6
            byte[] r0 = F
            boolean r0 = java.util.Arrays.equals(r5, r0)
            if (r0 != 0) goto L_0x00d3
            goto L_0x00e4
        L_0x00d3:
            if (r1 <= 0) goto L_0x0103
            r9.T = r11
            byte[] r0 = new byte[r1]
            int r5 = r10.read(r0)
            if (r5 != r1) goto L_0x00fd
            int r11 = r11 + r1
            r9.a((byte[]) r0, (int) r12)
            goto L_0x00b2
        L_0x00e4:
            if (r1 < 0) goto L_0x00f7
            int r0 = r10.skipBytes(r1)
            if (r0 != r1) goto L_0x00ef
            int r11 = r11 + r1
            goto L_0x001d
        L_0x00ef:
            java.io.IOException r10 = new java.io.IOException
            java.lang.String r11 = "Invalid JPEG segment"
            r10.<init>(r11)
            throw r10
        L_0x00f7:
            java.io.IOException r10 = new java.io.IOException
            r10.<init>(r4)
            throw r10
        L_0x00fd:
            java.io.IOException r10 = new java.io.IOException
            r10.<init>(r7)
            throw r10
        L_0x0103:
            java.io.IOException r10 = new java.io.IOException
            r10.<init>(r7)
            throw r10
        L_0x0109:
            java.io.IOException r10 = new java.io.IOException
            r10.<init>(r7)
            throw r10
        L_0x010f:
            java.io.IOException r10 = new java.io.IOException
            r10.<init>(r4)
            throw r10
        L_0x0115:
            java.nio.ByteOrder r11 = r9.N
            r10.a(r11)
            return
        L_0x011b:
            java.io.IOException r10 = new java.io.IOException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "Invalid marker:"
            r11.append(r12)
            r12 = r0 & 255(0xff, float:3.57E-43)
            java.lang.String r12 = java.lang.Integer.toHexString(r12)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L_0x0138:
            java.io.IOException r10 = new java.io.IOException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r1)
            r12 = r0 & 255(0xff, float:3.57E-43)
            java.lang.String r12 = java.lang.Integer.toHexString(r12)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L_0x0153:
            java.io.IOException r10 = new java.io.IOException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r11.append(r1)
            r12 = r0 & 255(0xff, float:3.57E-43)
            java.lang.String r12 = java.lang.Integer.toHexString(r12)
            r11.append(r12)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            goto L_0x016f
        L_0x016e:
            throw r10
        L_0x016f:
            goto L_0x016e
        */
        throw new UnsupportedOperationException("Method not decompiled: b.n.a.a.a(b.n.a.a$a, int, int):void");
    }

    public final void a(C0038a aVar) {
        c(aVar);
        b bVar = this.L[1].get("MakerNote");
        if (bVar != null) {
            C0038a aVar2 = new C0038a(bVar.f2969c);
            aVar2.a(this.N);
            byte[] bArr = new byte[f2955g.length];
            aVar2.readFully(bArr);
            aVar2.h(0);
            byte[] bArr2 = new byte[f2956h.length];
            aVar2.readFully(bArr2);
            if (Arrays.equals(bArr, f2955g)) {
                aVar2.h(8);
            } else if (Arrays.equals(bArr2, f2956h)) {
                aVar2.h(12);
            }
            b(aVar2, 6);
            b bVar2 = this.L[7].get("PreviewImageStart");
            b bVar3 = this.L[7].get("PreviewImageLength");
            if (!(bVar2 == null || bVar3 == null)) {
                this.L[5].put("JPEGInterchangeFormat", bVar2);
                this.L[5].put("JPEGInterchangeFormatLength", bVar3);
            }
            b bVar4 = this.L[8].get("AspectFrame");
            if (bVar4 != null) {
                int[] iArr = (int[]) bVar4.d(this.N);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                } else if (iArr[2] > iArr[0] && iArr[3] > iArr[1]) {
                    int i2 = (iArr[2] - iArr[0]) + 1;
                    int i3 = (iArr[3] - iArr[1]) + 1;
                    if (i2 < i3) {
                        int i4 = i2 + i3;
                        i3 = i4 - i3;
                        i2 = i4 - i3;
                    }
                    b a2 = b.a(i2, this.N);
                    b a3 = b.a(i3, this.N);
                    this.L[0].put("ImageWidth", a2);
                    this.L[0].put("ImageLength", a3);
                }
            }
        }
    }

    public final void b(C0038a aVar, HashMap hashMap) {
        b bVar = (b) hashMap.get("StripOffsets");
        b bVar2 = (b) hashMap.get("StripByteCounts");
        if (!(bVar == null || bVar2 == null)) {
            long[] a2 = a(bVar.d(this.N));
            long[] a3 = a(bVar2.d(this.N));
            if (a2 == null) {
                Log.w("ExifInterface", "stripOffsets should not be null.");
            } else if (a3 == null) {
                Log.w("ExifInterface", "stripByteCounts should not be null.");
            } else {
                long j2 = 0;
                for (long j3 : a3) {
                    j2 += j3;
                }
                byte[] bArr = new byte[((int) j2)];
                int i2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < a2.length; i4++) {
                    int i5 = (int) a2[i4];
                    int i6 = (int) a3[i4];
                    int i7 = i5 - i2;
                    if (i7 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                    }
                    aVar.h((long) i7);
                    int i8 = i2 + i7;
                    byte[] bArr2 = new byte[i6];
                    aVar.read(bArr2);
                    i2 = i8 + i6;
                    System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
                    i3 += bArr2.length;
                }
                this.O = true;
                this.R = bArr;
                this.Q = bArr.length;
            }
        }
    }

    public final void a(byte[] bArr, int i2) {
        C0038a aVar = new C0038a(bArr);
        a(aVar, bArr.length);
        b(aVar, i2);
    }

    public final void a() {
        String a2 = a("DateTimeOriginal");
        if (a2 != null && a("DateTime") == null) {
            this.L[0].put("DateTime", b.a(a2));
        }
        if (a("ImageWidth") == null) {
            this.L[0].put("ImageWidth", b.a(0, this.N));
        }
        if (a("ImageLength") == null) {
            this.L[0].put("ImageLength", b.a(0, this.N));
        }
        if (a("Orientation") == null) {
            this.L[0].put("Orientation", b.a(0, this.N));
        }
        if (a("LightSource") == null) {
            this.L[1].put("LightSource", b.a(0, this.N));
        }
    }

    public final boolean b(HashMap hashMap) {
        b bVar = (b) hashMap.get("ImageLength");
        b bVar2 = (b) hashMap.get("ImageWidth");
        if (!(bVar == null || bVar2 == null)) {
            int b2 = bVar.b(this.N);
            int b3 = bVar2.b(this.N);
            if (b2 <= 512 && b3 <= 512) {
                return true;
            }
        }
        return false;
    }

    public final void b(InputStream inputStream) {
        a(0, 5);
        a(0, 4);
        a(5, 4);
        b bVar = this.L[1].get("PixelXDimension");
        b bVar2 = this.L[1].get("PixelYDimension");
        if (!(bVar == null || bVar2 == null)) {
            this.L[0].put("ImageWidth", bVar);
            this.L[0].put("ImageLength", bVar2);
        }
        if (this.L[4].isEmpty() && b((HashMap) this.L[5])) {
            HashMap<String, b>[] hashMapArr = this.L;
            hashMapArr[4] = hashMapArr[5];
            hashMapArr[5] = new HashMap<>();
        }
        if (!b((HashMap) this.L[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
    }

    public final void a(C0038a aVar, int i2) {
        this.N = e(aVar);
        aVar.a(this.N);
        int readUnsignedShort = aVar.readUnsignedShort();
        int i3 = this.K;
        if (i3 == 7 || i3 == 10 || readUnsignedShort == 42) {
            int readInt = aVar.readInt();
            if (readInt < 8 || readInt >= i2) {
                throw new IOException("Invalid first Ifd offset: " + readInt);
            }
            int i4 = readInt - 8;
            if (i4 > 0 && aVar.skipBytes(i4) != i4) {
                throw new IOException("Couldn't jump to first Ifd: " + i4);
            }
            return;
        }
        throw new IOException("Invalid start code: " + Integer.toHexString(readUnsignedShort));
    }

    public final void a(C0038a aVar, HashMap hashMap) {
        int i2;
        b bVar = (b) hashMap.get("JPEGInterchangeFormat");
        b bVar2 = (b) hashMap.get("JPEGInterchangeFormatLength");
        if (bVar != null && bVar2 != null) {
            int b2 = bVar.b(this.N);
            int min = Math.min(bVar2.b(this.N), aVar.available() - b2);
            int i3 = this.K;
            if (i3 == 4 || i3 == 9 || i3 == 10) {
                i2 = this.T;
            } else {
                if (i3 == 7) {
                    i2 = this.U;
                }
                if (b2 > 0 && min > 0) {
                    this.O = true;
                    this.P = b2;
                    this.Q = min;
                    if (this.I == null && this.J == null) {
                        byte[] bArr = new byte[min];
                        aVar.h((long) b2);
                        aVar.readFully(bArr);
                        this.R = bArr;
                        return;
                    }
                    return;
                }
            }
            b2 += i2;
            if (b2 > 0) {
            }
        }
    }

    public final boolean a(HashMap hashMap) {
        b bVar = (b) hashMap.get("BitsPerSample");
        if (bVar != null) {
            int[] iArr = (int[]) bVar.d(this.N);
            if (Arrays.equals(f2951c, iArr)) {
                return true;
            }
            if (this.K == 3) {
                b bVar2 = (b) hashMap.get("PhotometricInterpretation");
                if (bVar2 != null) {
                    int b2 = bVar2.b(this.N);
                    if ((b2 == 1 && Arrays.equals(iArr, f2953e)) || (b2 == 6 && Arrays.equals(iArr, f2951c))) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void a(int i2, int i3) {
        if (!this.L[i2].isEmpty() && !this.L[i3].isEmpty()) {
            b bVar = this.L[i2].get("ImageLength");
            b bVar2 = this.L[i2].get("ImageWidth");
            b bVar3 = this.L[i3].get("ImageLength");
            b bVar4 = this.L[i3].get("ImageWidth");
            if (bVar != null && bVar2 != null && bVar3 != null && bVar4 != null) {
                int b2 = bVar.b(this.N);
                int b3 = bVar2.b(this.N);
                int b4 = bVar3.b(this.N);
                int b5 = bVar4.b(this.N);
                if (b2 < b4 && b3 < b5) {
                    HashMap<String, b>[] hashMapArr = this.L;
                    HashMap<String, b> hashMap = hashMapArr[i2];
                    hashMapArr[i2] = hashMapArr[i3];
                    hashMapArr[i3] = hashMap;
                }
            }
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception unused) {
            }
        }
    }

    public static long[] a(Object obj) {
        if (obj instanceof int[]) {
            int[] iArr = (int[]) obj;
            long[] jArr = new long[iArr.length];
            for (int i2 = 0; i2 < iArr.length; i2++) {
                jArr[i2] = (long) iArr[i2];
            }
            return jArr;
        } else if (obj instanceof long[]) {
            return (long[]) obj;
        } else {
            return null;
        }
    }
}
