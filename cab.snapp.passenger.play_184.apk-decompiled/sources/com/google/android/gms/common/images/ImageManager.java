package com.google.android.gms.common.images;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.widget.ImageView;
import androidx.collection.LruCache;
import com.google.android.gms.common.internal.av;
import com.google.android.gms.internal.ei;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class ImageManager {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final Object f2906a = new Object();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static HashSet<Uri> f2907b = new HashSet<>();
    private static ImageManager c;
    /* access modifiers changed from: private */
    public final Context d;
    /* access modifiers changed from: private */
    public final Handler e = new Handler(Looper.getMainLooper());
    /* access modifiers changed from: private */
    public final ExecutorService f = Executors.newFixedThreadPool(4);
    /* access modifiers changed from: private */
    public final b g = null;
    /* access modifiers changed from: private */
    public final ei h = new ei();
    /* access modifiers changed from: private */
    public final Map<a, ImageReceiver> i = new HashMap();
    /* access modifiers changed from: private */
    public final Map<Uri, ImageReceiver> j = new HashMap();
    /* access modifiers changed from: private */
    public final Map<Uri, Long> k = new HashMap();

    final class ImageReceiver extends ResultReceiver {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f2908a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<a> f2909b = new ArrayList<>();

        ImageReceiver(Uri uri) {
            super(new Handler(Looper.getMainLooper()));
            this.f2908a = uri;
        }

        public final void onReceiveResult(int i, Bundle bundle) {
            ImageManager.this.f.execute(new c(this.f2908a, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }

        public final void zzakd() {
            Intent intent = new Intent("com.google.android.gms.common.images.LOAD_IMAGE");
            intent.putExtra("com.google.android.gms.extras.uri", this.f2908a);
            intent.putExtra("com.google.android.gms.extras.resultReceiver", this);
            intent.putExtra("com.google.android.gms.extras.priority", 3);
            ImageManager.this.d.sendBroadcast(intent);
        }

        public final void zzb(a aVar) {
            av.zzge("ImageReceiver.addImageRequest() must be called in the main thread");
            this.f2909b.add(aVar);
        }

        public final void zzc(a aVar) {
            av.zzge("ImageReceiver.removeImageRequest() must be called in the main thread");
            this.f2909b.remove(aVar);
        }
    }

    public interface a {
        void onImageLoaded(Uri uri, Drawable drawable, boolean z);
    }

    static final class b extends LruCache<b, Bitmap> {
        public final /* synthetic */ void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
            super.entryRemoved(z, (b) obj, (Bitmap) obj2, (Bitmap) obj3);
        }

        public final /* synthetic */ int sizeOf(Object obj, Object obj2) {
            Bitmap bitmap = (Bitmap) obj2;
            return bitmap.getHeight() * bitmap.getRowBytes();
        }
    }

    final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f2910a;

        /* renamed from: b  reason: collision with root package name */
        private final ParcelFileDescriptor f2911b;

        public c(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f2910a = uri;
            this.f2911b = parcelFileDescriptor;
        }

        public final void run() {
            boolean z;
            Bitmap bitmap;
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                boolean z2 = false;
                Bitmap bitmap2 = null;
                ParcelFileDescriptor parcelFileDescriptor = this.f2911b;
                if (parcelFileDescriptor != null) {
                    try {
                        bitmap2 = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                    } catch (OutOfMemoryError unused) {
                        String valueOf = String.valueOf(this.f2910a);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                        sb.append("OOM while loading bitmap for uri: ");
                        sb.append(valueOf);
                        z2 = true;
                    }
                    try {
                        this.f2911b.close();
                    } catch (IOException unused2) {
                    }
                    z = z2;
                    bitmap = bitmap2;
                } else {
                    bitmap = null;
                    z = false;
                }
                CountDownLatch countDownLatch = new CountDownLatch(1);
                Handler g = ImageManager.this.e;
                e eVar = new e(this.f2910a, bitmap, z, countDownLatch);
                g.post(eVar);
                try {
                    countDownLatch.await();
                } catch (InterruptedException unused3) {
                    String valueOf2 = String.valueOf(this.f2910a);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                    sb2.append("Latch interrupted while posting ");
                    sb2.append(valueOf2);
                }
            } else {
                String valueOf3 = String.valueOf(Thread.currentThread());
                String valueOf4 = String.valueOf(Looper.getMainLooper().getThread());
                StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 56 + String.valueOf(valueOf4).length());
                sb3.append("checkNotMainThread: current thread ");
                sb3.append(valueOf3);
                sb3.append(" IS the main thread ");
                sb3.append(valueOf4);
                sb3.append("!");
                throw new IllegalStateException("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            }
        }
    }

    final class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final a f2912a;

        public d(a aVar) {
            this.f2912a = aVar;
        }

        public final void run() {
            av.zzge("LoadImageRunnable must be executed on the main thread");
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.i.get(this.f2912a);
            if (imageReceiver != null) {
                ImageManager.this.i.remove(this.f2912a);
                imageReceiver.zzc(this.f2912a);
            }
            b bVar = this.f2912a.f2918a;
            if (bVar.uri == null) {
                a aVar = this.f2912a;
                Context b2 = ImageManager.this.d;
                ei unused = ImageManager.this.h;
                aVar.a(b2, true);
                return;
            }
            Bitmap a2 = ImageManager.a(ImageManager.this, bVar);
            if (a2 != null) {
                this.f2912a.a(ImageManager.this.d, a2, true);
                return;
            }
            Long l = (Long) ImageManager.this.k.get(bVar.uri);
            if (l != null) {
                if (SystemClock.elapsedRealtime() - l.longValue() < 3600000) {
                    a aVar2 = this.f2912a;
                    Context b3 = ImageManager.this.d;
                    ei unused2 = ImageManager.this.h;
                    aVar2.a(b3, true);
                    return;
                }
                ImageManager.this.k.remove(bVar.uri);
            }
            a aVar3 = this.f2912a;
            Context unused3 = ImageManager.this.d;
            ei unused4 = ImageManager.this.h;
            aVar3.a();
            ImageReceiver imageReceiver2 = (ImageReceiver) ImageManager.this.j.get(bVar.uri);
            if (imageReceiver2 == null) {
                imageReceiver2 = new ImageReceiver(bVar.uri);
                ImageManager.this.j.put(bVar.uri, imageReceiver2);
            }
            imageReceiver2.zzb(this.f2912a);
            if (!(this.f2912a instanceof d)) {
                ImageManager.this.i.put(this.f2912a, imageReceiver2);
            }
            synchronized (ImageManager.f2906a) {
                if (!ImageManager.f2907b.contains(bVar.uri)) {
                    ImageManager.f2907b.add(bVar.uri);
                    imageReceiver2.zzakd();
                }
            }
        }
    }

    final class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Uri f2914a;

        /* renamed from: b  reason: collision with root package name */
        private final Bitmap f2915b;
        private final CountDownLatch c;
        private boolean d;

        public e(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f2914a = uri;
            this.f2915b = bitmap;
            this.d = z;
            this.c = countDownLatch;
        }

        public final void run() {
            av.zzge("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f2915b != null;
            if (ImageManager.this.g != null) {
                if (this.d) {
                    ImageManager.this.g.evictAll();
                    System.gc();
                    this.d = false;
                    ImageManager.this.e.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.g.put(new b(this.f2914a), this.f2915b);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.j.remove(this.f2914a);
            if (imageReceiver != null) {
                ArrayList a2 = imageReceiver.f2909b;
                int size = a2.size();
                for (int i = 0; i < size; i++) {
                    a aVar = (a) a2.get(i);
                    ImageManager imageManager = ImageManager.this;
                    if (z) {
                        aVar.a(imageManager.d, this.f2915b, false);
                    } else {
                        imageManager.k.put(this.f2914a, Long.valueOf(SystemClock.elapsedRealtime()));
                        Context b2 = ImageManager.this.d;
                        ei unused = ImageManager.this.h;
                        aVar.a(b2, false);
                    }
                    if (!(aVar instanceof d)) {
                        ImageManager.this.i.remove(aVar);
                    }
                }
            }
            this.c.countDown();
            synchronized (ImageManager.f2906a) {
                ImageManager.f2907b.remove(this.f2914a);
            }
        }
    }

    private ImageManager(Context context) {
        this.d = context.getApplicationContext();
    }

    private final void a(a aVar) {
        av.zzge("ImageManager.loadImage() must be called in the main thread");
        new d(aVar).run();
    }

    public static ImageManager create(Context context) {
        if (c == null) {
            c = new ImageManager(context);
        }
        return c;
    }

    public final void loadImage(ImageView imageView, int i2) {
        a((a) new c(imageView, i2));
    }

    public final void loadImage(ImageView imageView, Uri uri) {
        a((a) new c(imageView, uri));
    }

    public final void loadImage(ImageView imageView, Uri uri, int i2) {
        c cVar = new c(imageView, uri);
        cVar.f2919b = i2;
        a((a) cVar);
    }

    public final void loadImage(a aVar, Uri uri) {
        a((a) new d(aVar, uri));
    }

    public final void loadImage(a aVar, Uri uri, int i2) {
        d dVar = new d(aVar, uri);
        dVar.f2919b = i2;
        a((a) dVar);
    }

    static /* synthetic */ Bitmap a(ImageManager imageManager, b bVar) {
        b bVar2 = imageManager.g;
        if (bVar2 == null) {
            return null;
        }
        return (Bitmap) bVar2.get(bVar);
    }
}
