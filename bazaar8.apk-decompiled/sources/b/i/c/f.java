package b.i.c;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.util.Log;
import b.i.b.a.c;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

/* compiled from: TypefaceCompatApi26Impl */
public class f extends d {

    /* renamed from: g  reason: collision with root package name */
    public final Class f2651g;

    /* renamed from: h  reason: collision with root package name */
    public final Constructor f2652h;

    /* renamed from: i  reason: collision with root package name */
    public final Method f2653i;

    /* renamed from: j  reason: collision with root package name */
    public final Method f2654j;

    /* renamed from: k  reason: collision with root package name */
    public final Method f2655k;

    /* renamed from: l  reason: collision with root package name */
    public final Method f2656l;
    public final Method m;

    public f() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Constructor constructor;
        Method method5;
        Class cls = null;
        try {
            Class d2 = d();
            constructor = e(d2);
            method4 = b(d2);
            method3 = c(d2);
            method2 = f(d2);
            method = a(d2);
            Class cls2 = d2;
            method5 = d(d2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e2.getClass().getName(), e2);
            method5 = null;
            constructor = null;
            method4 = null;
            method3 = null;
            method2 = null;
            method = null;
        }
        this.f2651g = cls;
        this.f2652h = constructor;
        this.f2653i = method4;
        this.f2654j = method3;
        this.f2655k = method2;
        this.f2656l = method;
        this.m = method5;
    }

    private Object b() {
        try {
            return this.f2652h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    public final boolean a(Context context, Object obj, String str, int i2, int i3, int i4, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f2653i.invoke(obj, new Object[]{context.getAssets(), str, 0, false, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), fontVariationAxisArr})).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean c() {
        if (this.f2653i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f2653i != null;
    }

    public Class d() {
        return Class.forName("android.graphics.FontFamily");
    }

    public Constructor e(Class cls) {
        return cls.getConstructor(new Class[0]);
    }

    public Method f(Class cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    public final void b(Object obj) {
        try {
            this.f2656l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    public Method d(Class cls) {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", new Class[]{Array.newInstance(cls, 1).getClass(), cls2, cls2});
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    public Method b(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", new Class[]{AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class});
    }

    public final boolean c(Object obj) {
        try {
            return ((Boolean) this.f2655k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public final boolean a(Object obj, ByteBuffer byteBuffer, int i2, int i3, int i4) {
        try {
            return ((Boolean) this.f2654j.invoke(obj, new Object[]{byteBuffer, Integer.valueOf(i2), null, Integer.valueOf(i3), Integer.valueOf(i4)})).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public Method c(Class cls) {
        Class cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", new Class[]{ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2});
    }

    public Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f2651g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.m.invoke(null, new Object[]{newInstance, -1, -1});
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public Typeface a(Context context, c.b bVar, Resources resources, int i2) {
        if (!c()) {
            return super.a(context, bVar, resources, i2);
        }
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        for (c.C0028c cVar : bVar.a()) {
            if (!a(context, b2, cVar.a(), cVar.c(), cVar.e(), cVar.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.d()))) {
                b(b2);
                return null;
            }
        }
        if (!c(b2)) {
            return null;
        }
        return a(b2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0049, code lost:
        r13 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:0x004a, code lost:
        r14 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x004e, code lost:
        r14 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x004f, code lost:
        r10 = r14;
        r14 = r13;
        r13 = r10;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.graphics.Typeface a(android.content.Context r12, android.os.CancellationSignal r13, b.i.h.f.b[] r14, int r15) {
        /*
            r11 = this;
            int r0 = r14.length
            r1 = 1
            r2 = 0
            if (r0 >= r1) goto L_0x0006
            return r2
        L_0x0006:
            boolean r0 = r11.c()
            if (r0 != 0) goto L_0x005f
            b.i.h.f$b r14 = r11.a((b.i.h.f.b[]) r14, (int) r15)
            android.content.ContentResolver r12 = r12.getContentResolver()
            android.net.Uri r15 = r14.c()     // Catch:{ IOException -> 0x005e }
            java.lang.String r0 = "r"
            android.os.ParcelFileDescriptor r12 = r12.openFileDescriptor(r15, r0, r13)     // Catch:{ IOException -> 0x005e }
            if (r12 != 0) goto L_0x0026
            if (r12 == 0) goto L_0x0025
            r12.close()     // Catch:{ IOException -> 0x005e }
        L_0x0025:
            return r2
        L_0x0026:
            android.graphics.Typeface$Builder r13 = new android.graphics.Typeface$Builder     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            java.io.FileDescriptor r15 = r12.getFileDescriptor()     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            r13.<init>(r15)     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            int r15 = r14.d()     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            android.graphics.Typeface$Builder r13 = r13.setWeight(r15)     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            boolean r14 = r14.e()     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            android.graphics.Typeface$Builder r13 = r13.setItalic(r14)     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            android.graphics.Typeface r13 = r13.build()     // Catch:{ Throwable -> 0x004c, all -> 0x0049 }
            if (r12 == 0) goto L_0x0048
            r12.close()     // Catch:{ IOException -> 0x005e }
        L_0x0048:
            return r13
        L_0x0049:
            r13 = move-exception
            r14 = r2
            goto L_0x0052
        L_0x004c:
            r13 = move-exception
            throw r13     // Catch:{ all -> 0x004e }
        L_0x004e:
            r14 = move-exception
            r10 = r14
            r14 = r13
            r13 = r10
        L_0x0052:
            if (r12 == 0) goto L_0x005d
            if (r14 == 0) goto L_0x005a
            r12.close()     // Catch:{ Throwable -> 0x005d }
            goto L_0x005d
        L_0x005a:
            r12.close()     // Catch:{ IOException -> 0x005e }
        L_0x005d:
            throw r13     // Catch:{ IOException -> 0x005e }
        L_0x005e:
            return r2
        L_0x005f:
            java.util.Map r12 = b.i.h.f.a((android.content.Context) r12, (b.i.h.f.b[]) r14, (android.os.CancellationSignal) r13)
            java.lang.Object r13 = r11.b()
            if (r13 != 0) goto L_0x006a
            return r2
        L_0x006a:
            int r0 = r14.length
            r3 = 0
            r9 = 0
        L_0x006d:
            if (r9 >= r0) goto L_0x009a
            r4 = r14[r9]
            android.net.Uri r5 = r4.c()
            java.lang.Object r5 = r12.get(r5)
            java.nio.ByteBuffer r5 = (java.nio.ByteBuffer) r5
            if (r5 != 0) goto L_0x007e
            goto L_0x0097
        L_0x007e:
            int r6 = r4.b()
            int r7 = r4.d()
            boolean r8 = r4.e()
            r3 = r11
            r4 = r13
            boolean r3 = r3.a((java.lang.Object) r4, (java.nio.ByteBuffer) r5, (int) r6, (int) r7, (int) r8)
            if (r3 != 0) goto L_0x0096
            r11.b((java.lang.Object) r13)
            return r2
        L_0x0096:
            r3 = 1
        L_0x0097:
            int r9 = r9 + 1
            goto L_0x006d
        L_0x009a:
            if (r3 != 0) goto L_0x00a0
            r11.b((java.lang.Object) r13)
            return r2
        L_0x00a0:
            boolean r12 = r11.c((java.lang.Object) r13)
            if (r12 != 0) goto L_0x00a7
            return r2
        L_0x00a7:
            android.graphics.Typeface r12 = r11.a((java.lang.Object) r13)
            if (r12 != 0) goto L_0x00ae
            return r2
        L_0x00ae:
            android.graphics.Typeface r12 = android.graphics.Typeface.create(r12, r15)
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.c.f.a(android.content.Context, android.os.CancellationSignal, b.i.h.f$b[], int):android.graphics.Typeface");
    }

    public Typeface a(Context context, Resources resources, int i2, String str, int i3) {
        if (!c()) {
            return super.a(context, resources, i2, str, i3);
        }
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        if (!a(context, b2, str, 0, -1, -1, null)) {
            b(b2);
            return null;
        } else if (!c(b2)) {
            return null;
        } else {
            return a(b2);
        }
    }

    public Method a(Class cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }
}
