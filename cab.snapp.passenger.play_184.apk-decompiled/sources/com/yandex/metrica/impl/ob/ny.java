package com.yandex.metrica.impl.ob;

import android.util.Base64;
import com.yandex.metrica.impl.bv;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class ny {

    /* renamed from: a  reason: collision with root package name */
    private final String f6467a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6468b;

    public ny() {
        this("AES/CBC/PKCS5Padding", "RSA/ECB/PKCS1Padding");
    }

    ny(String str, String str2) {
        this.f6467a = str;
        this.f6468b = str2;
    }

    public byte[] a(byte[] bArr) {
        try {
            SecureRandom secureRandom = new SecureRandom();
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            secureRandom.nextBytes(bArr3);
            secureRandom.nextBytes(bArr2);
            return a(bArr, bArr3, bArr2, KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDhmH/m2qrRjxDHP794CeaZpENQNYydf8pqyXJilo6XxK+n+pvo27VxWfB3Z1yHrtKow+eZXKLQzrQ8wZMfRgADrYCQJ20y2hGZEUCN1tGSM+xqVKMeCtVi3NvQa54Cx7mT5ECVsH5DKEs/aeScDHP56FzcgEbtOSwyRZ8dsEM0wwIDAQAB", 0))));
        } catch (NoSuchAlgorithmException | InvalidKeySpecException unused) {
            return null;
        }
    }

    /* access modifiers changed from: package-private */
    public byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3, PublicKey publicKey) {
        ByteArrayOutputStream byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream(bArr2.length + bArr3.length);
            byteArrayOutputStream3.write(bArr2);
            byteArrayOutputStream3.write(bArr3);
            byte[] byteArray = byteArrayOutputStream3.toByteArray();
            byteArrayOutputStream3.close();
            Cipher instance = Cipher.getInstance(this.f6468b);
            instance.init(1, publicKey);
            byteArrayOutputStream = new ByteArrayOutputStream(bArr.length);
            try {
                byteArrayOutputStream.write(instance.doFinal(byteArray));
                byteArrayOutputStream.write(new nw(this.f6467a, bArr2, bArr3).a(bArr));
                byte[] byteArray2 = byteArrayOutputStream.toByteArray();
                bv.a((Closeable) byteArrayOutputStream);
                return byteArray2;
            } catch (Exception unused) {
                bv.a((Closeable) byteArrayOutputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                byteArrayOutputStream2 = byteArrayOutputStream;
                bv.a((Closeable) byteArrayOutputStream2);
                throw th;
            }
        } catch (Exception unused2) {
            byteArrayOutputStream = null;
            bv.a((Closeable) byteArrayOutputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            bv.a((Closeable) byteArrayOutputStream2);
            throw th;
        }
    }
}
