package com.facebook.crypto.mac;

import com.facebook.crypto.e.b;
import java.io.IOException;

public class NativeMac {
    public static final String FAILURE = "Failure";
    public static final int KEY_LENGTH = 64;

    /* renamed from: a  reason: collision with root package name */
    private int f2474a = a.UNINITIALIZED$60ad27eb;

    /* renamed from: b  reason: collision with root package name */
    private final b f2475b;
    private long mCtxPtr;

    enum a {
        ;
        
        public static final int FINALIZED$60ad27eb = 3;
        public static final int INITIALIZED$60ad27eb = 2;
        public static final int UNINITIALIZED$60ad27eb = 1;

        static {
            f2476a = new int[]{UNINITIALIZED$60ad27eb, INITIALIZED$60ad27eb, FINALIZED$60ad27eb};
        }

        public static int[] values$6cb7eddb() {
            return (int[]) f2476a.clone();
        }
    }

    private native int nativeDestroy();

    private native byte[] nativeDoFinal();

    private static native int nativeFailure();

    private native int nativeGetMacLength();

    private native int nativeInit(byte[] bArr, int i);

    private native int nativeUpdate(byte b2);

    private native int nativeUpdate(byte[] bArr, int i, int i2);

    public NativeMac(b bVar) {
        this.f2475b = bVar;
    }

    public void init(byte[] bArr, int i) throws com.facebook.crypto.a.a, IOException {
        com.facebook.crypto.e.a.checkState(this.f2474a == a.UNINITIALIZED$60ad27eb, "Mac has already been initialized");
        this.f2475b.ensureCryptoLoaded();
        if (nativeInit(bArr, i) != nativeFailure()) {
            this.f2474a = a.INITIALIZED$60ad27eb;
            return;
        }
        throw new IOException("Failure");
    }

    public void update(byte b2) throws IOException {
        com.facebook.crypto.e.a.checkState(this.f2474a == a.INITIALIZED$60ad27eb, "Mac has not been initialized");
        if (nativeUpdate(b2) == nativeFailure()) {
            throw new IOException("Failure");
        }
    }

    public void update(byte[] bArr, int i, int i2) throws IOException {
        com.facebook.crypto.e.a.checkState(this.f2474a == a.INITIALIZED$60ad27eb, "Mac has not been initialized");
        if (nativeUpdate(bArr, i, i2) == nativeFailure()) {
            throw new IOException("Failure");
        }
    }

    public byte[] doFinal() throws IOException {
        com.facebook.crypto.e.a.checkState(this.f2474a == a.INITIALIZED$60ad27eb, "Mac has not been initialized");
        this.f2474a = a.FINALIZED$60ad27eb;
        byte[] nativeDoFinal = nativeDoFinal();
        if (nativeDoFinal != null) {
            return nativeDoFinal;
        }
        throw new IOException("Failure");
    }

    public void destroy() throws IOException {
        com.facebook.crypto.e.a.checkState(this.f2474a == a.FINALIZED$60ad27eb, "Mac has not been finalized");
        if (nativeDestroy() != nativeFailure()) {
            this.f2474a = a.UNINITIALIZED$60ad27eb;
            return;
        }
        throw new IOException("Failure");
    }

    public int getMacLength() {
        return nativeGetMacLength();
    }
}
