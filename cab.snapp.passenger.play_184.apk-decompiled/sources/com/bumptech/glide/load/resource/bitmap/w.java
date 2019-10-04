package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

public final class w<T> implements h<T, Bitmap> {
    public static final long DEFAULT_FRAME = -1;
    public static final f<Integer> FRAME_OPTION = f.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new f.a<Integer>() {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f2375a = ByteBuffer.allocate(4);

        public final void update(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num != null) {
                messageDigest.update(bArr);
                synchronized (this.f2375a) {
                    this.f2375a.position(0);
                    messageDigest.update(this.f2375a.putInt(num.intValue()).array());
                }
            }
        }
    });
    public static final f<Long> TARGET_FRAME = f.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new f.a<Long>() {

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f2374a = ByteBuffer.allocate(8);

        public final void update(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f2374a) {
                this.f2374a.position(0);
                messageDigest.update(this.f2374a.putLong(l.longValue()).array());
            }
        }
    });

    /* renamed from: a  reason: collision with root package name */
    private static final b f2372a = new b();

    /* renamed from: b  reason: collision with root package name */
    private final c<T> f2373b;
    private final e c;
    private final b d;

    static final class a implements c<AssetFileDescriptor> {
        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }

        public final void initialize(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    static class b {
        b() {
        }

        public final MediaMetadataRetriever build() {
            return new MediaMetadataRetriever();
        }
    }

    interface c<T> {
        void initialize(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    static final class d implements c<ParcelFileDescriptor> {
        d() {
        }

        public final void initialize(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public final boolean handles(T t, g gVar) {
        return true;
    }

    public static h<AssetFileDescriptor, Bitmap> asset(e eVar) {
        return new w(eVar, new a((byte) 0));
    }

    public static h<ParcelFileDescriptor, Bitmap> parcel(e eVar) {
        return new w(eVar, new d());
    }

    private w(e eVar, c<T> cVar) {
        this(eVar, cVar, f2372a);
    }

    private w(e eVar, c<T> cVar, b bVar) {
        this.c = eVar;
        this.f2373b = cVar;
        this.d = bVar;
    }

    public final v<Bitmap> decode(T t, int i, int i2, g gVar) throws IOException {
        long longValue = ((Long) gVar.get(TARGET_FRAME)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) gVar.get(FRAME_OPTION);
            if (num == null) {
                num = 2;
            }
            DownsampleStrategy downsampleStrategy = (DownsampleStrategy) gVar.get(DownsampleStrategy.OPTION);
            if (downsampleStrategy == null) {
                downsampleStrategy = DownsampleStrategy.DEFAULT;
            }
            DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
            MediaMetadataRetriever build = this.d.build();
            try {
                this.f2373b.initialize(build, t);
                int intValue = num.intValue();
                Bitmap bitmap = null;
                if (!(Build.VERSION.SDK_INT < 27 || i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE || downsampleStrategy2 == DownsampleStrategy.NONE)) {
                    bitmap = a(build, longValue, intValue, i, i2, downsampleStrategy2);
                }
                if (bitmap == null) {
                    bitmap = build.getFrameAtTime(longValue, intValue);
                }
                build.release();
                return d.obtain(bitmap, this.c);
            } catch (RuntimeException e) {
                throw new IOException(e);
            } catch (Throwable th) {
                build.release();
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: ".concat(String.valueOf(longValue)));
        }
    }

    private static Bitmap a(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 == 90 || parseInt3 == 270) {
                int i4 = parseInt2;
                parseInt2 = parseInt;
                parseInt = i4;
            }
            float scaleFactor = downsampleStrategy.getScaleFactor(parseInt, parseInt2, i2, i3);
            return mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(((float) parseInt) * scaleFactor), Math.round(scaleFactor * ((float) parseInt2)));
        } catch (Throwable unused) {
            return null;
        }
    }
}
