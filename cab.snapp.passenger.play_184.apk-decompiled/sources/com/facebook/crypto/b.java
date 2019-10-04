package com.facebook.crypto;

import com.facebook.crypto.b.a;
import com.facebook.crypto.keygen.PasswordBasedKeyDerivation;
import java.security.SecureRandom;

public abstract class b {
    public final com.facebook.crypto.e.b nativeLibrary;
    public final SecureRandom secureRandom;

    protected b(com.facebook.crypto.e.b bVar, SecureRandom secureRandom2) {
        this.nativeLibrary = bVar;
        this.secureRandom = secureRandom2;
    }

    public c createDefaultCrypto(a aVar) {
        return createCrypto256Bits(aVar);
    }

    public c createCrypto128Bits(a aVar) {
        return new c(aVar, this.nativeLibrary, CryptoConfig.KEY_128);
    }

    public c createCrypto256Bits(a aVar) {
        return new c(aVar, this.nativeLibrary, CryptoConfig.KEY_256);
    }

    public PasswordBasedKeyDerivation createPasswordBasedKeyDerivation() {
        return new PasswordBasedKeyDerivation(this.secureRandom, this.nativeLibrary);
    }
}
