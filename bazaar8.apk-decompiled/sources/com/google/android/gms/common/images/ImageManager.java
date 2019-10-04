package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.util.Log;
import b.f.g;
import c.e.a.b.d.d.C0780c;
import c.e.a.b.g.c.d;
import com.google.android.gms.common.annotation.KeepName;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;

public final class ImageManager {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f13024a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static HashSet<Uri> f13025b = new HashSet<>();

    /* renamed from: c  reason: collision with root package name */
    public final Context f13026c;

    /* renamed from: d  reason: collision with root package name */
    public final Handler f13027d;

    /* renamed from: e  reason: collision with root package name */
    public final ExecutorService f13028e;

    /* renamed from: f  reason: collision with root package name */
    public final a f13029f;

    /* renamed from: g  reason: collision with root package name */
    public final d f13030g;

    /* renamed from: h  reason: collision with root package name */
    public final Map<c.e.a.b.d.c.a, ImageReceiver> f13031h;

    /* renamed from: i  reason: collision with root package name */
    public final Map<Uri, ImageReceiver> f13032i;

    /* renamed from: j  reason: collision with root package name */
    public final Map<Uri, Long> f13033j;

    @KeepName
    private final class ImageReceiver extends ResultReceiver {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f13034a;

        /* renamed from: b  reason: collision with root package name */
        public final ArrayList<c.e.a.b.d.c.a> f13035b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ ImageManager f13036c;

        public final void onReceiveResult(int i2, Bundle bundle) {
            this.f13036c.f13028e.execute(new b(this.f13034a, (ParcelFileDescriptor) bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
        }
    }

    private static final class a extends g<c.e.a.b.d.c.b, Bitmap> {
    }

    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f13037a;

        /* renamed from: b  reason: collision with root package name */
        public final ParcelFileDescriptor f13038b;

        public b(Uri uri, ParcelFileDescriptor parcelFileDescriptor) {
            this.f13037a = uri;
            this.f13038b = parcelFileDescriptor;
        }

        public final void run() {
            boolean z;
            Bitmap bitmap;
            C0780c.b("LoadBitmapFromDiskRunnable can't be executed in the main thread");
            ParcelFileDescriptor parcelFileDescriptor = this.f13038b;
            boolean z2 = false;
            Bitmap bitmap2 = null;
            if (parcelFileDescriptor != null) {
                try {
                    bitmap2 = BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor());
                } catch (OutOfMemoryError e2) {
                    String valueOf = String.valueOf(this.f13037a);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 34);
                    sb.append("OOM while loading bitmap for uri: ");
                    sb.append(valueOf);
                    Log.e("ImageManager", sb.toString(), e2);
                    z2 = true;
                }
                try {
                    this.f13038b.close();
                } catch (IOException e3) {
                    Log.e("ImageManager", "closed failed", e3);
                }
                z = z2;
                bitmap = bitmap2;
            } else {
                bitmap = null;
                z = false;
            }
            CountDownLatch countDownLatch = new CountDownLatch(1);
            Handler g2 = ImageManager.this.f13027d;
            c cVar = new c(this.f13037a, bitmap, z, countDownLatch);
            g2.post(cVar);
            try {
                countDownLatch.await();
            } catch (InterruptedException unused) {
                String valueOf2 = String.valueOf(this.f13037a);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 32);
                sb2.append("Latch interrupted while posting ");
                sb2.append(valueOf2);
                Log.w("ImageManager", sb2.toString());
            }
        }
    }

    private final class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f13040a;

        /* renamed from: b  reason: collision with root package name */
        public final Bitmap f13041b;

        /* renamed from: c  reason: collision with root package name */
        public final CountDownLatch f13042c;

        /* renamed from: d  reason: collision with root package name */
        public boolean f13043d;

        public c(Uri uri, Bitmap bitmap, boolean z, CountDownLatch countDownLatch) {
            this.f13040a = uri;
            this.f13041b = bitmap;
            this.f13043d = z;
            this.f13042c = countDownLatch;
        }

        public final void run() {
            C0780c.a("OnBitmapLoadedRunnable must be executed in the main thread");
            boolean z = this.f13041b != null;
            if (ImageManager.this.f13029f != null) {
                if (this.f13043d) {
                    ImageManager.this.f13029f.a();
                    System.gc();
                    this.f13043d = false;
                    ImageManager.this.f13027d.post(this);
                    return;
                } else if (z) {
                    ImageManager.this.f13029f.a(new c.e.a.b.d.c.b(this.f13040a), this.f13041b);
                }
            }
            ImageReceiver imageReceiver = (ImageReceiver) ImageManager.this.f13032i.remove(this.f13040a);
            if (imageReceiver != null) {
                ArrayList a2 = imageReceiver.f13035b;
                int size = a2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    c.e.a.b.d.c.a aVar = (c.e.a.b.d.c.a) a2.get(i2);
                    if (z) {
                        aVar.a(ImageManager.this.f13026c, this.f13041b, false);
                    } else {
                        ImageManager.this.f13033j.put(this.f13040a, Long.valueOf(SystemClock.elapsedRealtime()));
                        aVar.a(ImageManager.this.f13026c, ImageManager.this.f13030g, false);
                    }
                    ImageManager.this.f13031h.remove(aVar);
                }
            }
            this.f13042c.countDown();
            synchronized (ImageManager.f13024a) {
                ImageManager.f13025b.remove(this.f13040a);
            }
        }
    }
}
