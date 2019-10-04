package c.b.a.c.d.a;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import c.b.a.c.b.D;
import c.b.a.c.e;
import c.b.a.c.f;
import c.b.a.c.g;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import java.io.IOException;

/* compiled from: VideoDecoder */
public class z<T> implements g<T, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public static final e<Long> f4205a = e.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new x());

    /* renamed from: b  reason: collision with root package name */
    public static final e<Integer> f4206b = e.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new y());

    /* renamed from: c  reason: collision with root package name */
    public static final b f4207c = new b();

    /* renamed from: d  reason: collision with root package name */
    public final c<T> f4208d;

    /* renamed from: e  reason: collision with root package name */
    public final c.b.a.c.b.a.e f4209e;

    /* renamed from: f  reason: collision with root package name */
    public final b f4210f;

    /* compiled from: VideoDecoder */
    private static final class a implements c<AssetFileDescriptor> {
        public a() {
        }

        public /* synthetic */ a(x xVar) {
            this();
        }

        public void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    /* compiled from: VideoDecoder */
    static class b {
        public MediaMetadataRetriever a() {
            return new MediaMetadataRetriever();
        }
    }

    /* compiled from: VideoDecoder */
    interface c<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* compiled from: VideoDecoder */
    static final class d implements c<ParcelFileDescriptor> {
        public void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public z(c.b.a.c.b.a.e eVar, c<T> cVar) {
        this(eVar, cVar, f4207c);
    }

    public static g<AssetFileDescriptor, Bitmap> a(c.b.a.c.b.a.e eVar) {
        return new z(eVar, new a(null));
    }

    public static g<ParcelFileDescriptor, Bitmap> b(c.b.a.c.b.a.e eVar) {
        return new z(eVar, new d());
    }

    public boolean a(T t, f fVar) {
        return true;
    }

    public z(c.b.a.c.b.a.e eVar, c<T> cVar, b bVar) {
        this.f4209e = eVar;
        this.f4208d = cVar;
        this.f4210f = bVar;
    }

    @TargetApi(27)
    public static Bitmap b(MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2, int i3, int i4, DownsampleStrategy downsampleStrategy) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                int i5 = parseInt2;
                parseInt2 = parseInt;
                parseInt = i5;
            }
            float b2 = downsampleStrategy.b(parseInt, parseInt2, i3, i4);
            return mediaMetadataRetriever.getScaledFrameAtTime(j2, i2, Math.round(((float) parseInt) * b2), Math.round(b2 * ((float) parseInt2)));
        } catch (Throwable th) {
            if (Log.isLoggable("VideoDecoder", 3)) {
                Log.d("VideoDecoder", "Exception trying to decode frame on oreo+", th);
            }
            return null;
        }
    }

    public D<Bitmap> a(T t, int i2, int i3, f fVar) {
        long longValue = ((Long) fVar.a(f4205a)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) fVar.a(f4206b);
            if (num == null) {
                num = 2;
            }
            DownsampleStrategy downsampleStrategy = (DownsampleStrategy) fVar.a(DownsampleStrategy.f12079h);
            if (downsampleStrategy == null) {
                downsampleStrategy = DownsampleStrategy.f12078g;
            }
            DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
            MediaMetadataRetriever a2 = this.f4210f.a();
            try {
                this.f4208d.a(a2, t);
                Bitmap a3 = a(a2, longValue, num.intValue(), i2, i3, downsampleStrategy2);
                a2.release();
                return d.a(a3, this.f4209e);
            } catch (RuntimeException e2) {
                throw new IOException(e2);
            } catch (Throwable th) {
                a2.release();
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
    }

    public static Bitmap a(MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2, int i3, int i4, DownsampleStrategy downsampleStrategy) {
        Bitmap b2 = (Build.VERSION.SDK_INT < 27 || i3 == Integer.MIN_VALUE || i4 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.f12077f) ? null : b(mediaMetadataRetriever, j2, i2, i3, i4, downsampleStrategy);
        return b2 == null ? a(mediaMetadataRetriever, j2, i2) : b2;
    }

    public static Bitmap a(MediaMetadataRetriever mediaMetadataRetriever, long j2, int i2) {
        return mediaMetadataRetriever.getFrameAtTime(j2, i2);
    }
}
