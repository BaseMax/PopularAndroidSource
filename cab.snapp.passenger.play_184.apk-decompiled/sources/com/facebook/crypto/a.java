package com.facebook.crypto;

import com.facebook.crypto.a.b;

final class a implements com.facebook.crypto.b.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.facebook.crypto.b.a f2449a;

    /* renamed from: b  reason: collision with root package name */
    private final CryptoConfig f2450b;

    public a(com.facebook.crypto.b.a aVar, CryptoConfig cryptoConfig) {
        this.f2449a = aVar;
        this.f2450b = cryptoConfig;
    }

    public final byte[] getCipherKey() throws b {
        byte[] cipherKey = this.f2449a.getCipherKey();
        a(cipherKey, this.f2450b.keyLength, "Key");
        return cipherKey;
    }

    public final byte[] getMacKey() throws b {
        byte[] macKey = this.f2449a.getMacKey();
        a(macKey, 64, "Mac");
        return macKey;
    }

    public final byte[] getNewIV() throws b {
        byte[] newIV = this.f2449a.getNewIV();
        a(newIV, this.f2450b.ivLength, "IV");
        return newIV;
    }

    public final void destroyKeys() {
        this.f2449a.destroyKeys();
    }

    private static void a(byte[] bArr, int i, String str) {
        if (bArr.length != i) {
            throw new IllegalStateException(str + " should be " + i + " bytes long but is " + bArr.length);
        }
    }
}
