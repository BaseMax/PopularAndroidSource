package com.yandex.metrica.impl.ob;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class nw {

    /* renamed from: a  reason: collision with root package name */
    private final String f6464a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f6465b;
    private final byte[] c;

    public nw(String str, byte[] bArr, byte[] bArr2) {
        this.f6464a = str;
        this.f6465b = bArr;
        this.c = bArr2;
    }

    public byte[] a(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f6465b, "AES");
        Cipher instance = Cipher.getInstance(this.f6464a);
        instance.init(1, secretKeySpec, new IvParameterSpec(this.c));
        return instance.doFinal(bArr);
    }

    public byte[] b(byte[] bArr) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        return a(bArr, 0, bArr.length);
    }

    public byte[] a(byte[] bArr, int i, int i2) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException, InvalidKeyException, BadPaddingException, IllegalBlockSizeException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(this.f6465b, "AES");
        Cipher instance = Cipher.getInstance(this.f6464a);
        instance.init(2, secretKeySpec, new IvParameterSpec(this.c));
        return instance.doFinal(bArr, i, i2);
    }
}
