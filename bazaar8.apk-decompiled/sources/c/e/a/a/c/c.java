package c.e.a.a.c;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import c.e.a.a.o.I;

/* compiled from: CryptoInfo */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public byte[] f7523a;

    /* renamed from: b  reason: collision with root package name */
    public byte[] f7524b;

    /* renamed from: c  reason: collision with root package name */
    public int f7525c;

    /* renamed from: d  reason: collision with root package name */
    public int[] f7526d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f7527e;

    /* renamed from: f  reason: collision with root package name */
    public int f7528f;

    /* renamed from: g  reason: collision with root package name */
    public int f7529g;

    /* renamed from: h  reason: collision with root package name */
    public int f7530h;

    /* renamed from: i  reason: collision with root package name */
    public final MediaCodec.CryptoInfo f7531i = new MediaCodec.CryptoInfo();

    /* renamed from: j  reason: collision with root package name */
    public final a f7532j;

    @TargetApi(24)
    /* compiled from: CryptoInfo */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final MediaCodec.CryptoInfo f7533a;

        /* renamed from: b  reason: collision with root package name */
        public final MediaCodec.CryptoInfo.Pattern f7534b;

        public a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f7533a = cryptoInfo;
            this.f7534b = new MediaCodec.CryptoInfo.Pattern(0, 0);
        }

        public final void a(int i2, int i3) {
            this.f7534b.set(i2, i3);
            this.f7533a.setPattern(this.f7534b);
        }
    }

    public c() {
        this.f7532j = I.f9565a >= 24 ? new a(this.f7531i) : null;
    }

    public void a(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3, int i4, int i5) {
        this.f7528f = i2;
        this.f7526d = iArr;
        this.f7527e = iArr2;
        this.f7524b = bArr;
        this.f7523a = bArr2;
        this.f7525c = i3;
        this.f7529g = i4;
        this.f7530h = i5;
        MediaCodec.CryptoInfo cryptoInfo = this.f7531i;
        cryptoInfo.numSubSamples = i2;
        cryptoInfo.numBytesOfClearData = iArr;
        cryptoInfo.numBytesOfEncryptedData = iArr2;
        cryptoInfo.key = bArr;
        cryptoInfo.iv = bArr2;
        cryptoInfo.mode = i3;
        if (I.f9565a >= 24) {
            this.f7532j.a(i4, i5);
        }
    }

    public MediaCodec.CryptoInfo a() {
        return this.f7531i;
    }
}
