package com.facebook.crypto.keygen;

import com.facebook.crypto.a.a;
import com.facebook.crypto.e.b;
import java.security.SecureRandom;

public class PasswordBasedKeyDerivation {
    public static final int DEFAULT_ITERATIONS = 4096;
    public static final int DEFAULT_KEY_LENGTH = 16;
    public static final int MINIMUM_ITERATIONS = 1;
    public static final int MINIMUM_KEY_LENGTH = 8;

    /* renamed from: a  reason: collision with root package name */
    private final b f2472a;

    /* renamed from: b  reason: collision with root package name */
    private final SecureRandom f2473b;
    private int c = 4096;
    private String d;
    private byte[] e;
    private int f = 16;
    private byte[] g;

    private native int nativePbkdf2(String str, byte[] bArr, int i, byte[] bArr2);

    public PasswordBasedKeyDerivation(SecureRandom secureRandom, b bVar) {
        this.f2473b = secureRandom;
        this.f2472a = bVar;
    }

    public PasswordBasedKeyDerivation setIterations(int i) {
        if (i > 0) {
            this.c = i;
            return this;
        }
        throw new IllegalArgumentException("Iterations cannot be less than 1");
    }

    public PasswordBasedKeyDerivation setPassword(String str) {
        if (str != null) {
            this.d = str;
            return this;
        }
        throw new IllegalArgumentException("Password cannot be null");
    }

    public PasswordBasedKeyDerivation setSalt(byte[] bArr) {
        if (bArr == null || bArr.length >= 4) {
            this.e = bArr;
            return this;
        }
        throw new IllegalArgumentException("Salt cannot be shorter than 8 bytes");
    }

    public PasswordBasedKeyDerivation setKeyLengthInBytes(int i) {
        if (i >= 8) {
            this.f = i;
            return this;
        }
        throw new IllegalArgumentException("Key length cannot be less than 8 bytes");
    }

    public byte[] generate() throws a {
        if (this.d != null) {
            if (this.e == null) {
                this.e = new byte[16];
                this.f2473b.nextBytes(this.e);
            }
            this.g = new byte[this.f];
            this.f2472a.ensureCryptoLoaded();
            if (nativePbkdf2(this.d, this.e, this.c, this.g) == 1) {
                return this.g;
            }
            throw new RuntimeException("Native PBKDF2 failed...");
        }
        throw new IllegalStateException("Password was not set");
    }

    public int getIterations() {
        return this.c;
    }

    public String getPassword() {
        return this.d;
    }

    public byte[] getSalt() {
        return this.e;
    }

    public int getKeyLengthInBytes() {
        return this.f;
    }

    public byte[] getGeneratedKey() {
        return this.g;
    }
}
