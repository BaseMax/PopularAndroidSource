package b.v;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.Log;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.zip.ZipFile;

/* compiled from: MultiDex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<File> f3234a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f3235b = a(System.getProperty("java.vm.version"));

    /* renamed from: b.v.a$a  reason: collision with other inner class name */
    /* compiled from: MultiDex */
    private static final class C0043a {

        /* renamed from: a  reason: collision with root package name */
        public static final int f3236a = 4;

        /* renamed from: b  reason: collision with root package name */
        public final C0044a f3237b;

        /* renamed from: b.v.a$a$a  reason: collision with other inner class name */
        /* compiled from: MultiDex */
        private interface C0044a {
            Object a(File file, DexFile dexFile);
        }

        /* renamed from: b.v.a$a$b */
        /* compiled from: MultiDex */
        private static class b implements C0044a {

            /* renamed from: a  reason: collision with root package name */
            public final Constructor<?> f3238a;

            public b(Class<?> cls) {
                this.f3238a = cls.getConstructor(new Class[]{File.class, ZipFile.class, DexFile.class});
                this.f3238a.setAccessible(true);
            }

            public Object a(File file, DexFile dexFile) {
                return this.f3238a.newInstance(new Object[]{file, new ZipFile(file), dexFile});
            }
        }

        /* renamed from: b.v.a$a$c */
        /* compiled from: MultiDex */
        private static class c implements C0044a {

            /* renamed from: a  reason: collision with root package name */
            public final Constructor<?> f3239a;

            public c(Class<?> cls) {
                this.f3239a = cls.getConstructor(new Class[]{File.class, File.class, DexFile.class});
                this.f3239a.setAccessible(true);
            }

            public Object a(File file, DexFile dexFile) {
                return this.f3239a.newInstance(new Object[]{file, file, dexFile});
            }
        }

        /* renamed from: b.v.a$a$d */
        /* compiled from: MultiDex */
        private static class d implements C0044a {

            /* renamed from: a  reason: collision with root package name */
            public final Constructor<?> f3240a;

            public d(Class<?> cls) {
                this.f3240a = cls.getConstructor(new Class[]{File.class, Boolean.TYPE, File.class, DexFile.class});
                this.f3240a.setAccessible(true);
            }

            public Object a(File file, DexFile dexFile) {
                return this.f3240a.newInstance(new Object[]{file, Boolean.FALSE, file, dexFile});
            }
        }

        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000f */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public C0043a() {
            /*
                r2 = this;
                r2.<init>()
                java.lang.String r0 = "dalvik.system.DexPathList$Element"
                java.lang.Class r0 = java.lang.Class.forName(r0)
                b.v.a$a$b r1 = new b.v.a$a$b     // Catch:{ NoSuchMethodException -> 0x000f }
                r1.<init>(r0)     // Catch:{ NoSuchMethodException -> 0x000f }
                goto L_0x001a
            L_0x000f:
                b.v.a$a$c r1 = new b.v.a$a$c     // Catch:{ NoSuchMethodException -> 0x0015 }
                r1.<init>(r0)     // Catch:{ NoSuchMethodException -> 0x0015 }
                goto L_0x001a
            L_0x0015:
                b.v.a$a$d r1 = new b.v.a$a$d
                r1.<init>(r0)
            L_0x001a:
                r2.f3237b = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: b.v.a.C0043a.<init>():void");
        }

        public static void a(ClassLoader classLoader, List<? extends File> list) {
            Object obj = a.b(classLoader, "pathList").get(classLoader);
            Object[] a2 = new C0043a().a(list);
            try {
                a.b(obj, "dexElements", a2);
            } catch (NoSuchFieldException e2) {
                Log.w("MultiDex", "Failed find field 'dexElements' attempting 'pathElements'", e2);
                a.b(obj, "pathElements", a2);
            }
        }

        public final Object[] a(List<? extends File> list) {
            Object[] objArr = new Object[list.size()];
            for (int i2 = 0; i2 < objArr.length; i2++) {
                File file = (File) list.get(i2);
                objArr[i2] = this.f3237b.a(file, DexFile.loadDex(file.getPath(), a(file), 0));
            }
            return objArr;
        }

        public static String a(File file) {
            File parentFile = file.getParentFile();
            String name = file.getName();
            return new File(parentFile, name.substring(0, name.length() - f3236a) + ".dex").getPath();
        }
    }

    /* compiled from: MultiDex */
    private static final class b {
        public static void a(ClassLoader classLoader, List<? extends File> list, File file) {
            IOException[] iOExceptionArr;
            Object obj = a.b(classLoader, "pathList").get(classLoader);
            ArrayList arrayList = new ArrayList();
            a.b(obj, "dexElements", a(obj, new ArrayList(list), file, arrayList));
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Log.w("MultiDex", "Exception in makeDexElement", (IOException) it.next());
                }
                Field a2 = a.b(obj, "dexElementsSuppressedExceptions");
                IOException[] iOExceptionArr2 = (IOException[]) a2.get(obj);
                if (iOExceptionArr2 == null) {
                    iOExceptionArr = (IOException[]) arrayList.toArray(new IOException[arrayList.size()]);
                } else {
                    IOException[] iOExceptionArr3 = new IOException[(arrayList.size() + iOExceptionArr2.length)];
                    arrayList.toArray(iOExceptionArr3);
                    System.arraycopy(iOExceptionArr2, 0, iOExceptionArr3, arrayList.size(), iOExceptionArr2.length);
                    iOExceptionArr = iOExceptionArr3;
                }
                a2.set(obj, iOExceptionArr);
                IOException iOException = new IOException("I/O exception during makeDexElement");
                iOException.initCause((Throwable) arrayList.get(0));
                throw iOException;
            }
        }

        public static Object[] a(Object obj, ArrayList<File> arrayList, File file, ArrayList<IOException> arrayList2) {
            return (Object[]) a.b(obj, "makeDexElements", (Class<?>[]) new Class[]{ArrayList.class, File.class, ArrayList.class}).invoke(obj, new Object[]{arrayList, file, arrayList2});
        }
    }

    /* compiled from: MultiDex */
    private static final class c {
        public static void a(ClassLoader classLoader, List<? extends File> list) {
            int size = list.size();
            Field a2 = a.b(classLoader, "path");
            StringBuilder sb = new StringBuilder((String) a2.get(classLoader));
            String[] strArr = new String[size];
            File[] fileArr = new File[size];
            ZipFile[] zipFileArr = new ZipFile[size];
            DexFile[] dexFileArr = new DexFile[size];
            ListIterator<? extends File> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                File file = (File) listIterator.next();
                String absolutePath = file.getAbsolutePath();
                sb.append(':');
                sb.append(absolutePath);
                int previousIndex = listIterator.previousIndex();
                strArr[previousIndex] = absolutePath;
                fileArr[previousIndex] = file;
                zipFileArr[previousIndex] = new ZipFile(file);
                dexFileArr[previousIndex] = DexFile.loadDex(absolutePath, absolutePath + ".dex", 0);
            }
            a2.set(classLoader, sb.toString());
            a.b((Object) classLoader, "mPaths", (Object[]) strArr);
            a.b((Object) classLoader, "mFiles", (Object[]) fileArr);
            a.b((Object) classLoader, "mZips", (Object[]) zipFileArr);
            a.b((Object) classLoader, "mDexs", (Object[]) dexFileArr);
        }
    }

    public static ApplicationInfo b(Context context) {
        try {
            return context.getApplicationInfo();
        } catch (RuntimeException e2) {
            Log.w("MultiDex", "Failure while trying to obtain ApplicationInfo from Context. Must be running in test mode. Skip patching.", e2);
            return null;
        }
    }

    public static ClassLoader c(Context context) {
        try {
            ClassLoader classLoader = context.getClassLoader();
            if (Build.VERSION.SDK_INT >= 14) {
                if (classLoader instanceof BaseDexClassLoader) {
                    return classLoader;
                }
            } else if ((classLoader instanceof DexClassLoader) || (classLoader instanceof PathClassLoader)) {
                return classLoader;
            }
            Log.e("MultiDex", "Context class loader is null or not dex-capable. Must be running in test mode. Skip patching.");
            return null;
        } catch (RuntimeException e2) {
            Log.w("MultiDex", "Failure while trying to obtain Context class loader. Must be running in test mode. Skip patching.", e2);
            return null;
        }
    }

    public static void d(Context context) {
        Log.i("MultiDex", "Installing application");
        if (f3235b) {
            Log.i("MultiDex", "VM has multidex support, MultiDex support library is disabled.");
        } else if (Build.VERSION.SDK_INT >= 4) {
            try {
                ApplicationInfo b2 = b(context);
                if (b2 == null) {
                    Log.i("MultiDex", "No ApplicationInfo available, i.e. running on a test Context: MultiDex support library is disabled.");
                    return;
                }
                a(context, new File(b2.sourceDir), new File(b2.dataDir), "secondary-dexes", "", true);
                Log.i("MultiDex", "install done");
            } catch (Exception e2) {
                Log.e("MultiDex", "MultiDex installation failure", e2);
                throw new RuntimeException("MultiDex installation failed (" + e2.getMessage() + ").");
            }
        } else {
            throw new RuntimeException("MultiDex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is " + 4 + ".");
        }
    }

    public static Field b(Object obj, String str) {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Field declaredField = cls.getDeclaredField(str);
                if (!declaredField.isAccessible()) {
                    declaredField.setAccessible(true);
                }
                return declaredField;
            } catch (NoSuchFieldException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchFieldException("Field " + str + " not found in " + obj.getClass());
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:41|42|43|44|45) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:44:0x009d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.content.Context r5, java.io.File r6, java.io.File r7, java.lang.String r8, java.lang.String r9, boolean r10) {
        /*
            java.util.Set<java.io.File> r0 = f3234a
            monitor-enter(r0)
            java.util.Set<java.io.File> r1 = f3234a     // Catch:{ all -> 0x009e }
            boolean r1 = r1.contains(r6)     // Catch:{ all -> 0x009e }
            if (r1 == 0) goto L_0x000d
            monitor-exit(r0)     // Catch:{ all -> 0x009e }
            return
        L_0x000d:
            java.util.Set<java.io.File> r1 = f3234a     // Catch:{ all -> 0x009e }
            r1.add(r6)     // Catch:{ all -> 0x009e }
            int r1 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x009e }
            r2 = 20
            if (r1 <= r2) goto L_0x0055
            java.lang.String r1 = "MultiDex"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x009e }
            r3.<init>()     // Catch:{ all -> 0x009e }
            java.lang.String r4 = "MultiDex is not guaranteed to work in SDK version "
            r3.append(r4)     // Catch:{ all -> 0x009e }
            int r4 = android.os.Build.VERSION.SDK_INT     // Catch:{ all -> 0x009e }
            r3.append(r4)     // Catch:{ all -> 0x009e }
            java.lang.String r4 = ": SDK version higher than "
            r3.append(r4)     // Catch:{ all -> 0x009e }
            r3.append(r2)     // Catch:{ all -> 0x009e }
            java.lang.String r2 = " should be backed by "
            r3.append(r2)     // Catch:{ all -> 0x009e }
            java.lang.String r2 = "runtime with built-in multidex capabilty but it's not the "
            r3.append(r2)     // Catch:{ all -> 0x009e }
            java.lang.String r2 = "case here: java.vm.version=\""
            r3.append(r2)     // Catch:{ all -> 0x009e }
            java.lang.String r2 = "java.vm.version"
            java.lang.String r2 = java.lang.System.getProperty(r2)     // Catch:{ all -> 0x009e }
            r3.append(r2)     // Catch:{ all -> 0x009e }
            java.lang.String r2 = "\""
            r3.append(r2)     // Catch:{ all -> 0x009e }
            java.lang.String r2 = r3.toString()     // Catch:{ all -> 0x009e }
            android.util.Log.w(r1, r2)     // Catch:{ all -> 0x009e }
        L_0x0055:
            java.lang.ClassLoader r1 = c(r5)     // Catch:{ all -> 0x009e }
            if (r1 != 0) goto L_0x005d
            monitor-exit(r0)     // Catch:{ all -> 0x009e }
            return
        L_0x005d:
            a((android.content.Context) r5)     // Catch:{ Throwable -> 0x0061 }
            goto L_0x0069
        L_0x0061:
            r2 = move-exception
            java.lang.String r3 = "MultiDex"
            java.lang.String r4 = "Something went wrong when trying to clear old MultiDex extraction, continuing without cleaning."
            android.util.Log.w(r3, r4, r2)     // Catch:{ all -> 0x009e }
        L_0x0069:
            java.io.File r7 = a((android.content.Context) r5, (java.io.File) r7, (java.lang.String) r8)     // Catch:{ all -> 0x009e }
            androidx.multidex.MultiDexExtractor r8 = new androidx.multidex.MultiDexExtractor     // Catch:{ all -> 0x009e }
            r8.<init>(r6, r7)     // Catch:{ all -> 0x009e }
            r6 = 0
            r2 = 0
            java.util.List r2 = r8.a(r5, r9, r2)     // Catch:{ all -> 0x0099 }
            a((java.lang.ClassLoader) r1, (java.io.File) r7, (java.util.List<? extends java.io.File>) r2)     // Catch:{ IOException -> 0x007c }
            goto L_0x008e
        L_0x007c:
            r2 = move-exception
            if (r10 == 0) goto L_0x0098
            java.lang.String r10 = "MultiDex"
            java.lang.String r3 = "Failed to install extracted secondary dex files, retrying with forced extraction"
            android.util.Log.w(r10, r3, r2)     // Catch:{ all -> 0x0099 }
            r10 = 1
            java.util.List r5 = r8.a(r5, r9, r10)     // Catch:{ all -> 0x0099 }
            a((java.lang.ClassLoader) r1, (java.io.File) r7, (java.util.List<? extends java.io.File>) r5)     // Catch:{ all -> 0x0099 }
        L_0x008e:
            r8.close()     // Catch:{ IOException -> 0x0092 }
            goto L_0x0093
        L_0x0092:
            r6 = move-exception
        L_0x0093:
            if (r6 != 0) goto L_0x0097
            monitor-exit(r0)     // Catch:{ all -> 0x009e }
            return
        L_0x0097:
            throw r6     // Catch:{ all -> 0x009e }
        L_0x0098:
            throw r2     // Catch:{ all -> 0x0099 }
        L_0x0099:
            r5 = move-exception
            r8.close()     // Catch:{ IOException -> 0x009d }
        L_0x009d:
            throw r5     // Catch:{ all -> 0x009e }
        L_0x009e:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x009e }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: b.v.a.a(android.content.Context, java.io.File, java.io.File, java.lang.String, java.lang.String, boolean):void");
    }

    public static Method b(Object obj, String str, Class<?>... clsArr) {
        Class cls = obj.getClass();
        while (cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod(str, clsArr);
                if (!declaredMethod.isAccessible()) {
                    declaredMethod.setAccessible(true);
                }
                return declaredMethod;
            } catch (NoSuchMethodException unused) {
                cls = cls.getSuperclass();
            }
        }
        throw new NoSuchMethodException("Method " + str + " with parameters " + Arrays.asList(clsArr) + " not found in " + obj.getClass());
    }

    public static void b(Object obj, String str, Object[] objArr) {
        Field b2 = b(obj, str);
        Object[] objArr2 = (Object[]) b2.get(obj);
        Object[] objArr3 = (Object[]) Array.newInstance(objArr2.getClass().getComponentType(), objArr2.length + objArr.length);
        System.arraycopy(objArr2, 0, objArr3, 0, objArr2.length);
        System.arraycopy(objArr, 0, objArr3, objArr2.length, objArr.length);
        b2.set(obj, objArr3);
    }

    public static boolean a(String str) {
        boolean z = false;
        if (str != null) {
            StringTokenizer stringTokenizer = new StringTokenizer(str, ".");
            String str2 = null;
            String nextToken = stringTokenizer.hasMoreTokens() ? stringTokenizer.nextToken() : null;
            if (stringTokenizer.hasMoreTokens()) {
                str2 = stringTokenizer.nextToken();
            }
            if (!(nextToken == null || str2 == null)) {
                try {
                    int parseInt = Integer.parseInt(nextToken);
                    int parseInt2 = Integer.parseInt(str2);
                    if (parseInt > 2 || (parseInt == 2 && parseInt2 >= 1)) {
                        z = true;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("VM with version ");
        sb.append(str);
        sb.append(z ? " has multidex support" : " does not have multidex support");
        Log.i("MultiDex", sb.toString());
        return z;
    }

    public static void a(ClassLoader classLoader, File file, List<? extends File> list) {
        if (!list.isEmpty()) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 19) {
                b.a(classLoader, list, file);
            } else if (i2 >= 14) {
                C0043a.a(classLoader, list);
            } else {
                c.a(classLoader, list);
            }
        }
    }

    public static void a(Context context) {
        File file = new File(context.getFilesDir(), "secondary-dexes");
        if (file.isDirectory()) {
            Log.i("MultiDex", "Clearing old secondary dex dir (" + file.getPath() + ").");
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                Log.w("MultiDex", "Failed to list secondary dex dir content (" + file.getPath() + ").");
                return;
            }
            for (File length : listFiles) {
                Log.i("MultiDex", "Trying to delete old file " + length.getPath() + " of size " + length.length());
                if (!listFiles[r3].delete()) {
                    Log.w("MultiDex", "Failed to delete old file " + length.getPath());
                } else {
                    Log.i("MultiDex", "Deleted old file " + length.getPath());
                }
            }
            if (!file.delete()) {
                Log.w("MultiDex", "Failed to delete secondary dex dir " + file.getPath());
            } else {
                Log.i("MultiDex", "Deleted old secondary dex dir " + file.getPath());
            }
        }
    }

    public static File a(Context context, File file, String str) {
        File file2 = new File(file, "code_cache");
        try {
            a(file2);
        } catch (IOException unused) {
            file2 = new File(context.getFilesDir(), "code_cache");
            a(file2);
        }
        File file3 = new File(file2, str);
        a(file3);
        return file3;
    }

    public static void a(File file) {
        file.mkdir();
        if (!file.isDirectory()) {
            File parentFile = file.getParentFile();
            if (parentFile == null) {
                Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". Parent file is null.");
            } else {
                Log.e("MultiDex", "Failed to create dir " + file.getPath() + ". parent file is a dir " + parentFile.isDirectory() + ", a file " + parentFile.isFile() + ", exists " + parentFile.exists() + ", readable " + parentFile.canRead() + ", writable " + parentFile.canWrite());
            }
            throw new IOException("Failed to create directory " + file.getPath());
        }
    }
}
