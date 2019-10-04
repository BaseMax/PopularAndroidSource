package com.facebook.crypto;

import com.facebook.crypto.a.a;
import com.facebook.crypto.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public interface d {
    int getCipherMetaDataLength();

    InputStream wrap(InputStream inputStream, f fVar) throws IOException, a, b;

    OutputStream wrap(OutputStream outputStream, f fVar, byte[] bArr) throws IOException, a, b;
}
