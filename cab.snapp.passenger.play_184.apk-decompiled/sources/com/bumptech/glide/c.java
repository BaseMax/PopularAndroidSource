package com.bumptech.glide;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.e.a.i;
import com.bumptech.glide.e.g;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.a.e;
import com.bumptech.glide.load.a.k;
import com.bumptech.glide.load.b.a.e;
import com.bumptech.glide.load.b.b.a;
import com.bumptech.glide.load.b.b.h;
import com.bumptech.glide.load.b.d.b;
import com.bumptech.glide.load.b.d.d;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.c.a;
import com.bumptech.glide.load.c.a.a;
import com.bumptech.glide.load.c.a.b;
import com.bumptech.glide.load.c.a.c;
import com.bumptech.glide.load.c.a.d;
import com.bumptech.glide.load.c.a.e;
import com.bumptech.glide.load.c.b;
import com.bumptech.glide.load.c.d;
import com.bumptech.glide.load.c.e;
import com.bumptech.glide.load.c.f;
import com.bumptech.glide.load.c.k;
import com.bumptech.glide.load.c.s;
import com.bumptech.glide.load.c.u;
import com.bumptech.glide.load.c.v;
import com.bumptech.glide.load.c.w;
import com.bumptech.glide.load.c.x;
import com.bumptech.glide.load.resource.a.a;
import com.bumptech.glide.load.resource.bitmap.f;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.n;
import com.bumptech.glide.load.resource.bitmap.t;
import com.bumptech.glide.load.resource.bitmap.w;
import com.bumptech.glide.manager.d;
import com.bumptech.glide.manager.l;
import java.io.File;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class c implements ComponentCallbacks2 {
    private static volatile c d;
    private static volatile boolean e;

    /* renamed from: a  reason: collision with root package name */
    final e f1997a;

    /* renamed from: b  reason: collision with root package name */
    final d f1998b;
    final List<h> c = new ArrayList();
    private final k f;
    private final e g;
    private final h h;
    private final b i;
    private final f j;
    private final com.bumptech.glide.load.b.a.b k;
    private final l l;
    private MemoryCategory m = MemoryCategory.NORMAL;

    public void onConfigurationChanged(Configuration configuration) {
    }

    public static File getPhotoCacheDir(Context context) {
        return getPhotoCacheDir(context, a.C0040a.DEFAULT_DISK_CACHE_DIR);
    }

    public static File getPhotoCacheDir(Context context, String str) {
        File cacheDir = context.getCacheDir();
        if (cacheDir == null) {
            return null;
        }
        File file = new File(cacheDir, str);
        if (file.mkdirs() || (file.exists() && file.isDirectory())) {
            return file;
        }
        return null;
    }

    public static c get(Context context) {
        if (d == null) {
            synchronized (c.class) {
                if (d == null) {
                    if (!e) {
                        e = true;
                        a(context, new d());
                        e = false;
                    } else {
                        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
                    }
                }
            }
        }
        return d;
    }

    @Deprecated
    public static synchronized void init(c cVar) {
        synchronized (c.class) {
            if (d != null) {
                tearDown();
            }
            d = cVar;
        }
    }

    public static synchronized void init(Context context, d dVar) {
        synchronized (c.class) {
            if (d != null) {
                tearDown();
            }
            a(context, dVar);
        }
    }

    public static synchronized void tearDown() {
        synchronized (c.class) {
            if (d != null) {
                d.getContext().getApplicationContext().unregisterComponentCallbacks(d);
                d.f.shutdown();
            }
            d = null;
        }
    }

    private static void a(Context context, d dVar) {
        Context applicationContext = context.getApplicationContext();
        a a2 = a();
        List<com.bumptech.glide.c.c> emptyList = Collections.emptyList();
        if (a2 == null || a2.isManifestParsingEnabled()) {
            emptyList = new com.bumptech.glide.c.e(applicationContext).parse();
        }
        if (a2 != null && !a2.a().isEmpty()) {
            Set<Class<?>> a3 = a2.a();
            Iterator<com.bumptech.glide.c.c> it = emptyList.iterator();
            while (it.hasNext()) {
                com.bumptech.glide.c.c next = it.next();
                if (a3.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        new StringBuilder("AppGlideModule excludes manifest GlideModule: ").append(next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (com.bumptech.glide.c.c cVar : emptyList) {
                new StringBuilder("Discovered GlideModule from manifest: ").append(cVar.getClass());
            }
        }
        dVar.f2000a = null;
        for (com.bumptech.glide.c.c applyOptions : emptyList) {
            applyOptions.applyOptions(applicationContext, dVar);
        }
        if (a2 != null) {
            a2.applyOptions(applicationContext, dVar);
        }
        c a4 = dVar.a(applicationContext);
        for (com.bumptech.glide.c.c registerComponents : emptyList) {
            registerComponents.registerComponents(applicationContext, a4, a4.j);
        }
        if (a2 != null) {
            a2.registerComponents(applicationContext, a4, a4.j);
        }
        applicationContext.registerComponentCallbacks(a4);
        d = a4;
    }

    private static a a() {
        try {
            return (a) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
        } catch (InstantiationException e2) {
            a((Exception) e2);
        } catch (IllegalAccessException e3) {
            a((Exception) e3);
        } catch (NoSuchMethodException e4) {
            a((Exception) e4);
        } catch (InvocationTargetException e5) {
            a((Exception) e5);
        }
        return null;
    }

    private static void a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    c(Context context, k kVar, h hVar, e eVar, com.bumptech.glide.load.b.a.b bVar, l lVar, d dVar, int i2, com.bumptech.glide.e.h hVar2, Map<Class<?>, i<?, ?>> map, List<g<Object>> list, boolean z) {
        Context context2 = context;
        h hVar3 = hVar;
        e eVar2 = eVar;
        com.bumptech.glide.load.b.a.b bVar2 = bVar;
        Class<byte[]> cls = byte[].class;
        this.f = kVar;
        this.g = eVar2;
        this.k = bVar2;
        this.h = hVar3;
        this.l = lVar;
        this.f1998b = dVar;
        this.i = new b(hVar3, eVar2, (DecodeFormat) hVar2.getOptions().get(com.bumptech.glide.load.resource.bitmap.k.DECODE_FORMAT));
        Resources resources = context.getResources();
        this.j = new f();
        this.j.register((ImageHeaderParser) new j());
        if (Build.VERSION.SDK_INT >= 27) {
            this.j.register((ImageHeaderParser) new n());
        }
        List<ImageHeaderParser> imageHeaderParsers = this.j.getImageHeaderParsers();
        com.bumptech.glide.load.resource.bitmap.k kVar2 = new com.bumptech.glide.load.resource.bitmap.k(imageHeaderParsers, resources.getDisplayMetrics(), eVar2, bVar2);
        com.bumptech.glide.load.resource.d.a aVar = new com.bumptech.glide.load.resource.d.a(context2, imageHeaderParsers, eVar2, bVar2);
        com.bumptech.glide.load.h<ParcelFileDescriptor, Bitmap> parcel = w.parcel(eVar);
        f fVar = new f(kVar2);
        t tVar = new t(kVar2, bVar2);
        com.bumptech.glide.load.resource.b.d dVar2 = new com.bumptech.glide.load.resource.b.d(context2);
        s.c cVar = new s.c(resources);
        s.d dVar3 = new s.d(resources);
        s.b bVar3 = new s.b(resources);
        s.a aVar2 = new s.a(resources);
        Class<byte[]> cls2 = cls;
        com.bumptech.glide.load.resource.bitmap.c cVar2 = new com.bumptech.glide.load.resource.bitmap.c(bVar2);
        com.bumptech.glide.load.resource.e.a aVar3 = new com.bumptech.glide.load.resource.e.a();
        com.bumptech.glide.load.resource.e.d dVar4 = new com.bumptech.glide.load.resource.e.d();
        s.b bVar4 = bVar3;
        s.d dVar5 = dVar3;
        s.a aVar4 = aVar2;
        Context context3 = context;
        com.bumptech.glide.load.resource.e.a aVar5 = aVar3;
        ContentResolver contentResolver = context.getContentResolver();
        Class<byte[]> cls3 = cls2;
        com.bumptech.glide.load.resource.e.d dVar6 = dVar4;
        this.j.append(ByteBuffer.class, new com.bumptech.glide.load.c.c()).append(InputStream.class, new com.bumptech.glide.load.c.t(bVar2)).append(f.BUCKET_BITMAP, ByteBuffer.class, Bitmap.class, fVar).append(f.BUCKET_BITMAP, InputStream.class, Bitmap.class, tVar).append(f.BUCKET_BITMAP, ParcelFileDescriptor.class, Bitmap.class, parcel).append(f.BUCKET_BITMAP, AssetFileDescriptor.class, Bitmap.class, w.asset(eVar)).append(Bitmap.class, Bitmap.class, v.a.getInstance()).append(f.BUCKET_BITMAP, Bitmap.class, Bitmap.class, new com.bumptech.glide.load.resource.bitmap.v()).append(Bitmap.class, cVar2).append(f.BUCKET_BITMAP_DRAWABLE, ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, fVar)).append(f.BUCKET_BITMAP_DRAWABLE, InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, tVar)).append(f.BUCKET_BITMAP_DRAWABLE, ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, parcel)).append(BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.b(eVar2, cVar2)).append(f.BUCKET_GIF, InputStream.class, com.bumptech.glide.load.resource.d.c.class, new com.bumptech.glide.load.resource.d.j(imageHeaderParsers, aVar, bVar2)).append(f.BUCKET_GIF, ByteBuffer.class, com.bumptech.glide.load.resource.d.c.class, aVar).append(com.bumptech.glide.load.resource.d.c.class, new com.bumptech.glide.load.resource.d.d()).append(com.bumptech.glide.b.a.class, com.bumptech.glide.b.a.class, v.a.getInstance()).append(f.BUCKET_BITMAP, com.bumptech.glide.b.a.class, Bitmap.class, new com.bumptech.glide.load.resource.d.h(eVar2)).append(Uri.class, Drawable.class, dVar2).append(Uri.class, Bitmap.class, new com.bumptech.glide.load.resource.bitmap.s(dVar2, eVar2)).register((e.a<?>) new a.C0047a()).append(File.class, ByteBuffer.class, new d.b()).append(File.class, InputStream.class, new f.e()).append(File.class, File.class, new com.bumptech.glide.load.resource.c.a()).append(File.class, ParcelFileDescriptor.class, new f.b()).append(File.class, File.class, v.a.getInstance()).register((e.a<?>) new k.a(bVar2)).append(Integer.TYPE, InputStream.class, cVar).append(Integer.TYPE, ParcelFileDescriptor.class, bVar4).append(Integer.class, InputStream.class, cVar).append(Integer.class, ParcelFileDescriptor.class, bVar4).append(Integer.class, Uri.class, dVar5).append(Integer.TYPE, AssetFileDescriptor.class, aVar4).append(Integer.class, AssetFileDescriptor.class, aVar4).append(Integer.TYPE, Uri.class, dVar5).append(String.class, InputStream.class, new e.c()).append(Uri.class, InputStream.class, new e.c()).append(String.class, InputStream.class, new u.c()).append(String.class, ParcelFileDescriptor.class, new u.b()).append(String.class, AssetFileDescriptor.class, new u.a()).append(Uri.class, InputStream.class, new b.a()).append(Uri.class, InputStream.class, new a.c(context.getAssets())).append(Uri.class, ParcelFileDescriptor.class, new a.b(context.getAssets())).append(Uri.class, InputStream.class, new c.a(context3)).append(Uri.class, InputStream.class, new d.a(context3)).append(Uri.class, InputStream.class, new w.d(contentResolver)).append(Uri.class, ParcelFileDescriptor.class, new w.b(contentResolver)).append(Uri.class, AssetFileDescriptor.class, new w.a(contentResolver)).append(Uri.class, InputStream.class, new x.a()).append(URL.class, InputStream.class, new e.a()).append(Uri.class, File.class, new k.a(context3)).append(com.bumptech.glide.load.c.g.class, InputStream.class, new a.C0044a()).append(cls3, ByteBuffer.class, new b.a()).append(cls3, InputStream.class, new b.d()).append(Uri.class, Uri.class, v.a.getInstance()).append(Drawable.class, Drawable.class, v.a.getInstance()).append(Drawable.class, Drawable.class, new com.bumptech.glide.load.resource.b.e()).register(Bitmap.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.e.b(resources)).register(Bitmap.class, cls3, aVar5).register(Drawable.class, cls3, new com.bumptech.glide.load.resource.e.c(eVar2, aVar5, dVar6)).register(com.bumptech.glide.load.resource.d.c.class, cls3, dVar6);
        e eVar3 = new e(context, bVar, this.j, new com.bumptech.glide.e.a.e(), hVar2, map, list, kVar, z, i2);
        this.f1997a = eVar3;
    }

    public com.bumptech.glide.load.b.a.e getBitmapPool() {
        return this.g;
    }

    public com.bumptech.glide.load.b.a.b getArrayPool() {
        return this.k;
    }

    public Context getContext() {
        return this.f1997a.getBaseContext();
    }

    public void preFillBitmapPool(d.a... aVarArr) {
        this.i.preFill(aVarArr);
    }

    public void clearMemory() {
        com.bumptech.glide.g.k.assertMainThread();
        this.h.clearMemory();
        this.g.clearMemory();
        this.k.clearMemory();
    }

    public void trimMemory(int i2) {
        com.bumptech.glide.g.k.assertMainThread();
        this.h.trimMemory(i2);
        this.g.trimMemory(i2);
        this.k.trimMemory(i2);
    }

    public void clearDiskCache() {
        com.bumptech.glide.g.k.assertBackgroundThread();
        this.f.clearDiskCache();
    }

    public l getRequestManagerRetriever() {
        return this.l;
    }

    public MemoryCategory setMemoryCategory(MemoryCategory memoryCategory) {
        com.bumptech.glide.g.k.assertMainThread();
        this.h.setSizeMultiplier(memoryCategory.getMultiplier());
        this.g.setSizeMultiplier(memoryCategory.getMultiplier());
        MemoryCategory memoryCategory2 = this.m;
        this.m = memoryCategory;
        return memoryCategory2;
    }

    private static l a(Context context) {
        com.bumptech.glide.g.j.checkNotNull(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return get(context).getRequestManagerRetriever();
    }

    public static h with(Context context) {
        return a(context).get(context);
    }

    public static h with(Activity activity) {
        return a((Context) activity).get(activity);
    }

    public static h with(FragmentActivity fragmentActivity) {
        return a((Context) fragmentActivity).get(fragmentActivity);
    }

    public static h with(Fragment fragment) {
        return a((Context) fragment.getActivity()).get(fragment);
    }

    @Deprecated
    public static h with(android.app.Fragment fragment) {
        return a((Context) fragment.getActivity()).get(fragment);
    }

    public static h with(View view) {
        return a(view.getContext()).get(view);
    }

    public f getRegistry() {
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final boolean a(i<?> iVar) {
        synchronized (this.c) {
            for (h a2 : this.c) {
                if (a2.a(iVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void onTrimMemory(int i2) {
        trimMemory(i2);
    }

    public void onLowMemory() {
        clearMemory();
    }
}
