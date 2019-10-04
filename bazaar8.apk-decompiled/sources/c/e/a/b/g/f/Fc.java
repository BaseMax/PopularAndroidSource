package c.e.a.b.g.f;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;

public final class Fc {

    /* renamed from: a  reason: collision with root package name */
    public static final Logger f10157a = Logger.getLogger(Fc.class.getName());

    /* renamed from: b  reason: collision with root package name */
    public static final Unsafe f10158b = d();

    /* renamed from: c  reason: collision with root package name */
    public static final Class<?> f10159c = Ga.b();

    /* renamed from: d  reason: collision with root package name */
    public static final boolean f10160d = d(Long.TYPE);

    /* renamed from: e  reason: collision with root package name */
    public static final boolean f10161e = d(Integer.TYPE);

    /* renamed from: f  reason: collision with root package name */
    public static final d f10162f;

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f10163g = f();

    /* renamed from: h  reason: collision with root package name */
    public static final boolean f10164h = e();

    /* renamed from: i  reason: collision with root package name */
    public static final long f10165i = ((long) b(byte[].class));

    /* renamed from: j  reason: collision with root package name */
    public static final long f10166j = ((long) b(boolean[].class));

    /* renamed from: k  reason: collision with root package name */
    public static final long f10167k = ((long) c(boolean[].class));

    /* renamed from: l  reason: collision with root package name */
    public static final long f10168l = ((long) b(int[].class));
    public static final long m = ((long) c(int[].class));
    public static final long n = ((long) b(long[].class));
    public static final long o = ((long) c(long[].class));
    public static final long p = ((long) b(float[].class));
    public static final long q = ((long) c(float[].class));
    public static final long r = ((long) b(double[].class));
    public static final long s = ((long) c(double[].class));
    public static final long t = ((long) b(Object[].class));
    public static final long u = ((long) c(Object[].class));
    public static final long v;
    public static final boolean w = (ByteOrder.nativeOrder() != ByteOrder.BIG_ENDIAN);

    static final class a extends d {
        public a(Unsafe unsafe) {
            super(unsafe);
        }

        public final void a(long j2, byte b2) {
            Memory.pokeByte((int) (j2 & -1), b2);
        }

        public final boolean c(Object obj, long j2) {
            if (Fc.w) {
                return Fc.i(obj, j2);
            }
            return Fc.j(obj, j2);
        }

        public final float d(Object obj, long j2) {
            return Float.intBitsToFloat(a(obj, j2));
        }

        public final double e(Object obj, long j2) {
            return Double.longBitsToDouble(b(obj, j2));
        }

        public final byte f(Object obj, long j2) {
            if (Fc.w) {
                return Fc.g(obj, j2);
            }
            return Fc.h(obj, j2);
        }

        public final void a(Object obj, long j2, byte b2) {
            if (Fc.w) {
                Fc.a(obj, j2, b2);
            } else {
                Fc.b(obj, j2, b2);
            }
        }

        public final void a(Object obj, long j2, boolean z) {
            if (Fc.w) {
                Fc.b(obj, j2, z);
            } else {
                Fc.c(obj, j2, z);
            }
        }

        public final void a(Object obj, long j2, float f2) {
            a(obj, j2, Float.floatToIntBits(f2));
        }

        public final void a(Object obj, long j2, double d2) {
            a(obj, j2, Double.doubleToLongBits(d2));
        }

        public final void a(byte[] bArr, long j2, long j3, long j4) {
            Memory.pokeByteArray((int) (j3 & -1), bArr, (int) j2, (int) j4);
        }
    }

    static final class b extends d {
        public b(Unsafe unsafe) {
            super(unsafe);
        }

        public final void a(long j2, byte b2) {
            Memory.pokeByte(j2, b2);
        }

        public final boolean c(Object obj, long j2) {
            if (Fc.w) {
                return Fc.i(obj, j2);
            }
            return Fc.j(obj, j2);
        }

        public final float d(Object obj, long j2) {
            return Float.intBitsToFloat(a(obj, j2));
        }

        public final double e(Object obj, long j2) {
            return Double.longBitsToDouble(b(obj, j2));
        }

        public final byte f(Object obj, long j2) {
            if (Fc.w) {
                return Fc.g(obj, j2);
            }
            return Fc.h(obj, j2);
        }

        public final void a(Object obj, long j2, byte b2) {
            if (Fc.w) {
                Fc.a(obj, j2, b2);
            } else {
                Fc.b(obj, j2, b2);
            }
        }

