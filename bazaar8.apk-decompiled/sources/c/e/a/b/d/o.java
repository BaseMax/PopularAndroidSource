package c.e.a.b.d;

import java.lang.ref.WeakReference;

public abstract class o extends m {

    /* renamed from: b  reason: collision with root package name */
    public static final WeakReference<byte[]> f10085b = new WeakReference<>(null);

    /* renamed from: c  reason: collision with root package name */
    public WeakReference<byte[]> f10086c = f10085b;

    public o(byte[] bArr) {
        super(bArr);
    }

    public final byte[] A() {
        byte[] bArr;
        synchronized (this) {
            bArr = (byte[]) this.f10086c.get();
            if (bArr == null) {
                bArr = B();
                this.f10086c = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    public abstract byte[] B();
}
