package c.e.a.a.e;

import e.a.a.a.a.d.c;

/* compiled from: MpegAudioHeader */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final String[] f8308a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f8309b = {44100, 48000, 32000};

    /* renamed from: c  reason: collision with root package name */
    public static final int[] f8310c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d  reason: collision with root package name */
    public static final int[] f8311d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e  reason: collision with root package name */
    public static final int[] f8312e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f  reason: collision with root package name */
    public static final int[] f8313f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g  reason: collision with root package name */
    public static final int[] f8314g = {c.MAX_BYTE_SIZE_PER_FILE, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: h  reason: collision with root package name */
    public int f8315h;

    /* renamed from: i  reason: collision with root package name */
    public String f8316i;

    /* renamed from: j  reason: collision with root package name */
    public int f8317j;

    /* renamed from: k  reason: collision with root package name */
    public int f8318k;

    /* renamed from: l  reason: collision with root package name */
    public int f8319l;
    public int m;
    public int n;

    public static int a(int i2) {
        int i3;
        if ((i2 & -2097152) != -2097152) {
            return -1;
        }
        int i4 = (i2 >>> 19) & 3;
        if (i4 == 1) {
            return -1;
        }
        int i5 = (i2 >>> 17) & 3;
        if (i5 == 0) {
            return -1;
        }
        int i6 = (i2 >>> 12) & 15;
        if (i6 == 0 || i6 == 15) {
            return -1;
        }
        int i7 = (i2 >>> 10) & 3;
        if (i7 == 3) {
            return -1;
        }
        int i8 = f8309b[i7];
        if (i4 == 2) {
            i8 /= 2;
        } else if (i4 == 0) {
            i8 /= 4;
        }
        int i9 = (i2 >>> 9) & 1;
        if (i5 == 3) {
            return ((((i4 == 3 ? f8310c[i6 - 1] : f8311d[i6 - 1]) * 12) / i8) + i9) * 4;
        }
        if (i4 == 3) {
            i3 = i5 == 2 ? f8312e[i6 - 1] : f8313f[i6 - 1];
        } else {
            i3 = f8314g[i6 - 1];
        }
        int i10 = 144;
        if (i4 == 3) {
            return ((i3 * 144) / i8) + i9;
        }
        if (i5 == 1) {
            i10 = 72;
        }
        return ((i10 * i3) / i8) + i9;
    }

    public static boolean a(int i2, m mVar) {
        int i3;
        int i4;
        if ((i2 & -2097152) != -2097152) {
            return false;
        }
        int i5 = (i2 >>> 19) & 3;
        if (i5 == 1) {
            return false;
        }
        int i6 = (i2 >>> 17) & 3;
        if (i6 == 0) {
            return false;
        }
        int i7 = (i2 >>> 12) & 15;
        if (i7 == 0 || i7 == 15) {
            return false;
        }
        int i8 = (i2 >>> 10) & 3;
        if (i8 == 3) {
            return false;
        }
        int i9 = f8309b[i8];
        if (i5 == 2) {
            i9 /= 2;
        } else if (i5 == 0) {
            i9 /= 4;
        }
        int i10 = i9;
        int i11 = (i2 >>> 9) & 1;
        int i12 = 1152;
        if (i6 == 3) {
            i4 = ((((i5 == 3 ? f8310c[i7 - 1] : f8311d[i7 - 1]) * 12) / i10) + i11) * 4;
            i3 = 384;
        } else {
            int i13 = 144;
            if (i5 == 3) {
                i4 = (((i6 == 2 ? f8312e[i7 - 1] : f8313f[i7 - 1]) * 144) / i10) + i11;
                i3 = 1152;
            } else {
                int i14 = f8314g[i7 - 1];
                if (i6 == 1) {
                    i12 = 576;
                }
                if (i6 == 1) {
                    i13 = 72;
                }
                i4 = ((i13 * i14) / i10) + i11;
                i3 = i12;
            }
        }
        mVar.a(i5, f8308a[3 - i6], i4, i10, ((i2 >> 6) & 3) == 3 ? 1 : 2, ((i4 * 8) * i10) / i3, i3);
        return true;
    }

    public final void a(int i2, String str, int i3, int i4, int i5, int i6, int i7) {
        this.f8315h = i2;
        this.f8316i = str;
        this.f8317j = i3;
        this.f8318k = i4;
        this.f8319l = i5;
        this.m = i6;
        this.n = i7;
    }
}