        public final void a(Object obj, long j2, boolean z) {
            if (Fc.w) {
                Fc.b(obj, j2, z);
            } else {
                Fc.c(obj, j2, z);
            }
        }

        public final void a(Object obj, long j2, float f2) {
            a(obj, j2, Float.floatToIntBits(f2));
        }

        public final void a(Object obj, long j2, double d2) {
            a(obj, j2, Double.doubleToLongBits(d2));
        }

        public final void a(byte[] bArr, long j2, long j3, long j4) {
            Memory.pokeByteArray(j3, bArr, (int) j2, (int) j4);
        }
    }

    static final class c extends d {
        public c(Unsafe unsafe) {
            super(unsafe);
        }

        public final void a(long j2, byte b2) {
            this.f10169a.putByte(j2, b2);
        }

        public final boolean c(Object obj, long j2) {
            return this.f10169a.getBoolean(obj, j2);
        }

        public final float d(Object obj, long j2) {
            return this.f10169a.getFloat(obj, j2);
        }

        public final double e(Object obj, long j2) {
            return this.f10169a.getDouble(obj, j2);
        }

        public final byte f(Object obj, long j2) {
            return this.f10169a.getByte(obj, j2);
        }

        public final void a(Object obj, long j2, byte b2) {
            this.f10169a.putByte(obj, j2, b2);
        }

        public final void a(Object obj, long j2, boolean z) {
            this.f10169a.putBoolean(obj, j2, z);
        }

        public final void a(Object obj, long j2, float f2) {
            this.f10169a.putFloat(obj, j2, f2);
        }

        public final void a(Object obj, long j2, double d2) {
            this.f10169a.putDouble(obj, j2, d2);
        }

        public final void a(byte[] bArr, long j2, long j3, long j4) {
            this.f10169a.copyMemory(bArr, Fc.f10165i + j2, null, j3, j4);
        }
    }

    static abstract class d {

        /* renamed from: a  reason: collision with root package name */
        public Unsafe f10169a;

        public d(Unsafe unsafe) {
            this.f10169a = unsafe;
        }

        public final int a(Object obj, long j2) {
            return this.f10169a.getInt(obj, j2);
        }

        public abstract void a(long j2, byte b2);

        public abstract void a(Object obj, long j2, byte b2);

        public abstract void a(Object obj, long j2, double d2);

        public abstract void a(Object obj, long j2, float f2);

        public abstract void a(Object obj, long j2, boolean z);

        public abstract void a(byte[] bArr, long j2, long j3, long j4);

        public final long b(Object obj, long j2) {
            return this.f10169a.getLong(obj, j2);
        }

        public abstract boolean c(Object obj, long j2);

        public abstract float d(Object obj, long j2);

        public abstract double e(Object obj, long j2);

        public abstract byte f(Object obj, long j2);

        public final void a(Object obj, long j2, int i2) {
            this.f10169a.putInt(obj, j2, i2);
        }

