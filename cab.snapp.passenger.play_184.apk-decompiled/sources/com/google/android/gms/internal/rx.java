package com.google.android.gms.internal;

import java.lang.reflect.Field;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;

final class rx {

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f3507a = Logger.getLogger(rx.class.getName());

    /* renamed from: b  reason: collision with root package name */
    private static final Unsafe f3508b = d();
    private static final Class<?> c = a("libcore.io.Memory");
    private static final boolean d = (a("org.robolectric.Robolectric") != null);
    private static final boolean e = c(Long.TYPE);
    private static final boolean f = c(Integer.TYPE);
    private static final d g;
    private static final boolean h = f();
    private static final boolean i = e();
    private static final long j = ((long) a((Class<?>) byte[].class));
    private static final long k;
    private static final long l;
    private static final long m;
    private static final long n;
    private static final long o;
    private static final long p;
    private static final long q;
    private static final long r;
    private static final long s;
    private static final long t;
    private static final long u = ((long) a((Class<?>) Object[].class));
    private static final long v = ((long) b(Object[].class));
    private static final long w;
    /* access modifiers changed from: private */
    public static final boolean x;

    static final class a extends d {
        a(Unsafe unsafe) {
            super(unsafe);
        }

        public final void zze(Object obj, long j, byte b2) {
            if (rx.x) {
                rx.a(obj, j, b2);
            } else {
                rx.b(obj, j, b2);
            }
        }

        public final byte zzf(Object obj, long j) {
            return rx.x ? rx.a(obj, j) : rx.b(obj, j);
        }
    }

    static final class b extends d {
        b(Unsafe unsafe) {
            super(unsafe);
        }

        public final void zze(Object obj, long j, byte b2) {
            if (rx.x) {
                rx.a(obj, j, b2);
            } else {
                rx.b(obj, j, b2);
            }
        }

        public final byte zzf(Object obj, long j) {
            return rx.x ? rx.a(obj, j) : rx.b(obj, j);
        }
    }

    static final class c extends d {
        c(Unsafe unsafe) {
            super(unsafe);
        }

        public final void zze(Object obj, long j, byte b2) {
            this.f3509a.putByte(obj, j, b2);
        }

        public final byte zzf(Object obj, long j) {
            return this.f3509a.getByte(obj, j);
        }
    }

    static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        Unsafe f3509a;

        d(Unsafe unsafe) {
            this.f3509a = unsafe;
        }

        public final int zza(Object obj, long j) {
            return this.f3509a.getInt(obj, j);
        }

        public abstract void zze(Object obj, long j, byte b2);

