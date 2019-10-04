package com.facebook.crypto.cipher;

import com.facebook.crypto.e.b;

public class NativeGCMCipher {
    public static final String FAILURE = "Failure";

    /* renamed from: a  reason: collision with root package name */
    private int f2453a = a.UNINITIALIZED$33437bee;

    /* renamed from: b  reason: collision with root package name */
    private final b f2454b;
    private long mCtxPtr;

    enum a {
        ;
        
        public static final int DECRYPT_FINALIZED$33437bee = 5;
        public static final int DECRYPT_INITIALIZED$33437bee = 3;
        public static final int ENCRYPT_FINALIZED$33437bee = 4;
        public static final int ENCRYPT_INITIALIZED$33437bee = 2;
        public static final int UNINITIALIZED$33437bee = 1;

        static {
            f2455a = new int[]{UNINITIALIZED$33437bee, ENCRYPT_INITIALIZED$33437bee, DECRYPT_INITIALIZED$33437bee, ENCRYPT_FINALIZED$33437bee, DECRYPT_FINALIZED$33437bee};
        }

        public static int[] values$616c7b18() {
            return (int[]) f2455a.clone();
        }
    }

    private native int nativeDecryptFinal(byte[] bArr, int i);

    private native int nativeDecryptInit(byte[] bArr, byte[] bArr2);

    private native int nativeDestroy();

    private native int nativeEncryptFinal(byte[] bArr, int i);

    private native int nativeEncryptInit(byte[] bArr, byte[] bArr2);

    private static native int nativeFailure();

    private native int nativeGetCipherBlockSize();

    private native int nativeUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3);

    private native int nativeUpdateAad(byte[] bArr, int i);

    public NativeGCMCipher(b bVar) {
        this.f2454b = bVar;
    }

    public void encryptInit(byte[] bArr, byte[] bArr2) throws a, com.facebook.crypto.a.a {
        com.facebook.crypto.e.a.checkState(this.f2453a == a.UNINITIALIZED$33437bee, "Cipher has already been initialized");
        this.f2454b.ensureCryptoLoaded();
        if (nativeEncryptInit(bArr, bArr2) != nativeFailure()) {
            this.f2453a = a.ENCRYPT_INITIALIZED$33437bee;
            return;
        }
        throw new a("encryptInit");
    }

    public void decryptInit(byte[] bArr, byte[] bArr2) throws a, com.facebook.crypto.a.a {
        com.facebook.crypto.e.a.checkState(this.f2453a == a.UNINITIALIZED$33437bee, "Cipher has already been initialized");
        this.f2454b.ensureCryptoLoaded();
        if (nativeDecryptInit(bArr, bArr2) != nativeFailure()) {
            this.f2453a = a.DECRYPT_INITIALIZED$33437bee;
            return;
        }
        throw new a("decryptInit");
    }

    public int update(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws a {
        a();
        int nativeUpdate = nativeUpdate(bArr, i, i2, bArr2, i3);
        if (nativeUpdate >= 0) {
            return nativeUpdate;
        }
        throw new a(String.format(null, "update: Offset = %d; DataLen = %d; Result = %d", new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(nativeUpdate)}));
    }

    public void updateAad(byte[] bArr, int i) throws a {
        a();
        if (nativeUpdateAad(bArr, i) < 0) {
            throw new a(String.format(null, "updateAAd: DataLen = %d", new Object[]{Integer.valueOf(i)}));
        }
    }

    public void encryptFinal(byte[] bArr, int i) throws a {
        com.facebook.crypto.e.a.checkState(this.f2453a == a.ENCRYPT_INITIALIZED$33437bee, "Cipher has not been initialized");
        this.f2453a = a.ENCRYPT_FINALIZED$33437bee;
        if (nativeEncryptFinal(bArr, i) == nativeFailure()) {
            throw new a(String.format(null, "encryptFinal: %d", new Object[]{Integer.valueOf(i)}));
        }
    }

    public void decryptFinal(byte[] bArr, int i) throws a {
        com.facebook.crypto.e.a.checkState(this.f2453a == a.DECRYPT_INITIALIZED$33437bee, "Cipher has not been initialized");
        this.f2453a = a.DECRYPT_FINALIZED$33437bee;
        if (nativeDecryptFinal(bArr, i) == nativeFailure()) {
            throw new a("The message could not be decrypted successfully.It has either been tampered with or the wrong resource is being decrypted.");
        }
    }

    public int getCipherBlockSize() {
        a();
        return nativeGetCipherBlockSize();
    }

    private void a() {
        com.facebook.crypto.e.a.checkState(this.f2453a == a.DECRYPT_INITIALIZED$33437bee || this.f2453a == a.ENCRYPT_INITIALIZED$33437bee, "Cipher has not been initialized");
    }

    public void destroy() throws a {
        com.facebook.crypto.e.a.checkState(this.f2453a == a.DECRYPT_FINALIZED$33437bee || this.f2453a == a.ENCRYPT_FINALIZED$33437bee, "Cipher has not been finalized");
        if (nativeDestroy() != nativeFailure()) {
            this.f2453a = a.UNINITIALIZED$33437bee;
            return;
        }
        throw new a("destroy");
    }
}
