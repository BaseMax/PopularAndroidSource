package c.e.a.a.e.e;

import c.e.a.a.e.q;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.p;

/* compiled from: TrackEncryptionBox */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f7875a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7876b;

    /* renamed from: c  reason: collision with root package name */
    public final q.a f7877c;

    /* renamed from: d  reason: collision with root package name */
    public final int f7878d;

    /* renamed from: e  reason: collision with root package name */
    public final byte[] f7879e;

    public o(boolean z, String str, int i2, byte[] bArr, int i3, int i4, byte[] bArr2) {
        boolean z2 = true;
        C0737e.a((bArr2 != null ? false : z2) ^ (i2 == 0));
        this.f7875a = z;
        this.f7876b = str;
        this.f7878d = i2;
        this.f7879e = bArr2;
        this.f7877c = new q.a(a(str), bArr, i3, i4);
    }

    public static int a(String str) {
        if (str == null) {
            return 1;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case 3046605:
                if (str.equals("cbc1")) {
                    c2 = 2;
                    break;
                }
                break;
            case 3046671:
                if (str.equals("cbcs")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3049879:
                if (str.equals("cenc")) {
                    c2 = 0;
                    break;
                }
                break;
            case 3049895:
                if (str.equals("cens")) {
                    c2 = 1;
                    break;
                }
                break;
        }
        if (c2 == 0 || c2 == 1) {
            return 1;
        }
        if (c2 == 2 || c2 == 3) {
            return 2;
        }
        p.d("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
        return 1;
    }
}
