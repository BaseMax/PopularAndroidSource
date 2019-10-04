package c.b.a;

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
import c.b.a.c.a.e;
import c.b.a.c.a.l;
import c.b.a.c.b.a.b;
import c.b.a.c.b.b.i;
import c.b.a.c.b.d.a;
import c.b.a.c.b.r;
import c.b.a.c.c.A;
import c.b.a.c.c.B;
import c.b.a.c.c.C;
import c.b.a.c.c.C0366a;
import c.b.a.c.c.C0368c;
import c.b.a.c.c.C0370e;
import c.b.a.c.c.D;
import c.b.a.c.c.E;
import c.b.a.c.c.a.a;
import c.b.a.c.c.a.b;
import c.b.a.c.c.a.c;
import c.b.a.c.c.a.d;
import c.b.a.c.c.a.e;
import c.b.a.c.c.f;
import c.b.a.c.c.g;
import c.b.a.c.c.i;
import c.b.a.c.c.q;
import c.b.a.c.c.z;
import c.b.a.c.d.a.c;
import c.b.a.c.d.a.f;
import c.b.a.c.d.a.k;
import c.b.a.c.d.a.o;
import c.b.a.c.d.a.s;
import c.b.a.c.d.a.u;
import c.b.a.c.d.a.w;
import c.b.a.c.d.a.z;
import c.b.a.c.d.b.a;
import c.b.a.c.d.e.h;
import c.b.a.c.d.e.j;
import c.b.a.d.d;
import c.b.a.d.n;
import c.b.a.g.g;
import com.bumptech.glide.MemoryCategory;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
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

/* compiled from: Glide */
public class e implements ComponentCallbacks2 {

    /* renamed from: a  reason: collision with root package name */
    public static volatile e f4309a;

    /* renamed from: b  reason: collision with root package name */
    public static volatile boolean f4310b;

    /* renamed from: c  reason: collision with root package name */
    public final r f4311c;

    /* renamed from: d  reason: collision with root package name */
    public final c.b.a.c.b.a.e f4312d;

    /* renamed from: e  reason: collision with root package name */
    public final i f4313e;

    /* renamed from: f  reason: collision with root package name */
    public final a f4314f;

    /* renamed from: g  reason: collision with root package name */
    public final g f4315g;

    /* renamed from: h  reason: collision with root package name */
    public final Registry f4316h;

    /* renamed from: i  reason: collision with root package name */
    public final b f4317i;

    /* renamed from: j  reason: collision with root package name */
    public final n f4318j;

    /* renamed from: k  reason: collision with root package name */
    public final d f4319k;

    /* renamed from: l  reason: collision with root package name */
    public final List<n> f4320l = new ArrayList();
    public MemoryCategory m = MemoryCategory.NORMAL;

