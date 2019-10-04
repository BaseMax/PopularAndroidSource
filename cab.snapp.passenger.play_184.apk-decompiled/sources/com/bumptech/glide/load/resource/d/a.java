package com.bumptech.glide.load.resource.d;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.b.d;
import com.bumptech.glide.c;
import com.bumptech.glide.g.f;
import com.bumptech.glide.g.k;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;

public final class a implements h<ByteBuffer, c> {

    /* renamed from: a  reason: collision with root package name */
    private static final C0048a f2376a = new C0048a();

    /* renamed from: b  reason: collision with root package name */
    private static final b f2377b = new b();
    private final Context c;
    private final List<ImageHeaderParser> d;
    private final b e;
    private final C0048a f;
    private final b g;

    /* renamed from: com.bumptech.glide.load.resource.d.a$a  reason: collision with other inner class name */
    static class C0048a {
        C0048a() {
        }
    }

    static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Queue<d> f2378a = k.createQueue(0);

        b() {
        }

        /* access modifiers changed from: package-private */
        public final synchronized d a(ByteBuffer byteBuffer) {
            d poll;
            poll = this.f2378a.poll();
            if (poll == null) {
                poll = new d();
            }
            return poll.setData(byteBuffer);
        }

        /* access modifiers changed from: package-private */
        public final synchronized void a(d dVar) {
            dVar.clear();
            this.f2378a.offer(dVar);
        }
    }

    public a(Context context) {
        this(context, c.get(context).getRegistry().getImageHeaderParsers(), c.get(context).getBitmapPool(), c.get(context).getArrayPool());
    }

    public a(Context context, List<ImageHeaderParser> list, e eVar, com.bumptech.glide.load.b.a.b bVar) {
        this(context, list, eVar, bVar, f2377b, f2376a);
    }

    private a(Context context, List<ImageHeaderParser> list, e eVar, com.bumptech.glide.load.b.a.b bVar, b bVar2, C0048a aVar) {
        this.c = context.getApplicationContext();
        this.d = list;
        this.f = aVar;
        this.g = new b(eVar, bVar);
        this.e = bVar2;
    }

    public final boolean handles(ByteBuffer byteBuffer, g gVar) throws IOException {
        return !((Boolean) gVar.get(i.DISABLE_ANIMATION)).booleanValue() && com.bumptech.glide.load.c.getType(this.d, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }

    public final e decode(ByteBuffer byteBuffer, int i, int i2, g gVar) {
        d a2 = this.e.a(byteBuffer);
        try {
            e a3 = a(byteBuffer, i, i2, a2, gVar);
            return a3;
        } finally {
            this.e.a(a2);
        }
    }

    private e a(ByteBuffer byteBuffer, int i, int i2, d dVar, g gVar) {
        Bitmap.Config config;
        int i3;
        int i4 = i;
        int i5 = i2;
        long logTime = f.getLogTime();
        try {
            com.bumptech.glide.b.c parseHeader = dVar.parseHeader();
            if (parseHeader.getNumFrames() > 0) {
                if (parseHeader.getStatus() == 0) {
                    if (gVar.get(i.DECODE_FORMAT) == DecodeFormat.PREFER_RGB_565) {
                        config = Bitmap.Config.RGB_565;
                    } else {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    int min = Math.min(parseHeader.getHeight() / i5, parseHeader.getWidth() / i4);
                    if (min == 0) {
                        i3 = 0;
                    } else {
                        i3 = Integer.highestOneBit(min);
                    }
                    int max = Math.max(1, i3);
                    if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
                        StringBuilder sb = new StringBuilder("Downsampling GIF, sampleSize: ");
                        sb.append(max);
                        sb.append(", target dimens: [");
                        sb.append(i4);
                        sb.append("x");
                        sb.append(i5);
                        sb.append("], actual dimens: [");
                        sb.append(parseHeader.getWidth());
                        sb.append("x");
                        sb.append(parseHeader.getHeight());
                        sb.append("]");
                    }
                    com.bumptech.glide.b.e eVar = new com.bumptech.glide.b.e(this.g, parseHeader, byteBuffer, max);
                    eVar.setDefaultBitmapConfig(config);
                    eVar.advance();
                    Bitmap nextFrame = eVar.getNextFrame();
                    if (nextFrame == null) {
                        if (Log.isLoggable("BufferGifDecoder", 2)) {
                            new StringBuilder("Decoded GIF from stream in ").append(f.getElapsedMillis(logTime));
                        }
                        return null;
                    }
                    c cVar = new c(this.c, eVar, com.bumptech.glide.load.resource.b.get(), i, i2, nextFrame);
                    e eVar2 = new e(cVar);
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        new StringBuilder("Decoded GIF from stream in ").append(f.getElapsedMillis(logTime));
                    }
                    return eVar2;
                }
            }
            return null;
        } finally {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                new StringBuilder("Decoded GIF from stream in ").append(f.getElapsedMillis(logTime));
            }
        }
    }
}
