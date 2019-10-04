package com.facebook.crypto;

import com.facebook.crypto.b.a;
import com.facebook.crypto.d.d;
import com.facebook.crypto.d.e;
import com.facebook.crypto.e.b;
import com.facebook.crypto.mac.NativeMac;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final a f2451a;

    /* renamed from: b  reason: collision with root package name */
    private final b f2452b;
    private final d c;

    @Deprecated
    public c(a aVar, b bVar) {
        this(aVar, bVar, CryptoConfig.KEY_128);
    }

    public c(a aVar, b bVar, CryptoConfig cryptoConfig) {
        this.f2451a = new a(aVar, cryptoConfig);
        this.f2452b = bVar;
        this.c = new e(this.f2452b, this.f2451a, cryptoConfig);
    }

    public final boolean isAvailable() {
        try {
            this.f2452b.ensureCryptoLoaded();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final OutputStream getCipherOutputStream(OutputStream outputStream, f fVar) throws IOException, com.facebook.crypto.a.a, com.facebook.crypto.a.b {
        return getCipherOutputStream(outputStream, fVar, null);
    }

    public final OutputStream getCipherOutputStream(OutputStream outputStream, f fVar, byte[] bArr) throws IOException, com.facebook.crypto.a.a, com.facebook.crypto.a.b {
        return this.c.wrap(outputStream, fVar, bArr);
    }

    public final InputStream getCipherInputStream(InputStream inputStream, f fVar) throws IOException, com.facebook.crypto.a.a, com.facebook.crypto.a.b {
        return this.c.wrap(inputStream, fVar);
    }

    public final byte[] encrypt(byte[] bArr, f fVar) throws com.facebook.crypto.a.b, com.facebook.crypto.a.a, IOException {
        com.facebook.crypto.d.a aVar = new com.facebook.crypto.d.a(bArr.length + a());
        OutputStream cipherOutputStream = getCipherOutputStream(aVar, fVar, null);
        cipherOutputStream.write(bArr);
        cipherOutputStream.close();
        return aVar.getBytes();
    }

    public final byte[] decrypt(byte[] bArr, f fVar) throws com.facebook.crypto.a.b, com.facebook.crypto.a.a, IOException {
        int length = bArr.length;
        InputStream cipherInputStream = getCipherInputStream(new ByteArrayInputStream(bArr), fVar);
        com.facebook.crypto.d.a aVar = new com.facebook.crypto.d.a(length - a());
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = cipherInputStream.read(bArr2);
            if (read != -1) {
                aVar.write(bArr2, 0, read);
            } else {
                cipherInputStream.close();
                return aVar.getBytes();
            }
        }
    }

    public final OutputStream getMacOutputStream(OutputStream outputStream, f fVar) throws IOException, com.facebook.crypto.a.b, com.facebook.crypto.a.a {
        outputStream.write(1);
        outputStream.write(1);
        NativeMac nativeMac = new NativeMac(this.f2452b);
        byte[] macKey = this.f2451a.getMacKey();
        nativeMac.init(macKey, macKey.length);
        a(nativeMac, (byte) 1, fVar.getBytes());
        return new e(nativeMac, outputStream);
    }

    public final InputStream getMacInputStream(InputStream inputStream, f fVar) throws IOException, com.facebook.crypto.a.b, com.facebook.crypto.a.a {
        byte read = (byte) inputStream.read();
        boolean z = false;
        com.facebook.crypto.e.a.checkArgumentForIO(read == 1, "Unexpected mac version ".concat(String.valueOf(read)));
        byte read2 = (byte) inputStream.read();
        if (read2 == 1) {
            z = true;
        }
        com.facebook.crypto.e.a.checkArgumentForIO(z, "Unexpected mac ID ".concat(String.valueOf(read2)));
        NativeMac nativeMac = new NativeMac(this.f2452b);
        byte[] macKey = this.f2451a.getMacKey();
        nativeMac.init(macKey, macKey.length);
        a(nativeMac, read, fVar.getBytes());
        return new d(nativeMac, inputStream);
    }

    private static void a(NativeMac nativeMac, byte b2, byte[] bArr) throws IOException {
        byte[] bArr2 = {b2};
        nativeMac.update(bArr2, 0, 1);
        nativeMac.update(new byte[]{1}, 0, 1);
        nativeMac.update(bArr, 0, bArr.length);
    }

    private int a() {
        return this.c.getCipherMetaDataLength();
    }
}