        public final void a(Object obj, long j2, long j3) {
            this.f10169a.putLong(obj, j2, j3);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:19:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x00f6  */
    static {
        /*
            java.lang.Class<c.e.a.b.g.f.Fc> r0 = c.e.a.b.g.f.Fc.class
            java.lang.String r0 = r0.getName()
            java.util.logging.Logger r0 = java.util.logging.Logger.getLogger(r0)
            f10157a = r0
            sun.misc.Unsafe r0 = d()
            f10158b = r0
            java.lang.Class r0 = c.e.a.b.g.f.Ga.b()
            f10159c = r0
            java.lang.Class r0 = java.lang.Long.TYPE
            boolean r0 = d(r0)
            f10160d = r0
            java.lang.Class r0 = java.lang.Integer.TYPE
            boolean r0 = d(r0)
            f10161e = r0
            sun.misc.Unsafe r0 = f10158b
            r1 = 0
            if (r0 != 0) goto L_0x002e
            goto L_0x0053
        L_0x002e:
            boolean r0 = c.e.a.b.g.f.Ga.a()
            if (r0 == 0) goto L_0x004c
            boolean r0 = f10160d
            if (r0 == 0) goto L_0x0040
            c.e.a.b.g.f.Fc$b r1 = new c.e.a.b.g.f.Fc$b
            sun.misc.Unsafe r0 = f10158b
            r1.<init>(r0)
            goto L_0x0053
        L_0x0040:
            boolean r0 = f10161e
            if (r0 == 0) goto L_0x0053
            c.e.a.b.g.f.Fc$a r1 = new c.e.a.b.g.f.Fc$a
            sun.misc.Unsafe r0 = f10158b
            r1.<init>(r0)
            goto L_0x0053
        L_0x004c:
            c.e.a.b.g.f.Fc$c r1 = new c.e.a.b.g.f.Fc$c
            sun.misc.Unsafe r0 = f10158b
            r1.<init>(r0)
        L_0x0053:
            f10162f = r1
            boolean r0 = f()
            f10163g = r0
            boolean r0 = e()
            f10164h = r0
            java.lang.Class<byte[]> r0 = byte[].class
            int r0 = b(r0)
            long r0 = (long) r0
            f10165i = r0
            java.lang.Class<boolean[]> r0 = boolean[].class
            int r0 = b(r0)
            long r0 = (long) r0
            f10166j = r0
            java.lang.Class<boolean[]> r0 = boolean[].class
            int r0 = c(r0)
            long r0 = (long) r0
            f10167k = r0
            java.lang.Class<int[]> r0 = int[].class
            int r0 = b(r0)
            long r0 = (long) r0
            f10168l = r0
            java.lang.Class<int[]> r0 = int[].class
            int r0 = c(r0)
            long r0 = (long) r0
            m = r0
            java.lang.Class<long[]> r0 = long[].class
            int r0 = b(r0)
            long r0 = (long) r0
            n = r0
            java.lang.Class<long[]> r0 = long[].class
            int r0 = c(r0)
            long r0 = (long) r0
            o = r0
            java.lang.Class<float[]> r0 = float[].class
            int r0 = b(r0)
            long r0 = (long) r0
            p = r0
            java.lang.Class<float[]> r0 = float[].class
            int r0 = c(r0)
            long r0 = (long) r0
            q = r0
            java.lang.Class<double[]> r0 = double[].class
            int r0 = b(r0)
            long r0 = (long) r0
            r = r0
            java.lang.Class<double[]> r0 = double[].class
            int r0 = c(r0)
            long r0 = (long) r0
            s = r0
            java.lang.Class<java.lang.Object[]> r0 = java.lang.Object[].class
            int r0 = b(r0)
            long r0 = (long) r0
            t = r0
            java.lang.Class<java.lang.Object[]> r0 = java.lang.Object[].class
            int r0 = c(r0)
            long r0 = (long) r0
            u = r0
            java.lang.reflect.Field r0 = g()
            if (r0 == 0) goto L_0x00e8
            c.e.a.b.g.f.Fc$d r1 = f10162f
            if (r1 != 0) goto L_0x00e1
            goto L_0x00e8
        L_0x00e1:
            sun.misc.Unsafe r1 = r1.f10169a
            long r0 = r1.objectFieldOffset(r0)
            goto L_0x00ea
        L_0x00e8:
            r0 = -1
        L_0x00ea:
            v = r0
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            java.nio.ByteOrder r1 = java.nio.ByteOrder.BIG_ENDIAN
            if (r0 != r1) goto L_0x00f6
            r0 = 1
            goto L_0x00f7
        L_0x00f6:
            r0 = 0
        L_0x00f7:
            w = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.g.f.Fc.<clinit>():void");
    }

    public static <T> T a(Class<T> cls) {
        try {
            return f10158b.allocateInstance(cls);
        } catch (InstantiationException e2) {
            throw new IllegalStateException(e2);
        }
    }

    public static boolean b() {
        return f10164h;
    }

    public static boolean c() {
        return f10163g;
    }

    public static float d(Object obj, long j2) {
        return f10162f.d(obj, j2);
    }

    public static double e(Object obj, long j2) {
        return f10162f.e(obj, j2);
    }

    public static Object f(Object obj, long j2) {
        return f10162f.f10169a.getObject(obj, j2);
    }

    public static Field g() {
        if (Ga.a()) {
            Field a2 = a((Class<?>) Buffer.class, "effectiveDirectAddress");
            if (a2 != null) {
                return a2;
            }
        }
        Field a3 = a((Class<?>) Buffer.class, "address");
        if (a3 == null || a3.getType() != Long.TYPE) {
            return null;
        }
        return a3;
    }

    public static byte h(Object obj, long j2) {
        return (byte) (a(obj, -4 & j2) >>> ((int) ((j2 & 3) << 3)));
    }

    public static boolean i(Object obj, long j2) {
        return g(obj, j2) != 0;
    }

    public static boolean j(Object obj, long j2) {
        return h(obj, j2) != 0;
    }

    public static int b(Class<?> cls) {
        if (f10164h) {
            return f10162f.f10169a.arrayBaseOffset(cls);
        }
        return -1;
    }

    public static int c(Class<?> cls) {
        if (f10164h) {
            return f10162f.f10169a.arrayIndexScale(cls);
        }
        return -1;
    }

    public static Unsafe d() {
        try {
            return (Unsafe) AccessController.doPrivileged(new Gc());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean e() {
        Unsafe unsafe = f10158b;
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
            if (Ga.a()) {
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
            Logger logger = f10157a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    public static int a(Object obj, long j2) {
        return f10162f.a(obj, j2);
    }

    public static boolean f() {
        Unsafe unsafe = f10158b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", new Class[]{Field.class});
            cls.getMethod("getLong", new Class[]{Object.class, Long.TYPE});
            if (g() == null) {
                return false;
            }
            if (Ga.a()) {
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
            Logger logger = f10157a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    public static void a(Object obj, long j2, int i2) {
        f10162f.a(obj, j2, i2);
    }

    public static long b(Object obj, long j2) {
        return f10162f.b(obj, j2);
    }

    public static boolean c(Object obj, long j2) {
        return f10162f.c(obj, j2);
    }

    public static boolean d(Class<?> cls) {
        if (!Ga.a()) {
            return false;
        }
        try {
            Class<?> cls2 = f10159c;
            cls2.getMethod("peekLong", new Class[]{cls, Boolean.TYPE});
            cls2.getMethod("pokeLong", new Class[]{cls, Long.TYPE, Boolean.TYPE});
            cls2.getMethod("pokeInt", new Class[]{cls, Integer.TYPE, Boolean.TYPE});
            cls2.getMethod("peekInt", new Class[]{cls, Boolean.TYPE});
            cls2.getMethod("pokeByte", new Class[]{cls, Byte.TYPE});
            cls2.getMethod("peekByte", new Class[]{cls});
            cls2.getMethod("pokeByteArray", new Class[]{cls, byte[].class, Integer.TYPE, Integer.TYPE});
            cls2.getMethod("peekByteArray", new Class[]{cls, byte[].class, Integer.TYPE, Integer.TYPE});
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static void a(Object obj, long j2, long j3) {
        f10162f.a(obj, j2, j3);
    }

    public static void b(Object obj, long j2, byte b2) {
        long j3 = -4 & j2;
        int i2 = (((int) j2) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a(obj, j3) & ((255 << i2) ^ -1)));
    }

    public static void c(Object obj, long j2, boolean z) {
        b(obj, j2, z ? (byte) 1 : 0);
    }

    public static byte g(Object obj, long j2) {
        return (byte) (a(obj, -4 & j2) >>> ((int) (((j2 ^ -1) & 3) << 3)));
    }

    public static void a(Object obj, long j2, boolean z) {
        f10162f.a(obj, j2, z);
    }

    public static void a(Object obj, long j2, float f2) {
        f10162f.a(obj, j2, f2);
    }

    public static void b(Object obj, long j2, boolean z) {
        a(obj, j2, z ? (byte) 1 : 0);
    }

    public static void a(Object obj, long j2, double d2) {
        f10162f.a(obj, j2, d2);
    }

    public static void a(Object obj, long j2, Object obj2) {
        f10162f.f10169a.putObject(obj, j2, obj2);
    }

    public static byte a(byte[] bArr, long j2) {
        return f10162f.f(bArr, f10165i + j2);
    }

    public static void a(byte[] bArr, long j2, byte b2) {
        f10162f.a((Object) bArr, f10165i + j2, b2);
    }

    public static void a(byte[] bArr, long j2, long j3, long j4) {
        f10162f.a(bArr, j2, j3, j4);
    }

    public static void a(long j2, byte b2) {
        f10162f.a(j2, b2);
    }

    public static long a(ByteBuffer byteBuffer) {
        return f10162f.b(byteBuffer, v);
    }

    public static Field a(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(Object obj, long j2, byte b2) {
        long j3 = -4 & j2;
        int i2 = ((((int) j2) ^ -1) & 3) << 3;
        a(obj, j3, ((255 & b2) << i2) | (a(obj, j3) & ((255 << i2) ^ -1)));
    }
}
