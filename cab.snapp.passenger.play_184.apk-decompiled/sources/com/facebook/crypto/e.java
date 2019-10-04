package com.facebook.crypto;

import com.facebook.crypto.b.a;
import com.facebook.crypto.cipher.NativeGCMCipher;
import com.facebook.crypto.d.c;
import com.facebook.crypto.e.b;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class e implements d {

    /* renamed from: a  reason: collision with root package name */
    private final b f2466a;

    /* renamed from: b  reason: collision with root package name */
    private final a f2467b;
    private final CryptoConfig c;

    public e(b bVar, a aVar, CryptoConfig cryptoConfig) {
        this.f2466a = bVar;
        this.f2467b = aVar;
        this.c = cryptoConfig;
    }

    public final OutputStream wrap(OutputStream outputStream, f fVar, byte[] bArr) throws IOException, com.facebook.crypto.a.a, com.facebook.crypto.a.b {
        outputStream.write(1);
        outputStream.write(this.c.cipherId);
        byte[] newIV = this.f2467b.getNewIV();
        NativeGCMCipher nativeGCMCipher = new NativeGCMCipher(this.f2466a);
        nativeGCMCipher.encryptInit(this.f2467b.getCipherKey(), newIV);
        outputStream.write(newIV);
        a(nativeGCMCipher, (byte) 1, this.c.cipherId, fVar.getBytes());
        return new c(outputStream, nativeGCMCipher, bArr, this.c.tagLength);
    }

    public final InputStream wrap(InputStream inputStream, f fVar) throws IOException, com.facebook.crypto.a.a, com.facebook.crypto.a.b {
        byte read = (byte) inputStream.read();
        byte read2 = (byte) inputStream.read();
        boolean z = false;
        com.facebook.crypto.e.a.checkArgumentForIO(read == 1, "Unexpected crypto version ".concat(String.valueOf(read)));
        if (read2 == this.c.cipherId) {
            z = true;
        }
        com.facebook.crypto.e.a.checkArgumentForIO(z, "Unexpected cipher ID ".concat(String.valueOf(read2)));
        byte[] bArr = new byte[this.c.ivLength];
        new DataInputStream(inputStream).readFully(bArr);
        NativeGCMCipher nativeGCMCipher = new NativeGCMCipher(this.f2466a);
        nativeGCMCipher.decryptInit(this.f2467b.getCipherKey(), bArr);
        a(nativeGCMCipher, read, read2, fVar.getBytes());
        return new com.facebook.crypto.d.b(inputStream, nativeGCMCipher, this.c.tagLength);
    }

    private static void a(NativeGCMCipher nativeGCMCipher, byte b2, byte b3, byte[] bArr) throws com.facebook.crypto.cipher.a {
        byte[] bArr2 = {b2};
        nativeGCMCipher.updateAad(bArr2, 1);
        nativeGCMCipher.updateAad(new byte[]{b3}, 1);
        nativeGCMCipher.updateAad(bArr, bArr.length);
    }

    public final int getCipherMetaDataLength() {
        return this.c.ivLength + 2 + this.c.tagLength;
    }
}
