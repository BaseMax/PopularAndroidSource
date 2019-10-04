package com.facebook.b;

import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import android.text.TextUtils;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import javax.annotation.Nullable;

public class k {
    public static final int SOLOADER_ALLOW_ASYNC_INIT = 2;
    public static final int SOLOADER_DISABLE_BACKUP_SOSOURCE = 8;
    public static final int SOLOADER_ENABLE_EXOPACKAGE = 1;
    public static final int SOLOADER_LOOK_IN_ZIP = 4;

    /* renamed from: a  reason: collision with root package name */
    static final boolean f2442a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    static j f2443b;
    private static final ReentrantReadWriteLock c = new ReentrantReadWriteLock();
    @Nullable
    private static l[] d = null;
    private static int e = 0;
    @Nullable
    private static o[] f;
    @Nullable
    private static c g;
    private static final HashSet<String> h = new HashSet<>();
    private static final Map<String, Object> i = new HashMap();
    private static final Set<String> j = Collections.newSetFromMap(new ConcurrentHashMap());
    @Nullable
    private static n k = null;
    private static int l;
    private static boolean m;

    static class a {
        private a() {
        }

        public static String getClassLoaderLdLoadLibrary() {
            ClassLoader classLoader = k.class.getClassLoader();
            if (classLoader instanceof BaseDexClassLoader) {
                try {
                    return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
                } catch (Exception e) {
                    throw new RuntimeException("Cannot call getLdLibraryPath", e);
                }
            } else {
                throw new IllegalStateException("ClassLoader " + classLoader.getClass().getName() + " should be of type BaseDexClassLoader");
            }
        }
    }

    public static final class b extends UnsatisfiedLinkError {
        b(Throwable th) {
            super("APK was built for a different platform");
            initCause(th);
        }
    }

