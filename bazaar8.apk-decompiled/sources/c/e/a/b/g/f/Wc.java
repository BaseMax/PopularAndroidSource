package c.e.a.b.g.f;

import com.google.android.gms.internal.measurement.zziu;
import java.io.IOException;

public abstract class Wc {

    /* renamed from: a  reason: collision with root package name */
    public volatile int f10275a = -1;

    public static final byte[] a(Wc wc) {
        byte[] bArr = new byte[wc.b()];
        try {
            Qc a2 = Qc.a(bArr, 0, bArr.length);
            wc.a(a2);
            a2.a();
            return bArr;
        } catch (IOException e2) {
            throw new RuntimeException("Serializing to a byte array threw an IOException (should never happen).", e2);
        }
    }

    public int a() {
        return 0;
    }

    public abstract Wc a(Pc pc);

    public void a(Qc qc) {
    }

    public final int b() {
        int a2 = a();
        this.f10275a = a2;
        return a2;
    }

    /* renamed from: c */
    public Wc clone() {
        return (Wc) super.clone();
    }

    public String toString() {
        return Xc.a(this);
    }

    public static final <T extends Wc> T a(T t, byte[] bArr) {
        a(t, bArr, 0, bArr.length);
        return t;
    }

    public static final <T extends Wc> T a(T t, byte[] bArr, int i2, int i3) {
        try {
            Pc a2 = Pc.a(bArr, 0, i3);
            t.a(a2);
            a2.b(0);
            return t;
        } catch (zziu e2) {
            throw e2;
        } catch (IOException e3) {
            throw new RuntimeException("Reading from a byte array threw an IOException (should never happen).", e3);
        }
    }
}