    public e(Context context, r rVar, i iVar, c.b.a.c.b.a.e eVar, b bVar, n nVar, d dVar, int i2, g gVar, Map<Class<?>, o<?, ?>> map) {
        Context context2 = context;
        i iVar2 = iVar;
        c.b.a.c.b.a.e eVar2 = eVar;
        b bVar2 = bVar;
        this.f4311c = rVar;
        this.f4312d = eVar2;
        this.f4317i = bVar2;
        this.f4313e = iVar2;
        this.f4318j = nVar;
        this.f4319k = dVar;
        this.f4314f = new a(iVar2, eVar2, (DecodeFormat) gVar.h().a(k.f4167a));
        Resources resources = context.getResources();
        this.f4316h = new Registry();
        if (Build.VERSION.SDK_INT >= 27) {
            this.f4316h.a((ImageHeaderParser) new o());
        }
        this.f4316h.a((ImageHeaderParser) new c.b.a.c.d.a.i());
        k kVar = new k(this.f4316h.a(), resources.getDisplayMetrics(), eVar2, bVar2);
        c.b.a.c.d.e.a aVar = new c.b.a.c.d.e.a(context2, this.f4316h.a(), eVar2, bVar2);
        c.b.a.c.g<ParcelFileDescriptor, Bitmap> b2 = z.b(eVar);
        f fVar = new f(kVar);
        u uVar = new u(kVar, bVar2);
        c.b.a.c.d.c.d dVar2 = new c.b.a.c.d.c.d(context2);
        z.c cVar = new z.c(resources);
        z.d dVar3 = new z.d(resources);
        z.b bVar3 = new z.b(resources);
        z.a aVar2 = new z.a(resources);
        c cVar2 = new c(bVar2);
        c.b.a.c.d.f.a aVar3 = new c.b.a.c.d.f.a();
        c.b.a.c.d.f.d dVar4 = new c.b.a.c.d.f.d();
        ContentResolver contentResolver = context.getContentResolver();
        Registry registry = this.f4316h;
        registry.a(ByteBuffer.class, new C0370e());
        registry.a(InputStream.class, new A(bVar2));
        registry.a("Bitmap", ByteBuffer.class, Bitmap.class, fVar);
        registry.a("Bitmap", InputStream.class, Bitmap.class, uVar);
        registry.a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, b2);
        registry.a("Bitmap", AssetFileDescriptor.class, Bitmap.class, c.b.a.c.d.a.z.a(eVar));
        registry.a(Bitmap.class, Bitmap.class, C.a.a());
        registry.a("Bitmap", Bitmap.class, Bitmap.class, new w());
        registry.a(Bitmap.class, cVar2);
        registry.a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new c.b.a.c.d.a.a(resources, fVar));
        registry.a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new c.b.a.c.d.a.a(resources, uVar));
        registry.a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new c.b.a.c.d.a.a(resources, b2));
        registry.a(BitmapDrawable.class, new c.b.a.c.d.a.b(eVar2, cVar2));
        registry.a("Gif", InputStream.class, c.b.a.c.d.e.c.class, new j(this.f4316h.a(), aVar, bVar2));
        registry.a("Gif", ByteBuffer.class, c.b.a.c.d.e.c.class, aVar);
        registry.a(c.b.a.c.d.e.c.class, new c.b.a.c.d.e.d());
        registry.a(c.b.a.b.a.class, c.b.a.b.a.class, C.a.a());
        registry.a("Bitmap", c.b.a.b.a.class, Bitmap.class, new h(eVar2));
        registry.a(Uri.class, Drawable.class, dVar2);
        registry.a(Uri.class, Bitmap.class, new s(dVar2, eVar2));
        registry.a((e.a<?>) new a.C0060a());
        registry.a(File.class, ByteBuffer.class, new f.b());
        registry.a(File.class, InputStream.class, new i.e());
        registry.a(File.class, File.class, new c.b.a.c.d.d.a());
        registry.a(File.class, ParcelFileDescriptor.class, new i.b());
        registry.a(File.class, File.class, C.a.a());
        registry.a((e.a<?>) new l.a(bVar2));
        registry.a(Integer.TYPE, InputStream.class, cVar);
        z.b bVar4 = bVar3;
        registry.a(Integer.TYPE, ParcelFileDescriptor.class, bVar4);
        registry.a(Integer.class, InputStream.class, cVar);
        registry.a(Integer.class, ParcelFileDescriptor.class, bVar4);
        z.d dVar5 = dVar3;
        registry.a(Integer.class, Uri.class, dVar5);
        z.a aVar4 = aVar2;
        registry.a(Integer.TYPE, AssetFileDescriptor.class, aVar4);
        registry.a(Integer.class, AssetFileDescriptor.class, aVar4);
        registry.a(Integer.TYPE, Uri.class, dVar5);
        registry.a(String.class, InputStream.class, new g.c());
        registry.a(Uri.class, InputStream.class, new g.c());
        registry.a(String.class, InputStream.class, new B.c());
        registry.a(String.class, ParcelFileDescriptor.class, new B.b());
        registry.a(String.class, AssetFileDescriptor.class, new B.a());
        registry.a(Uri.class, InputStream.class, new b.a());
        registry.a(Uri.class, InputStream.class, new C0366a.c(context.getAssets()));
        registry.a(Uri.class, ParcelFileDescriptor.class, new C0366a.b(context.getAssets()));
        Context context3 = context;
        registry.a(Uri.class, InputStream.class, new c.a(context3));
        registry.a(Uri.class, InputStream.class, new d.a(context3));
        ContentResolver contentResolver2 = contentResolver;
        registry.a(Uri.class, InputStream.class, new D.d(contentResolver2));
        registry.a(Uri.class, ParcelFileDescriptor.class, new D.b(contentResolver2));
        registry.a(Uri.class, AssetFileDescriptor.class, new D.a(contentResolver2));
        registry.a(Uri.class, InputStream.class, new E.a());
        registry.a(URL.class, InputStream.class, new e.a());
        registry.a(Uri.class, File.class, new q.a(context3));
        registry.a(c.b.a.c.c.l.class, InputStream.class, new a.C0057a());
        registry.a(byte[].class, ByteBuffer.class, new C0368c.a());
        registry.a(byte[].class, InputStream.class, new C0368c.d());
        registry.a(Uri.class, Uri.class, C.a.a());
        registry.a(Drawable.class, Drawable.class, C.a.a());
        registry.a(Drawable.class, Drawable.class, new c.b.a.c.d.c.e());
        registry.a(Bitmap.class, BitmapDrawable.class, new c.b.a.c.d.f.b(resources));
        c.b.a.c.d.f.a aVar5 = aVar3;
        registry.a(Bitmap.class, byte[].class, aVar5);
        c.b.a.c.d.f.d dVar6 = dVar4;
        registry.a(Drawable.class, byte[].class, new c.b.a.c.d.f.c(eVar2, aVar5, dVar6));
        registry.a(c.b.a.c.d.e.c.class, byte[].class, dVar6);
        g gVar2 = new g(context, bVar, this.f4316h, new c.b.a.g.a.e(), gVar, map, rVar, i2);
        this.f4315g = gVar2;
    }

    public static void a(Context context) {
        if (!f4310b) {
            f4310b = true;
            d(context);
            f4310b = false;
            return;
        }
        throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
    }

    public static e b(Context context) {
        if (f4309a == null) {
            synchronized (e.class) {
                if (f4309a == null) {
                    a(context);
                }
            }
        }
        return f4309a;
    }

    public static void d(Context context) {
        a(context, new f());
    }

    public c.b.a.c.b.a.b c() {
        return this.f4317i;
    }

    public c.b.a.d.d e() {
        return this.f4319k;
    }

    public Context f() {
        return this.f4315g.getBaseContext();
    }

    public g g() {
        return this.f4315g;
    }

    public Registry h() {
        return this.f4316h;
    }

    public n i() {
        return this.f4318j;
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onLowMemory() {
        a();
    }

    public void onTrimMemory(int i2) {
        a(i2);
    }

    public static n c(Context context) {
        c.b.a.i.i.a(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return b(context).i();
    }

    public static n e(Context context) {
        return c(context).a(context);
    }

    public c.b.a.c.b.a.e d() {
        return this.f4312d;
    }

    public static void a(Context context, f fVar) {
        Context applicationContext = context.getApplicationContext();
        a b2 = b();
        List<c.b.a.e.c> emptyList = Collections.emptyList();
        if (b2 == null || b2.a()) {
            emptyList = new c.b.a.e.e(applicationContext).a();
        }
        if (b2 != null && !b2.b().isEmpty()) {
            Set<Class<?>> b3 = b2.b();
            Iterator<c.b.a.e.c> it = emptyList.iterator();
            while (it.hasNext()) {
                c.b.a.e.c next = it.next();
                if (b3.contains(next.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + next);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator<c.b.a.e.c> it2 = emptyList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + it2.next().getClass());
            }
        }
        fVar.a(b2 != null ? b2.c() : null);
        for (c.b.a.e.c a2 : emptyList) {
            a2.a(applicationContext, fVar);
        }
        if (b2 != null) {
            b2.a(applicationContext, fVar);
        }
        e a3 = fVar.a(applicationContext);
        for (c.b.a.e.c a4 : emptyList) {
            a4.a(applicationContext, a3, a3.f4316h);
        }
        if (b2 != null) {
            b2.a(applicationContext, a3, a3.f4316h);
        }
        applicationContext.registerComponentCallbacks(a3);
        f4309a = a3;
    }

    public static a b() {
        try {
            return (a) Class.forName("c.b.a.b").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException unused) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (InstantiationException e2) {
            a((Exception) e2);
            throw null;
        } catch (IllegalAccessException e3) {
            a((Exception) e3);
            throw null;
        } catch (NoSuchMethodException e4) {
            a((Exception) e4);
            throw null;
        } catch (InvocationTargetException e5) {
            a((Exception) e5);
            throw null;
        }
    }

    public void b(n nVar) {
        synchronized (this.f4320l) {
            if (this.f4320l.contains(nVar)) {
                this.f4320l.remove(nVar);
            } else {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
        }
    }

    public static void a(Exception exc) {
        throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", exc);
    }

    public void a() {
        c.b.a.i.k.b();
        this.f4313e.a();
        this.f4312d.a();
        this.f4317i.a();
    }

    public void a(int i2) {
        c.b.a.i.k.b();
        this.f4313e.a(i2);
        this.f4312d.a(i2);
        this.f4317i.a(i2);
    }

    public MemoryCategory a(MemoryCategory memoryCategory) {
        c.b.a.i.k.b();
        this.f4313e.a(memoryCategory.f());
        this.f4312d.a(memoryCategory.f());
        MemoryCategory memoryCategory2 = this.m;
        this.m = memoryCategory;
        return memoryCategory2;
    }

    public boolean a(c.b.a.g.a.h<?> hVar) {
        synchronized (this.f4320l) {
            for (n b2 : this.f4320l) {
                if (b2.b(hVar)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void a(n nVar) {
        synchronized (this.f4320l) {
            if (!this.f4320l.contains(nVar)) {
                this.f4320l.add(nVar);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
    }
}
