package c.b.a.c.d.e;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import c.b.a.b.a;
import c.b.a.b.c;
import c.b.a.b.d;
import c.b.a.b.e;
import c.b.a.c.f;
import c.b.a.c.g;
import c.b.a.i.k;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

/* compiled from: ByteBufferGifDecoder */
public class a implements g<ByteBuffer, c> {

    /* renamed from: a  reason: collision with root package name */
    public static final C0061a f4217a = new C0061a();

    /* renamed from: b  reason: collision with root package name */
    public static final b f4218b = new b();

    /* renamed from: c  reason: collision with root package name */
    public final Context f4219c;

    /* renamed from: d  reason: collision with root package name */
    public final List<ImageHeaderParser> f4220d;

    /* renamed from: e  reason: collision with root package name */
    public final b f4221e;

    /* renamed from: f  reason: collision with root package name */
    public final C0061a f4222f;

    /* renamed from: g  reason: collision with root package name */
    public final b f4223g;

    /* renamed from: c.b.a.c.d.e.a$a  reason: collision with other inner class name */
    /* compiled from: ByteBufferGifDecoder */
    static class C0061a {
        public c.b.a.b.a a(a.C0053a aVar, c cVar, ByteBuffer byteBuffer, int i2) {
            return new e(aVar, cVar, byteBuffer, i2);
        }
    }

    /* compiled from: ByteBufferGifDecoder */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        public final Queue<d> f4224a = k.a(0);

        public synchronized d a(ByteBuffer byteBuffer) {
            d poll;
            poll = this.f4224a.poll();
            if (poll == null) {
                poll = new d();
            }
            poll.a(byteBuffer);
            return poll;
        }

        public synchronized void a(d dVar) {
            dVar.a();
            this.f4224a.offer(dVar);
        }
    }

    public a(Context context, List<ImageHeaderParser> list, c.b.a.c.b.a.e eVar, c.b.a.c.b.a.b bVar) {
        this(context, list, eVar, bVar, f4218b, f4217a);
    }

    public a(Context context, List<ImageHeaderParser> list, c.b.a.c.b.a.e eVar, c.b.a.c.b.a.b bVar, b bVar2, C0061a aVar) {
        this.f4219c = context.getApplicationContext();
        this.f4220d = list;
        this.f4222f = aVar;
        this.f4223g = new b(eVar, bVar);
        this.f4221e = bVar2;
    }

    public boolean a(ByteBuffer byteBuffer, f fVar) {
        return !((Boolean) fVar.a(i.f4258b)).booleanValue() && c.b.a.c.b.a(this.f4220d, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public e a(ByteBuffer byteBuffer, int i2, int i3, f fVar) {
        d a2 = this.f4221e.a(byteBuffer);
        try {
            e a3 = a(byteBuffer, i2, i3, a2, fVar);
            return a3;
        } finally {
            this.f4221e.a(a2);
        }
    }

    public final e a(ByteBuffer byteBuffer, int i2, int i3, d dVar, f fVar) {
        long a2 = c.b.a.i.e.a();
        try {
            c c2 = dVar.c();
            if (c2.b() > 0) {
                if (c2.c() == 0) {
                    Bitmap.Config config = fVar.a(i.f4257a) == DecodeFormat.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                    c.b.a.b.a a3 = this.f4222f.a(this.f4223g, c2, byteBuffer, a(c2, i2, i3));
                    a3.a(config);
                    a3.advance();
                    Bitmap a4 = a3.a();
                    if (a4 == null) {
                        if (Log.isLoggable("BufferGifDecoder", 2)) {
                            Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c.b.a.i.e.a(a2));
                        }
                        return null;
                    }
                    c cVar = new c(this.f4219c, a3, c.b.a.c.d.b.a(), i2, i3, a4);
                    e eVar = new e(cVar);
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c.b.a.i.e.a(a2));
                    }
                    return eVar;
                }
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + c.b.a.i.e.a(a2));
            }
        }
    }

    public static int a(c cVar, int i2, int i3) {
        int i4;
        int min = Math.min(cVar.a() / i3, cVar.d() / i2);
        if (min == 0) {
            i4 = 0;
        } else {
            i4 = Integer.highestOneBit(min);
        }
        int max = Math.max(1, i4);
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i2 + "x" + i3 + "], actual dimens: [" + cVar.d() + "x" + cVar.a() + "]");
        }
        return max;
    }
}