    static {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                z = true;
            }
        } catch (NoClassDefFoundError | UnsatisfiedLinkError unused) {
        }
        f2442a = z;
    }

    public static void init(Context context, boolean z) {
        try {
            init(context, z ? 1 : 0);
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static int a() {
        c.writeLock().lock();
        try {
            return (l & 2) != 0 ? 1 : 0;
        } finally {
            c.writeLock().unlock();
        }
    }

    private static synchronized void b() {
        synchronized (k.class) {
            final Runtime runtime = Runtime.getRuntime();
            final Method c2 = c();
            final boolean z = c2 != null;
            final String classLoaderLdLoadLibrary = z ? a.getClassLoaderLdLoadLibrary() : null;
            final String makeNonZipPath = makeNonZipPath(classLoaderLdLoadLibrary);
            AnonymousClass1 r1 = new j() {
                /* JADX WARNING: Code restructure failed: missing block: B:18:0x0035, code lost:
                    if (r1 == null) goto L_0x0055;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:19:0x0037, code lost:
                    r0 = new java.lang.StringBuilder("Error when loading lib: ");
                    r0.append(r1);
                    r0.append(" lib hash: ");
                    r0.append(a(r9));
                    r0.append(" search path is ");
                    r0.append(r10);
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:20:0x0055, code lost:
                    return;
                 */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                public final void load(java.lang.String r9, int r10) {
                    /*
                        r8 = this;
                        boolean r0 = r2
                        if (r0 == 0) goto L_0x009c
                        r0 = 4
                        r10 = r10 & r0
                        r1 = 1
                        r2 = 0
                        if (r10 != r0) goto L_0x000c
                        r10 = 1
                        goto L_0x000d
                    L_0x000c:
                        r10 = 0
                    L_0x000d:
                        if (r10 == 0) goto L_0x0012
                        java.lang.String r10 = r3
                        goto L_0x0014
                    L_0x0012:
                        java.lang.String r10 = r4
                    L_0x0014:
                        r0 = 0
                        java.lang.Runtime r3 = r5     // Catch:{ IllegalAccessException -> 0x006a, IllegalArgumentException -> 0x0068, InvocationTargetException -> 0x0066 }
                        monitor-enter(r3)     // Catch:{ IllegalAccessException -> 0x006a, IllegalArgumentException -> 0x0068, InvocationTargetException -> 0x0066 }
                        java.lang.reflect.Method r4 = r6     // Catch:{ all -> 0x0061 }
                        java.lang.Runtime r5 = r5     // Catch:{ all -> 0x0061 }
                        r6 = 3
                        java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ all -> 0x0061 }
                        r6[r2] = r9     // Catch:{ all -> 0x0061 }
                        java.lang.Class<com.facebook.b.k> r2 = com.facebook.b.k.class
                        java.lang.ClassLoader r2 = r2.getClassLoader()     // Catch:{ all -> 0x0061 }
                        r6[r1] = r2     // Catch:{ all -> 0x0061 }
                        r1 = 2
                        r6[r1] = r10     // Catch:{ all -> 0x0061 }
                        java.lang.Object r1 = r4.invoke(r5, r6)     // Catch:{ all -> 0x0061 }
                        java.lang.String r1 = (java.lang.String) r1     // Catch:{ all -> 0x0061 }
                        if (r1 != 0) goto L_0x005b
                        monitor-exit(r3)     // Catch:{ all -> 0x0056 }
                        if (r1 == 0) goto L_0x0055
                        java.lang.StringBuilder r0 = new java.lang.StringBuilder
                        java.lang.String r2 = "Error when loading lib: "
                        r0.<init>(r2)
                        r0.append(r1)
                        java.lang.String r1 = " lib hash: "
                        r0.append(r1)
                        java.lang.String r9 = a(r9)
                        r0.append(r9)
                        java.lang.String r9 = " search path is "
                        r0.append(r9)
                        r0.append(r10)
                    L_0x0055:
                        return
                    L_0x0056:
                        r0 = move-exception
                        r7 = r1
                        r1 = r0
                        r0 = r7
                        goto L_0x0062
                    L_0x005b:
                        java.lang.UnsatisfiedLinkError r0 = new java.lang.UnsatisfiedLinkError     // Catch:{ all -> 0x0056 }
                        r0.<init>(r1)     // Catch:{ all -> 0x0056 }
                        throw r0     // Catch:{ all -> 0x0056 }
                    L_0x0061:
                        r1 = move-exception
                    L_0x0062:
                        monitor-exit(r3)     // Catch:{ all -> 0x0061 }
                        throw r1     // Catch:{ IllegalAccessException -> 0x006a, IllegalArgumentException -> 0x0068, InvocationTargetException -> 0x0066 }
                    L_0x0064:
                        r1 = move-exception
                        goto L_0x007b
                    L_0x0066:
                        r1 = move-exception
                        goto L_0x006b
                    L_0x0068:
                        r1 = move-exception
                        goto L_0x006b
                    L_0x006a:
                        r1 = move-exception
                    L_0x006b:
                        java.lang.String r2 = "Error: Cannot load "
                        java.lang.String r3 = java.lang.String.valueOf(r9)     // Catch:{ all -> 0x0064 }
                        java.lang.String r0 = r2.concat(r3)     // Catch:{ all -> 0x0064 }
                        java.lang.RuntimeException r2 = new java.lang.RuntimeException     // Catch:{ all -> 0x0064 }
                        r2.<init>(r0, r1)     // Catch:{ all -> 0x0064 }
                        throw r2     // Catch:{ all -> 0x0064 }
                    L_0x007b:
                        if (r0 == 0) goto L_0x009b
                        java.lang.StringBuilder r2 = new java.lang.StringBuilder
                        java.lang.String r3 = "Error when loading lib: "
                        r2.<init>(r3)
                        r2.append(r0)
                        java.lang.String r0 = " lib hash: "
                        r2.append(r0)
                        java.lang.String r9 = a(r9)
                        r2.append(r9)
                        java.lang.String r9 = " search path is "
                        r2.append(r9)
                        r2.append(r10)
                    L_0x009b:
                        throw r1
                    L_0x009c:
                        java.lang.System.load(r9)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.k.AnonymousClass1.load(java.lang.String, int):void");
                }

                /* JADX WARNING: Code restructure failed: missing block: B:14:0x0039, code lost:
                    r6 = move-exception;
                 */
                /* JADX WARNING: Code restructure failed: missing block: B:16:?, code lost:
                    r1.close();
                 */
                /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x003d */
                /* Code decompiled incorrectly, please refer to instructions dump. */
                private static java.lang.String a(java.lang.String r6) {
                    /*
                        java.io.File r0 = new java.io.File     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                        r0.<init>(r6)     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                        java.lang.String r6 = "MD5"
                        java.security.MessageDigest r6 = java.security.MessageDigest.getInstance(r6)     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                        java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                        r1.<init>(r0)     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                        r0 = 4096(0x1000, float:5.74E-42)
                        byte[] r0 = new byte[r0]     // Catch:{ all -> 0x0037 }
                    L_0x0014:
                        int r2 = r1.read(r0)     // Catch:{ all -> 0x0037 }
                        r3 = 0
                        if (r2 <= 0) goto L_0x001f
                        r6.update(r0, r3, r2)     // Catch:{ all -> 0x0037 }
                        goto L_0x0014
                    L_0x001f:
                        java.lang.String r0 = "%32x"
                        r2 = 1
                        java.lang.Object[] r4 = new java.lang.Object[r2]     // Catch:{ all -> 0x0037 }
                        java.math.BigInteger r5 = new java.math.BigInteger     // Catch:{ all -> 0x0037 }
                        byte[] r6 = r6.digest()     // Catch:{ all -> 0x0037 }
                        r5.<init>(r2, r6)     // Catch:{ all -> 0x0037 }
                        r4[r3] = r5     // Catch:{ all -> 0x0037 }
                        java.lang.String r6 = java.lang.String.format(r0, r4)     // Catch:{ all -> 0x0037 }
                        r1.close()     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                        goto L_0x004f
                    L_0x0037:
                        r6 = move-exception
                        throw r6     // Catch:{ all -> 0x0039 }
                    L_0x0039:
                        r6 = move-exception
                        r1.close()     // Catch:{ all -> 0x003d }
                    L_0x003d:
                        throw r6     // Catch:{ IOException -> 0x004a, SecurityException -> 0x0044, NoSuchAlgorithmException -> 0x003e }
                    L_0x003e:
                        r6 = move-exception
                        java.lang.String r6 = r6.toString()
                        goto L_0x004f
                    L_0x0044:
                        r6 = move-exception
                        java.lang.String r6 = r6.toString()
                        goto L_0x004f
                    L_0x004a:
                        r6 = move-exception
                        java.lang.String r6 = r6.toString()
                    L_0x004f:
                        return r6
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.k.AnonymousClass1.a(java.lang.String):java.lang.String");
                }
            };
            f2443b = r1;
        }
    }

    @Nullable
    private static Method c() {
        if (Build.VERSION.SDK_INT >= 23 && Build.VERSION.SDK_INT <= 27) {
            try {
                Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", new Class[]{String.class, ClassLoader.class, String.class});
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (NoSuchMethodException | SecurityException unused) {
            }
        }
        return null;
    }

    public static void setInTestMode() {
        a(new l[]{new i()});
    }

    public static void deinitForTest() {
        a((l[]) null);
    }

    private static void a(l[] lVarArr) {
        c.writeLock().lock();
        try {
            d = lVarArr;
            e++;
        } finally {
            c.writeLock().unlock();
        }
    }

    public static void setSystemLoadLibraryWrapper(n nVar) {
        k = nVar;
    }

    @Nullable
    public static String getLibraryPath(String str) throws IOException {
        c.readLock().lock();
        try {
            String str2 = null;
            if (d != null) {
                int i2 = 0;
                while (str2 == null && i2 < d.length) {
                    str2 = d[i2].getLibraryPath(str);
                    i2++;
                }
            }
            return str2;
        } finally {
            c.readLock().unlock();
        }
    }

    public static boolean loadLibrary(String str) {
        return loadLibrary(str, 0);
    }

    public static boolean loadLibrary(String str, int i2) throws UnsatisfiedLinkError {
        boolean z;
        c.readLock().lock();
        try {
            if (d == null) {
                if ("http://www.android.com/".equals(System.getProperty("java.vendor.url"))) {
                    d();
                } else {
                    synchronized (k.class) {
                        z = !h.contains(str);
                        if (z) {
                            if (k != null) {
                                k.loadLibrary(str);
                            } else {
                                System.loadLibrary(str);
                            }
                        }
                    }
                    c.readLock().unlock();
                    return z;
                }
            }
            c.readLock().unlock();
            if (m) {
                n nVar = k;
                if (nVar != null) {
                    nVar.loadLibrary(str);
                    return true;
                }
            }
            return a(System.mapLibraryName(str), str, i2 | 2, null);
        } catch (Throwable th) {
            c.readLock().unlock();
            throw th;
        }
    }

    static void a(String str, int i2, StrictMode.ThreadPolicy threadPolicy) {
        a(str, null, i2, threadPolicy);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0037, code lost:
        monitor-enter(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        monitor-enter(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003f, code lost:
        if (h.contains(r4) == false) goto L_0x0044;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0041, code lost:
        monitor-exit(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:?, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0043, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        monitor-exit(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
        b(r4, r6, r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:?, code lost:
        monitor-enter(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        h.add(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x004e, code lost:
        monitor-exit(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0053, code lost:
        if (android.text.TextUtils.isEmpty(r5) != false) goto L_0x005a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x0055, code lost:
        j.contains(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x005a, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x005c, code lost:
        return true;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0060, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x0061, code lost:
        r5 = r4.getMessage();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:0x0065, code lost:
        if (r5 == null) goto L_0x0075;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x0074, code lost:
        throw new com.facebook.b.k.b(r4);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:54:0x0075, code lost:
        throw r4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:55:0x0076, code lost:
        r4 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:57:0x007c, code lost:
        throw new java.lang.RuntimeException(r4);
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static boolean a(java.lang.String r4, @javax.annotation.Nullable java.lang.String r5, int r6, @javax.annotation.Nullable android.os.StrictMode.ThreadPolicy r7) {
        /*
            java.lang.Class<com.facebook.b.k> r0 = com.facebook.b.k.class
            boolean r1 = android.text.TextUtils.isEmpty(r5)
            r2 = 0
            if (r1 != 0) goto L_0x0012
            java.util.Set<java.lang.String> r1 = j
            boolean r1 = r1.contains(r5)
            if (r1 == 0) goto L_0x0012
            return r2
        L_0x0012:
            monitor-enter(r0)
            java.util.HashSet<java.lang.String> r1 = h     // Catch:{ all -> 0x0083 }
            boolean r1 = r1.contains(r4)     // Catch:{ all -> 0x0083 }
            if (r1 == 0) goto L_0x001d
            monitor-exit(r0)     // Catch:{ all -> 0x0083 }
            return r2
        L_0x001d:
            java.util.Map<java.lang.String, java.lang.Object> r1 = i     // Catch:{ all -> 0x0083 }
            boolean r1 = r1.containsKey(r4)     // Catch:{ all -> 0x0083 }
            if (r1 == 0) goto L_0x002c
            java.util.Map<java.lang.String, java.lang.Object> r1 = i     // Catch:{ all -> 0x0083 }
            java.lang.Object r1 = r1.get(r4)     // Catch:{ all -> 0x0083 }
            goto L_0x0036
        L_0x002c:
            java.lang.Object r1 = new java.lang.Object     // Catch:{ all -> 0x0083 }
            r1.<init>()     // Catch:{ all -> 0x0083 }
            java.util.Map<java.lang.String, java.lang.Object> r3 = i     // Catch:{ all -> 0x0083 }
            r3.put(r4, r1)     // Catch:{ all -> 0x0083 }
        L_0x0036:
            monitor-exit(r0)     // Catch:{ all -> 0x0083 }
            monitor-enter(r1)
            monitor-enter(r0)     // Catch:{ all -> 0x0080 }
            java.util.HashSet<java.lang.String> r3 = h     // Catch:{ all -> 0x007d }
            boolean r3 = r3.contains(r4)     // Catch:{ all -> 0x007d }
            if (r3 == 0) goto L_0x0044
            monitor-exit(r0)     // Catch:{ all -> 0x007d }
            monitor-exit(r1)     // Catch:{ all -> 0x0080 }
            return r2
        L_0x0044:
            monitor-exit(r0)     // Catch:{ all -> 0x007d }
            b(r4, r6, r7)     // Catch:{ IOException -> 0x0076, UnsatisfiedLinkError -> 0x0060 }
            monitor-enter(r0)     // Catch:{ all -> 0x0080 }
            java.util.HashSet<java.lang.String> r6 = h     // Catch:{ all -> 0x005d }
            r6.add(r4)     // Catch:{ all -> 0x005d }
            monitor-exit(r0)     // Catch:{ all -> 0x005d }
            boolean r4 = android.text.TextUtils.isEmpty(r5)     // Catch:{ all -> 0x0080 }
            if (r4 != 0) goto L_0x005a
            java.util.Set<java.lang.String> r4 = j     // Catch:{ all -> 0x0080 }
            r4.contains(r5)     // Catch:{ all -> 0x0080 }
        L_0x005a:
            monitor-exit(r1)     // Catch:{ all -> 0x0080 }
            r4 = 1
            return r4
        L_0x005d:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x005d }
            throw r4     // Catch:{ all -> 0x0080 }
        L_0x0060:
            r4 = move-exception
            java.lang.String r5 = r4.getMessage()     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x0075
            java.lang.String r6 = "unexpected e_machine:"
            boolean r5 = r5.contains(r6)     // Catch:{ all -> 0x0080 }
            if (r5 == 0) goto L_0x0075
            com.facebook.b.k$b r5 = new com.facebook.b.k$b     // Catch:{ all -> 0x0080 }
            r5.<init>(r4)     // Catch:{ all -> 0x0080 }
            throw r5     // Catch:{ all -> 0x0080 }
        L_0x0075:
            throw r4     // Catch:{ all -> 0x0080 }
        L_0x0076:
            r4 = move-exception
            java.lang.RuntimeException r5 = new java.lang.RuntimeException     // Catch:{ all -> 0x0080 }
            r5.<init>(r4)     // Catch:{ all -> 0x0080 }
            throw r5     // Catch:{ all -> 0x0080 }
        L_0x007d:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x007d }
            throw r4     // Catch:{ all -> 0x0080 }
        L_0x0080:
            r4 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0080 }
            throw r4
        L_0x0083:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0083 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.k.a(java.lang.String, java.lang.String, int, android.os.StrictMode$ThreadPolicy):boolean");
    }

    public static File unpackLibraryAndDependencies(String str) throws UnsatisfiedLinkError {
        d();
        try {
            return a(System.mapLibraryName(str));
        } catch (IOException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX INFO: finally extract failed */
    private static void b(String str, int i2, StrictMode.ThreadPolicy threadPolicy) throws IOException {
        boolean z;
        boolean z2;
        c.readLock().lock();
        try {
            if (d != null) {
                c.readLock().unlock();
                if (threadPolicy == null) {
                    threadPolicy = StrictMode.allowThreadDiskReads();
                    z = true;
                } else {
                    z = false;
                }
                if (f2442a) {
                    a.beginTraceSection("SoLoader.loadLibrary[" + str + "]");
                }
                int i3 = 0;
                do {
                    try {
                        c.readLock().lock();
                        int i4 = e;
                        int i5 = 0;
                        while (true) {
                            if (i3 == 0) {
                                if (i5 >= d.length) {
                                    break;
                                }
                                i3 = d[i5].loadLibrary(str, i2, threadPolicy);
                                if (i3 == 3 && f != null) {
                                    o[] oVarArr = f;
                                    int length = oVarArr.length;
                                    int i6 = 0;
                                    while (true) {
                                        if (i6 >= length) {
                                            break;
                                        }
                                        o oVar = oVarArr[i6];
                                        oVar.a(str);
                                        int loadLibrary = oVar.loadLibrary(str, i2, threadPolicy);
                                        if (loadLibrary == 1) {
                                            i3 = loadLibrary;
                                            break;
                                        }
                                        i6++;
                                    }
                                } else {
                                    i5++;
                                }
                            } else {
                                break;
                            }
                        }
                        c.readLock().unlock();
                        if ((i2 & 2) == 2 && i3 == 0) {
                            c.writeLock().lock();
                            if (g != null && g.checkAndMaybeUpdate()) {
                                e++;
                            }
                            z2 = e != i4;
                            c.writeLock().unlock();
                            continue;
                        } else {
                            z2 = false;
                            continue;
                        }
                    } catch (Throwable th) {
                        if (f2442a) {
                            a.endSection();
                        }
                        if (z) {
                            StrictMode.setThreadPolicy(threadPolicy);
                        }
                        if (i3 == 0 || i3 == 3) {
                            String concat = "couldn't find DSO to load: ".concat(String.valueOf(str));
                            String message = th.getMessage();
                            if (message == null) {
                                message = th.toString();
                            }
                            throw new UnsatisfiedLinkError(concat + " caused by: " + message);
                        }
                        return;
                    }
                } while (z2);
                if (f2442a) {
                    a.endSection();
                }
                if (z) {
                    StrictMode.setThreadPolicy(threadPolicy);
                }
                if (i3 == 0 || i3 == 3) {
                    throw new UnsatisfiedLinkError("couldn't find DSO to load: ".concat(String.valueOf(str)));
                }
                return;
            }
            StringBuilder sb = new StringBuilder("Could not load: ");
            sb.append(str);
            sb.append(" because no SO source exists");
            throw new UnsatisfiedLinkError("couldn't find DSO to load: ".concat(String.valueOf(str)));
        } catch (Throwable th2) {
            c.readLock().unlock();
            throw th2;
        }
    }

    @Nullable
    public static String makeNonZipPath(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }

    private static File a(String str) throws IOException {
        c.readLock().lock();
        int i2 = 0;
        while (i2 < d.length) {
            try {
                File unpackLibrary = d[i2].unpackLibrary(str);
                if (unpackLibrary != null) {
                    return unpackLibrary;
                }
                i2++;
            } finally {
                c.readLock().unlock();
            }
        }
        c.readLock().unlock();
        throw new FileNotFoundException(str);
    }

    private static void d() {
        c.readLock().lock();
        try {
            if (d == null) {
                throw new RuntimeException("SoLoader.init() not yet called");
            }
        } finally {
            c.readLock().unlock();
        }
    }

    public static void prependSoSource(l lVar) throws IOException {
        c.writeLock().lock();
        try {
            new StringBuilder("Prepending to SO sources: ").append(lVar);
            d();
            lVar.a(a());
            l[] lVarArr = new l[(d.length + 1)];
            lVarArr[0] = lVar;
            System.arraycopy(d, 0, lVarArr, 1, d.length);
            d = lVarArr;
            e++;
            new StringBuilder("Prepended to SO sources: ").append(lVar);
        } finally {
            c.writeLock().unlock();
        }
    }

    public static String makeLdLibraryPath() {
        c.readLock().lock();
        try {
            d();
            ArrayList arrayList = new ArrayList();
            l[] lVarArr = d;
            for (l addToLdLibraryPath : lVarArr) {
                addToLdLibraryPath.addToLdLibraryPath(arrayList);
            }
            return TextUtils.join(":", arrayList);
        } finally {
            c.readLock().unlock();
        }
    }

    public static boolean areSoSourcesAbisSupported() {
        c.readLock().lock();
        try {
            if (d != null) {
                String[] supportedAbis = m.getSupportedAbis();
                for (l soSourceAbis : d) {
                    String[] soSourceAbis2 = soSourceAbis.getSoSourceAbis();
                    int i2 = 0;
                    while (i2 < soSourceAbis2.length) {
                        boolean z = false;
                        for (int i3 = 0; i3 < supportedAbis.length && !z; i3++) {
                            z = soSourceAbis2[i2].equals(supportedAbis[i3]);
                        }
                        if (!z) {
                            new StringBuilder("abi not supported: ").append(soSourceAbis2[i2]);
                        } else {
                            i2++;
                        }
                    }
                }
                c.readLock().unlock();
                return true;
            }
            return false;
        } finally {
            c.readLock().unlock();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x002a A[Catch:{ all -> 0x017d, all -> 0x0014 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void init(android.content.Context r13, int r14) throws java.io.IOException {
        /*
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.allowThreadDiskWrites()
            r1 = 1
            r2 = 0
            if (r13 == 0) goto L_0x0017
            android.content.pm.ApplicationInfo r3 = r13.getApplicationInfo()     // Catch:{ all -> 0x0014 }
            int r3 = r3.flags     // Catch:{ all -> 0x0014 }
            r3 = r3 & 129(0x81, float:1.81E-43)
            if (r3 == 0) goto L_0x0017
            r3 = 1
            goto L_0x0018
        L_0x0014:
            r13 = move-exception
            goto L_0x0188
        L_0x0017:
            r3 = 0
        L_0x0018:
            m = r3     // Catch:{ all -> 0x0014 }
            b()     // Catch:{ all -> 0x0014 }
            java.util.concurrent.locks.ReentrantReadWriteLock r3 = c     // Catch:{ all -> 0x0014 }
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r3 = r3.writeLock()     // Catch:{ all -> 0x0014 }
            r3.lock()     // Catch:{ all -> 0x0014 }
            com.facebook.b.l[] r3 = d     // Catch:{ all -> 0x017d }
            if (r3 != 0) goto L_0x0170
            l = r14     // Catch:{ all -> 0x017d }
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch:{ all -> 0x017d }
            r3.<init>()     // Catch:{ all -> 0x017d }
            java.lang.String r4 = "LD_LIBRARY_PATH"
            java.lang.String r4 = java.lang.System.getenv(r4)     // Catch:{ all -> 0x017d }
            if (r4 != 0) goto L_0x003b
            java.lang.String r4 = "/vendor/lib:/system/lib"
        L_0x003b:
            java.lang.String r5 = ":"
            java.lang.String[] r4 = r4.split(r5)     // Catch:{ all -> 0x017d }
            r5 = 0
        L_0x0042:
            int r6 = r4.length     // Catch:{ all -> 0x017d }
            if (r5 >= r6) goto L_0x0064
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r7 = "adding system library source: "
            r6.<init>(r7)     // Catch:{ all -> 0x017d }
            r7 = r4[r5]     // Catch:{ all -> 0x017d }
            r6.append(r7)     // Catch:{ all -> 0x017d }
            java.io.File r6 = new java.io.File     // Catch:{ all -> 0x017d }
            r7 = r4[r5]     // Catch:{ all -> 0x017d }
            r6.<init>(r7)     // Catch:{ all -> 0x017d }
            com.facebook.b.d r7 = new com.facebook.b.d     // Catch:{ all -> 0x017d }
            r8 = 2
            r7.<init>(r6, r8)     // Catch:{ all -> 0x017d }
            r3.add(r7)     // Catch:{ all -> 0x017d }
            int r5 = r5 + 1
            goto L_0x0042
        L_0x0064:
            if (r13 == 0) goto L_0x012f
            r14 = r14 & r1
            java.lang.String r4 = "lib-main"
            r5 = 0
            if (r14 == 0) goto L_0x0078
            f = r5     // Catch:{ all -> 0x017d }
            com.facebook.b.e r14 = new com.facebook.b.e     // Catch:{ all -> 0x017d }
            r14.<init>(r13, r4)     // Catch:{ all -> 0x017d }
            r3.add(r2, r14)     // Catch:{ all -> 0x017d }
            goto L_0x012f
        L_0x0078:
            boolean r14 = m     // Catch:{ all -> 0x017d }
            if (r14 == 0) goto L_0x007e
            r14 = 0
            goto L_0x00a4
        L_0x007e:
            int r14 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x017d }
            r6 = 17
            if (r14 > r6) goto L_0x0086
            r14 = 1
            goto L_0x0087
        L_0x0086:
            r14 = 0
        L_0x0087:
            com.facebook.b.c r6 = new com.facebook.b.c     // Catch:{ all -> 0x017d }
            r6.<init>(r13, r14)     // Catch:{ all -> 0x017d }
            g = r6     // Catch:{ all -> 0x017d }
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r6 = "adding application source: "
            r14.<init>(r6)     // Catch:{ all -> 0x017d }
            com.facebook.b.c r6 = g     // Catch:{ all -> 0x017d }
            java.lang.String r6 = r6.toString()     // Catch:{ all -> 0x017d }
            r14.append(r6)     // Catch:{ all -> 0x017d }
            com.facebook.b.c r14 = g     // Catch:{ all -> 0x017d }
            r3.add(r2, r14)     // Catch:{ all -> 0x017d }
            r14 = 1
        L_0x00a4:
            int r6 = l     // Catch:{ all -> 0x017d }
            r6 = r6 & 8
            if (r6 == 0) goto L_0x00ae
            f = r5     // Catch:{ all -> 0x017d }
            goto L_0x012f
        L_0x00ae:
            java.io.File r5 = new java.io.File     // Catch:{ all -> 0x017d }
            android.content.pm.ApplicationInfo r6 = r13.getApplicationInfo()     // Catch:{ all -> 0x017d }
            java.lang.String r6 = r6.sourceDir     // Catch:{ all -> 0x017d }
            r5.<init>(r6)     // Catch:{ all -> 0x017d }
            java.util.ArrayList r6 = new java.util.ArrayList     // Catch:{ all -> 0x017d }
            r6.<init>()     // Catch:{ all -> 0x017d }
            com.facebook.b.b r7 = new com.facebook.b.b     // Catch:{ all -> 0x017d }
            r7.<init>(r13, r5, r4, r14)     // Catch:{ all -> 0x017d }
            r6.add(r7)     // Catch:{ all -> 0x017d }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r5 = "adding backup source from : "
            r4.<init>(r5)     // Catch:{ all -> 0x017d }
            java.lang.String r5 = r7.toString()     // Catch:{ all -> 0x017d }
            r4.append(r5)     // Catch:{ all -> 0x017d }
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x017d }
            r5 = 21
            if (r4 < r5) goto L_0x011e
            android.content.pm.ApplicationInfo r4 = r13.getApplicationInfo()     // Catch:{ all -> 0x017d }
            java.lang.String[] r4 = r4.splitSourceDirs     // Catch:{ all -> 0x017d }
            if (r4 == 0) goto L_0x011e
            android.content.pm.ApplicationInfo r4 = r13.getApplicationInfo()     // Catch:{ all -> 0x017d }
            java.lang.String[] r4 = r4.splitSourceDirs     // Catch:{ all -> 0x017d }
            int r5 = r4.length     // Catch:{ all -> 0x017d }
            r7 = 0
            r8 = 0
        L_0x00eb:
            if (r7 >= r5) goto L_0x011e
            r9 = r4[r7]     // Catch:{ all -> 0x017d }
            com.facebook.b.b r10 = new com.facebook.b.b     // Catch:{ all -> 0x017d }
            java.io.File r11 = new java.io.File     // Catch:{ all -> 0x017d }
            r11.<init>(r9)     // Catch:{ all -> 0x017d }
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r12 = "lib-"
            r9.<init>(r12)     // Catch:{ all -> 0x017d }
            int r12 = r8 + 1
            r9.append(r8)     // Catch:{ all -> 0x017d }
            java.lang.String r8 = r9.toString()     // Catch:{ all -> 0x017d }
            r10.<init>(r13, r11, r8, r14)     // Catch:{ all -> 0x017d }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r9 = "adding backup source: "
            r8.<init>(r9)     // Catch:{ all -> 0x017d }
            java.lang.String r9 = r10.toString()     // Catch:{ all -> 0x017d }
            r8.append(r9)     // Catch:{ all -> 0x017d }
            r6.add(r10)     // Catch:{ all -> 0x017d }
            int r7 = r7 + 1
            r8 = r12
            goto L_0x00eb
        L_0x011e:
            int r13 = r6.size()     // Catch:{ all -> 0x017d }
            com.facebook.b.o[] r13 = new com.facebook.b.o[r13]     // Catch:{ all -> 0x017d }
            java.lang.Object[] r13 = r6.toArray(r13)     // Catch:{ all -> 0x017d }
            com.facebook.b.o[] r13 = (com.facebook.b.o[]) r13     // Catch:{ all -> 0x017d }
            f = r13     // Catch:{ all -> 0x017d }
            r3.addAll(r2, r6)     // Catch:{ all -> 0x017d }
        L_0x012f:
            int r13 = r3.size()     // Catch:{ all -> 0x017d }
            com.facebook.b.l[] r13 = new com.facebook.b.l[r13]     // Catch:{ all -> 0x017d }
            java.lang.Object[] r13 = r3.toArray(r13)     // Catch:{ all -> 0x017d }
            com.facebook.b.l[] r13 = (com.facebook.b.l[]) r13     // Catch:{ all -> 0x017d }
            int r14 = a()     // Catch:{ all -> 0x017d }
            int r2 = r13.length     // Catch:{ all -> 0x017d }
        L_0x0140:
            int r3 = r2 + -1
            if (r2 <= 0) goto L_0x0157
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r4 = "Preparing SO source: "
            r2.<init>(r4)     // Catch:{ all -> 0x017d }
            r4 = r13[r3]     // Catch:{ all -> 0x017d }
            r2.append(r4)     // Catch:{ all -> 0x017d }
            r2 = r13[r3]     // Catch:{ all -> 0x017d }
            r2.a(r14)     // Catch:{ all -> 0x017d }
            r2 = r3
            goto L_0x0140
        L_0x0157:
            d = r13     // Catch:{ all -> 0x017d }
            int r13 = e     // Catch:{ all -> 0x017d }
            int r13 = r13 + r1
            e = r13     // Catch:{ all -> 0x017d }
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch:{ all -> 0x017d }
            java.lang.String r14 = "init finish: "
            r13.<init>(r14)     // Catch:{ all -> 0x017d }
            com.facebook.b.l[] r14 = d     // Catch:{ all -> 0x017d }
            int r14 = r14.length     // Catch:{ all -> 0x017d }
            r13.append(r14)     // Catch:{ all -> 0x017d }
            java.lang.String r14 = " SO sources prepared"
            r13.append(r14)     // Catch:{ all -> 0x017d }
        L_0x0170:
            java.util.concurrent.locks.ReentrantReadWriteLock r13 = c     // Catch:{ all -> 0x0014 }
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r13 = r13.writeLock()     // Catch:{ all -> 0x0014 }
            r13.unlock()     // Catch:{ all -> 0x0014 }
            android.os.StrictMode.setThreadPolicy(r0)
            return
        L_0x017d:
            r13 = move-exception
            java.util.concurrent.locks.ReentrantReadWriteLock r14 = c     // Catch:{ all -> 0x0014 }
            java.util.concurrent.locks.ReentrantReadWriteLock$WriteLock r14 = r14.writeLock()     // Catch:{ all -> 0x0014 }
            r14.unlock()     // Catch:{ all -> 0x0014 }
            throw r13     // Catch:{ all -> 0x0014 }
        L_0x0188:
            android.os.StrictMode.setThreadPolicy(r0)
            goto L_0x018d
        L_0x018c:
            throw r13
        L_0x018d:
            goto L_0x018c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.b.k.init(android.content.Context, int):void");
    }
}
