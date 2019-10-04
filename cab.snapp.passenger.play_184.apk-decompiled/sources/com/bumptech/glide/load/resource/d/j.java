package com.bumptech.glide.load.resource.d;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.b.a.b;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

public final class j implements h<InputStream, c> {

    /* renamed from: a  reason: collision with root package name */
    private final List<ImageHeaderParser> f2391a;

    /* renamed from: b  reason: collision with root package name */
    private final h<ByteBuffer, c> f2392b;
    private final b c;

    public j(List<ImageHeaderParser> list, h<ByteBuffer, c> hVar, b bVar) {
        this.f2391a = list;
        this.f2392b = hVar;
        this.c = bVar;
    }

    public final boolean handles(InputStream inputStream, g gVar) throws IOException {
        return !((Boolean) gVar.get(i.DISABLE_ANIMATION)).booleanValue() && c.getType(this.f2391a, inputStream, this.c) == ImageHeaderParser.ImageType.GIF;
    }

    public final v<c> decode(InputStream inputStream, int i, int i2, g gVar) throws IOException {
        byte[] a2 = a(inputStream);
        if (a2 == null) {
            return null;
        }
        return this.f2392b.decode(ByteBuffer.wrap(a2), i, i2, gVar);
    }

    private static byte[] a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }
}
