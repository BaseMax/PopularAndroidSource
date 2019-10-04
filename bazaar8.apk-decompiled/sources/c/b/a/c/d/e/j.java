package c.b.a.c.d.e;

import android.util.Log;
import c.b.a.c.b.D;
import c.b.a.c.b.a.b;
import c.b.a.c.f;
import c.b.a.c.g;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: StreamGifDecoder */
public class j implements g<InputStream, c> {

    /* renamed from: a  reason: collision with root package name */
    public final List<ImageHeaderParser> f4259a;

    /* renamed from: b  reason: collision with root package name */
    public final g<ByteBuffer, c> f4260b;

    /* renamed from: c  reason: collision with root package name */
    public final b f4261c;

    public j(List<ImageHeaderParser> list, g<ByteBuffer, c> gVar, b bVar) {
        this.f4259a = list;
        this.f4260b = gVar;
        this.f4261c = bVar;
    }

    public boolean a(InputStream inputStream, f fVar) {
        return !((Boolean) fVar.a(i.f4258b)).booleanValue() && c.b.a.c.b.b(this.f4259a, inputStream, this.f4261c) == ImageHeaderParser.ImageType.GIF;
    }

    public D<c> a(InputStream inputStream, int i2, int i3, f fVar) {
        byte[] a2 = a(inputStream);
        if (a2 == null) {
            return null;
        }
        return this.f4260b.a(ByteBuffer.wrap(a2), i2, i3, fVar);
    }

    public static byte[] a(InputStream inputStream) {
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
        } catch (IOException e2) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e2);
            }
            return null;
        }
    }
}