        public abstract byte zzf(Object obj, long j);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x00eb, code lost:
        if (r0 != null) goto L_0x00f6;
     */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0111  */
    static {
        /*
            java.lang.Class<double[]> r0 = double[].class
            java.lang.Class<float[]> r1 = float[].class
            java.lang.Class<long[]> r2 = long[].class
            java.lang.Class<int[]> r3 = int[].class
            java.lang.Class<boolean[]> r4 = boolean[].class
            java.lang.Class<com.google.android.gms.internal.rx> r5 = com.google.android.gms.internal.rx.class
            java.lang.String r5 = r5.getName()
            java.util.logging.Logger r5 = java.util.logging.Logger.getLogger(r5)
            f3507a = r5
            sun.misc.Unsafe r5 = d()
            f3508b = r5
            java.lang.String r5 = "libcore.io.Memory"
            java.lang.Class r5 = a((java.lang.String) r5)
            c = r5
            java.lang.String r5 = "org.robolectric.Robolectric"
            java.lang.Class r5 = a((java.lang.String) r5)
            r6 = 1
            r7 = 0
            if (r5 == 0) goto L_0x0030
            r5 = 1
            goto L_0x0031
        L_0x0030:
            r5 = 0
        L_0x0031:
            d = r5
            java.lang.Class r5 = java.lang.Long.TYPE
            boolean r5 = c(r5)
            e = r5
            java.lang.Class r5 = java.lang.Integer.TYPE
            boolean r5 = c(r5)
            f = r5
            sun.misc.Unsafe r5 = f3508b
            r8 = 0
            if (r5 != 0) goto L_0x0049
            goto L_0x006e
        L_0x0049:
            boolean r5 = g()
            if (r5 == 0) goto L_0x0067
            boolean r5 = e
            if (r5 == 0) goto L_0x005b
            com.google.android.gms.internal.rx$b r8 = new com.google.android.gms.internal.rx$b
            sun.misc.Unsafe r5 = f3508b
            r8.<init>(r5)
            goto L_0x006e
        L_0x005b:
            boolean r5 = f
            if (r5 == 0) goto L_0x006e
            com.google.android.gms.internal.rx$a r8 = new com.google.android.gms.internal.rx$a
            sun.misc.Unsafe r5 = f3508b
            r8.<init>(r5)
            goto L_0x006e
        L_0x0067:
            com.google.android.gms.internal.rx$c r8 = new com.google.android.gms.internal.rx$c
            sun.misc.Unsafe r5 = f3508b
            r8.<init>(r5)
        L_0x006e:
            g = r8
            boolean r5 = f()
            h = r5
            boolean r5 = e()
            i = r5
            java.lang.Class<byte[]> r5 = byte[].class
            int r5 = a((java.lang.Class<?>) r5)
            long r8 = (long) r5
            j = r8
            int r5 = a((java.lang.Class<?>) r4)
            long r8 = (long) r5
            k = r8
            int r4 = b(r4)
            long r4 = (long) r4
            l = r4
            int r4 = a((java.lang.Class<?>) r3)
            long r4 = (long) r4
            m = r4
            int r3 = b(r3)
            long r3 = (long) r3
            n = r3
            int r3 = a((java.lang.Class<?>) r2)
            long r3 = (long) r3
            o = r3
            int r2 = b(r2)
            long r2 = (long) r2
            p = r2
            int r2 = a((java.lang.Class<?>) r1)
            long r2 = (long) r2
            q = r2
            int r1 = b(r1)
            long r1 = (long) r1
            r = r1
            int r1 = a((java.lang.Class<?>) r0)
            long r1 = (long) r1
            s = r1
            int r0 = b(r0)
            long r0 = (long) r0
            t = r0
            java.lang.Class<java.lang.Object[]> r0 = java.lang.Object[].class
            int r0 = a((java.lang.Class<?>) r0)
            long r0 = (long) r0
            u = r0
            java.lang.Class<java.lang.Object[]> r0 = java.lang.Object[].class
            int r0 = b(r0)
            long r0 = (long) r0
            v = r0
            boolean r0 = g()
            if (r0 == 0) goto L_0x00ee
            java.lang.Class<java.nio.Buffer> r0 = java.nio.Buffer.class
            java.lang.String r1 = "effectiveDirectAddress"
            java.lang.reflect.Field r0 = a((java.lang.Class<?>) r0, (java.lang.String) r1)
            if (r0 == 0) goto L_0x00ee
            goto L_0x00f6
        L_0x00ee:
            java.lang.Class<java.nio.Buffer> r0 = java.nio.Buffer.class
            java.lang.String r1 = "address"
            java.lang.reflect.Field r0 = a((java.lang.Class<?>) r0, (java.lang.String) r1)
        L_0x00f6:
            if (r0 == 0) goto L_0x0104
            com.google.android.gms.internal.rx$d r1 = g
            if (r1 != 0) goto L_0x00fd
            goto L_0x0104
        L_0x00fd:
            sun.misc.Unsafe r1 = r1.f3509a
            long r0 = r1.objectFieldOffset(r0)
            goto L_0x0106
        L_0x0104:
            r0 = -1
        L_0x0106:
            w = r0
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            if (r0 != r1) goto L_0x0111
            goto L_0x0112
        L_0x0111:
            r6 = 0
        L_0x0112:
            x = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.rx.<clinit>():void");
    }

    private rx() {
    }

    static byte a(byte[] bArr, long j2) {
        return g.zzf(bArr, j + j2);
    }

    private static int a(Class<?> cls) {
        if (i) {
            return g.f3509a.arrayBaseOffset(cls);
        }
        return -1;
    }

    private static <T> Class<T> a(String str) {
        try {
            return Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field a(Class<?> cls, String str) {
        try {
            Field declaredField = cls.getDeclaredField(str);
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static void a(Object obj, long j2, int i2) {
        g.f3509a.putInt(obj, j2, i2);
    }

    static void a(byte[] bArr, long j2, byte b2) {
        g.zze(bArr, j + j2, b2);
    }

    static boolean a() {
        return i;
    }

    private static int b(Class<?> cls) {
        if (i) {
            return g.f3509a.arrayIndexScale(cls);
        }
        return -1;
    }

    static boolean b() {
        return h;
    }

    private static int c(Object obj, long j2) {
        return g.zza(obj, j2);
    }

    private static boolean c(Class<?> cls) {
        Class<byte[]> cls2 = byte[].class;
        if (!g()) {
            return false;
        }
        try {
            Class<?> cls3 = c;
            cls3.getMethod("peekLong", new Class[]{cls, Boolean.TYPE});
            cls3.getMethod("pokeLong", new Class[]{cls, Long.TYPE, Boolean.TYPE});
            cls3.getMethod("pokeInt", new Class[]{cls, Integer.TYPE, Boolean.TYPE});
            cls3.getMethod("peekInt", new Class[]{cls, Boolean.TYPE});
            cls3.getMethod("pokeByte", new Class[]{cls, Byte.TYPE});
            cls3.getMethod("peekByte", new Class[]{cls});
            cls3.getMethod("pokeByteArray", new Class[]{cls, cls2, Integer.TYPE, Integer.TYPE});
            cls3.getMethod("peekByteArray", new Class[]{cls, cls2, Integer.TYPE, Integer.TYPE});
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Unsafe d() {
        try {
            return (Unsafe) AccessController.doPrivileged(new ry());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean e() {
        Unsafe unsafe = f3508b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", new Class[]{Field.class});
            cls.getMethod("arrayBaseOffset", new Class[]{Class.class});
            cls.getMethod("arrayIndexScale", new Class[]{Class.class});
            cls.getMethod("getInt", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putInt", new Class[]{Object.class, Long.TYPE, Integer.TYPE});
            cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putLong", new Class[]{Object.class, Long.TYPE, Long.TYPE});
            cls.getMethod("getObject", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putObject", new Class[]{Object.class, Long.TYPE, Object.class});
            if (g()) {
                return true;
            }
            cls.getMethod("getByte", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putByte", new Class[]{Object.class, Long.TYPE, Byte.TYPE});
            cls.getMethod("getBoolean", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putBoolean", new Class[]{Object.class, Long.TYPE, Boolean.TYPE});
            cls.getMethod("getFloat", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putFloat", new Class[]{Object.class, Long.TYPE, Float.TYPE});
            cls.getMethod("getDouble", new Class[]{Object.class, Long.TYPE});
            cls.getMethod("putDouble", new Class[]{Object.class, Long.TYPE, Double.TYPE});
            return true;
        } catch (Throwable th) {
            Logger logger = f3507a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    private static boolean f() {
        Unsafe unsafe = f3508b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", new Class[]{Field.class});
            cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
            if (g()) {
                return true;
            }
            cls.getMethod("getByte", new Class[]{Long.TYPE});
            cls.getMethod("putByte", new Class[]{Long.TYPE, Byte.TYPE});
            cls.getMethod("getInt", new Class[]{Long.TYPE});
            cls.getMethod("putInt", new Class[]{Long.TYPE, Integer.TYPE});
            cls.getMethod("getLong", new Class[]{Long.TYPE});
            cls.getMethod("putLong", new Class[]{Long.TYPE, Long.TYPE});
            cls.getMethod("copyMemory", new Class[]{Long.TYPE, Long.TYPE, Long.TYPE});
            cls.getMethod("copyMemory", new Class[]{Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE});
            return true;
        } catch (Throwable th) {
            Logger logger = f3507a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    private static boolean g() {
        return c != null && !d;
    }

    static /* synthetic */ byte a(Object obj, long j2) {
        return (byte) (c(obj, -4 & j2) >>> ((int) (((j2 ^ -1) & 3) << 3)));
    }

    static /* synthetic */ byte b(Object obj, long j2) {
        return (byte) (c(obj, -4 & j2) >>> ((int) ((j2 & 3) << 3)));
    }

    static /* synthetic */ void a(Object obj, long j2, byte b2) {
        long j3 = -4 & j2;
        int i2 = ((((int) j2) ^ -1) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (c(obj, j3) & ((255 << i2) ^ -1)));
    }

    static /* synthetic */ void b(Object obj, long j2, byte b2) {
        long j3 = -4 & j2;
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (c(obj, j3) & ((255 << i2) ^ -1)));
    }
}
