package c.e.a.a.j.d;

import android.net.Uri;
import c.e.a.a.n.A;
import c.e.a.a.n.j;
import c.e.a.a.n.k;
import c.e.a.a.n.l;
import c.e.a.a.o.C0737e;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: Aes128DataSource */
public class d implements j {

    /* renamed from: a  reason: collision with root package name */
    public final j f8789a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f8790b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f8791c;

    /* renamed from: d  reason: collision with root package name */
    public CipherInputStream f8792d;

    public d(j jVar, byte[] bArr, byte[] bArr2) {
        this.f8789a = jVar;
        this.f8790b = bArr;
        this.f8791c = bArr2;
    }

    public final void a(A a2) {
        this.f8789a.a(a2);
    }

    public Cipher b() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    public void close() {
        if (this.f8792d != null) {
            this.f8792d = null;
            this.f8789a.close();
        }
    }

    public final Uri getUri() {
        return this.f8789a.getUri();
    }

    public final int read(byte[] bArr, int i2, int i3) {
        C0737e.a(this.f8792d);
        int read = this.f8792d.read(bArr, i2, i3);
        if (read < 0) {
            return -1;
        }
        return read;
    }

    public final long a(l lVar) {
        try {
            Cipher b2 = b();
            try {
                b2.init(2, new SecretKeySpec(this.f8790b, "AES"), new IvParameterSpec(this.f8791c));
                k kVar = new k(this.f8789a, lVar);
                this.f8792d = new CipherInputStream(kVar, b2);
                kVar.t();
                return -1;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                throw new RuntimeException(e2);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e3) {
            throw new RuntimeException(e3);
        }
    }

    public final Map<String, List<String>> a() {
        return this.f8789a.a();
    }
}
