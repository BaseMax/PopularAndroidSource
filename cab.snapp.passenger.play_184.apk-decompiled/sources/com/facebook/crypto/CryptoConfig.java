package com.facebook.crypto;

public enum CryptoConfig {
    KEY_128((byte) 1, 16),
    KEY_256((byte) 2, 32);
    
    public final byte cipherId;
    public final int ivLength;
    public final int keyLength;
    public final int tagLength;

    /* JADX WARNING: type inference failed for: r3v0, types: [byte, int] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private CryptoConfig(int r3, int r4) {
        /*
            r0 = this;
            r0.<init>(r1, r2)
            r0.cipherId = r3
            r0.keyLength = r4
            r1 = 12
            r0.ivLength = r1
            r1 = 16
            r0.tagLength = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.crypto.CryptoConfig.<init>(java.lang.String, int, byte, int):void");
    }
}
