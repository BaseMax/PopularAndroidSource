package c.e.a.b.d;

import android.os.RemoteException;
import android.util.Log;
import c.e.a.b.d.d.L;
import c.e.a.b.d.d.M;
import c.e.a.b.d.d.r;
import c.e.a.b.e.a;
import c.e.a.b.e.b;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

public abstract class m extends M {

    /* renamed from: a  reason: collision with root package name */
    public int f10083a;

    public m(byte[] bArr) {
        r.a(bArr.length == 25);
        this.f10083a = Arrays.hashCode(bArr);
    }

    public static byte[] c(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public abstract byte[] A();

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof L)) {
            try {
                L l2 = (L) obj;
                if (l2.w() != hashCode()) {
                    return false;
                }
                a y = l2.y();
                if (y == null) {
                    return false;
                }
                return Arrays.equals(A(), (byte[]) b.a(y));
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f10083a;
    }

    public final int w() {
        return hashCode();
    }

    public final a y() {
        return b.a(A());
    }
}
