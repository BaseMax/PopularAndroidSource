package c.b.a.b;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;

/* compiled from: GifDecoder */
public interface a {

    /* renamed from: c.b.a.b.a$a  reason: collision with other inner class name */
    /* compiled from: GifDecoder */
    public interface C0053a {
        Bitmap a(int i2, int i3, Bitmap.Config config);

        void a(Bitmap bitmap);

        void a(byte[] bArr);

        void a(int[] iArr);

        int[] a(int i2);

        byte[] b(int i2);
    }

    Bitmap a();

    void a(Bitmap.Config config);

    void advance();

    int b();

    int c();

    void clear();

    void d();

    int e();

    int f();

    ByteBuffer getData();
}
