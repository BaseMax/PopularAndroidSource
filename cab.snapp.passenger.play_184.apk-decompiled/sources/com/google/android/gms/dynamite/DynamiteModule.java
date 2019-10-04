package com.google.android.gms.dynamite;

import android.content.Context;
import android.database.Cursor;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.a.m;
import com.google.android.gms.common.internal.ap;
import java.lang.reflect.Field;

public final class DynamiteModule {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f3024a;

    /* renamed from: b  reason: collision with root package name */
    private static k f3025b;
    private static m c;
    private static String d;
    private static final ThreadLocal<a> e = new ThreadLocal<>();
    private static final i f = new a();
    private static d g = new c();
    public static final d zzgww = new b();
    public static final d zzgwy = new d();
    public static final d zzgwz = new e();
    public static final d zzgxa = new f();
    public static final d zzgxb = new g();
    private final Context h;

    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    static class a {
        public Cursor zzgxd;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    static class b implements i {

        /* renamed from: a  reason: collision with root package name */
        private final int f3026a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3027b = 0;

        public b(int i, int i2) {
            this.f3026a = i;
        }

        public final int zzab(Context context, String str) {
            return this.f3026a;
        }

        public final int zzc(Context context, String str, boolean z) {
            return 0;
        }
    }

    public static class c extends Exception {
        private c(String str) {
            super(str);
        }

        /* synthetic */ c(String str, byte b2) {
            this(str);
        }

        private c(String str, Throwable th) {
            super(str, th);
        }

        /* synthetic */ c(String str, Throwable th, byte b2) {
            this(str, th);
        }
    }

    public interface d {
        j zza(Context context, String str, i iVar) throws c;
    }

    private DynamiteModule(Context context) {
        this.h = (Context) ap.checkNotNull(context);
    }

    private static int a(Context context, String str, boolean z) {
        k a2 = a(context);
        if (a2 == null) {
            return 0;
        }
        try {
            return a2.zza(m.zzz(context), str, z);
        } catch (RemoteException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            if (valueOf.length() != 0) {
                "Failed to retrieve remote module version: ".concat(valueOf);
            } else {
                new String("Failed to retrieve remote module version: ");
            }
            return 0;
        }
    }

    private static Context a(Context context, String str, int i, Cursor cursor, m mVar) {
        try {
            return (Context) m.zzx(mVar.zza(m.zzz(context), str, i, m.zzz(cursor)));
        } catch (Exception e2) {
            String valueOf = String.valueOf(e2.toString());
            if (valueOf.length() != 0) {
                "Failed to load DynamiteLoader: ".concat(valueOf);
            } else {
                new String("Failed to load DynamiteLoader: ");
            }
            return null;
        }
    }

    private static DynamiteModule a(Context context, String str) {
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            "Selected local version of ".concat(valueOf);
        } else {
            new String("Selected local version of ");
        }
        return new DynamiteModule(context.getApplicationContext());
    }

    private static DynamiteModule a(Context context, String str, int i) throws c {
        Boolean bool;
        synchronized (DynamiteModule.class) {
            bool = f3024a;
        }
        if (bool != null) {
            return bool.booleanValue() ? c(context, str, i) : b(context, str, i);
        }
        throw new c("Failed to determine which loading route to use.", (byte) 0);
    }

    /* JADX WARNING: type inference failed for: r1v7, types: [android.os.IInterface] */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x0068, code lost:
        return null;
     */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.google.android.gms.dynamite.k a(android.content.Context r4) {
        /*
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r0 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r0)
            com.google.android.gms.dynamite.k r1 = f3025b     // Catch:{ all -> 0x0069 }
            if (r1 == 0) goto L_0x000b
            com.google.android.gms.dynamite.k r4 = f3025b     // Catch:{ all -> 0x0069 }
            monitor-exit(r0)     // Catch:{ all -> 0x0069 }
            return r4
        L_0x000b:
            com.google.android.gms.common.j r1 = com.google.android.gms.common.j.zzafy()     // Catch:{ all -> 0x0069 }
            int r1 = r1.isGooglePlayServicesAvailable(r4)     // Catch:{ all -> 0x0069 }
            r2 = 0
            if (r1 == 0) goto L_0x0018
            monitor-exit(r0)     // Catch:{ all -> 0x0069 }
            return r2
        L_0x0018:
            java.lang.String r1 = "com.google.android.gms"
            r3 = 3
            android.content.Context r4 = r4.createPackageContext(r1, r3)     // Catch:{ Exception -> 0x004d }
            java.lang.ClassLoader r4 = r4.getClassLoader()     // Catch:{ Exception -> 0x004d }
            java.lang.String r1 = "com.google.android.gms.chimera.container.DynamiteLoaderImpl"
            java.lang.Class r4 = r4.loadClass(r1)     // Catch:{ Exception -> 0x004d }
            java.lang.Object r4 = r4.newInstance()     // Catch:{ Exception -> 0x004d }
            android.os.IBinder r4 = (android.os.IBinder) r4     // Catch:{ Exception -> 0x004d }
            if (r4 != 0) goto L_0x0033
            r4 = r2
            goto L_0x0047
        L_0x0033:
            java.lang.String r1 = "com.google.android.gms.dynamite.IDynamiteLoader"
            android.os.IInterface r1 = r4.queryLocalInterface(r1)     // Catch:{ Exception -> 0x004d }
            boolean r3 = r1 instanceof com.google.android.gms.dynamite.k     // Catch:{ Exception -> 0x004d }
            if (r3 == 0) goto L_0x0041
            r4 = r1
            com.google.android.gms.dynamite.k r4 = (com.google.android.gms.dynamite.k) r4     // Catch:{ Exception -> 0x004d }
            goto L_0x0047
        L_0x0041:
            com.google.android.gms.dynamite.l r1 = new com.google.android.gms.dynamite.l     // Catch:{ Exception -> 0x004d }
            r1.<init>(r4)     // Catch:{ Exception -> 0x004d }
            r4 = r1
        L_0x0047:
            if (r4 == 0) goto L_0x0067
            f3025b = r4     // Catch:{ Exception -> 0x004d }
            monitor-exit(r0)     // Catch:{ all -> 0x0069 }
            return r4
        L_0x004d:
            r4 = move-exception
            java.lang.String r1 = "Failed to load IDynamiteLoader from GmsCore: "
            java.lang.String r4 = r4.getMessage()     // Catch:{ all -> 0x0069 }
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch:{ all -> 0x0069 }
            int r3 = r4.length()     // Catch:{ all -> 0x0069 }
            if (r3 == 0) goto L_0x0062
            r1.concat(r4)     // Catch:{ all -> 0x0069 }
            goto L_0x0067
        L_0x0062:
            java.lang.String r4 = new java.lang.String     // Catch:{ all -> 0x0069 }
            r4.<init>(r1)     // Catch:{ all -> 0x0069 }
        L_0x0067:
            monitor-exit(r0)     // Catch:{ all -> 0x0069 }
            return r2
        L_0x0069:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0069 }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.a(android.content.Context):com.google.android.gms.dynamite.k");
    }

    /* JADX WARNING: type inference failed for: r1v5, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static void a(java.lang.ClassLoader r3) throws com.google.android.gms.dynamite.DynamiteModule.c {
        /*
            r0 = 0
            java.lang.String r1 = "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"
            java.lang.Class r3 = r3.loadClass(r1)     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            java.lang.Class[] r1 = new java.lang.Class[r0]     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            java.lang.reflect.Constructor r3 = r3.getConstructor(r1)     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            java.lang.Object[] r1 = new java.lang.Object[r0]     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            java.lang.Object r3 = r3.newInstance(r1)     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            android.os.IBinder r3 = (android.os.IBinder) r3     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            if (r3 != 0) goto L_0x0019
            r3 = 0
            goto L_0x002d
        L_0x0019:
            java.lang.String r1 = "com.google.android.gms.dynamite.IDynamiteLoaderV2"
            android.os.IInterface r1 = r3.queryLocalInterface(r1)     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            boolean r2 = r1 instanceof com.google.android.gms.dynamite.m     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            if (r2 == 0) goto L_0x0027
            r3 = r1
            com.google.android.gms.dynamite.m r3 = (com.google.android.gms.dynamite.m) r3     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            goto L_0x002d
        L_0x0027:
            com.google.android.gms.dynamite.n r1 = new com.google.android.gms.dynamite.n     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            r1.<init>(r3)     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            r3 = r1
        L_0x002d:
            c = r3     // Catch:{ ClassNotFoundException -> 0x0038, IllegalAccessException -> 0x0036, InstantiationException -> 0x0034, InvocationTargetException -> 0x0032, NoSuchMethodException -> 0x0030 }
            return
        L_0x0030:
            r3 = move-exception
            goto L_0x0039
        L_0x0032:
            r3 = move-exception
            goto L_0x0039
        L_0x0034:
            r3 = move-exception
            goto L_0x0039
        L_0x0036:
            r3 = move-exception
            goto L_0x0039
        L_0x0038:
            r3 = move-exception
        L_0x0039:
            com.google.android.gms.dynamite.DynamiteModule$c r1 = new com.google.android.gms.dynamite.DynamiteModule$c
            java.lang.String r2 = "Failed to instantiate dynamite loader"
            r1.<init>(r2, r3, r0)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.a(java.lang.ClassLoader):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:50:0x009c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int b(android.content.Context r8, java.lang.String r9, boolean r10) throws com.google.android.gms.dynamite.DynamiteModule.c {
        /*
            r0 = 0
            r1 = 0
            android.content.ContentResolver r2 = r8.getContentResolver()     // Catch:{ Exception -> 0x008c }
            if (r10 == 0) goto L_0x000b
            java.lang.String r8 = "api_force_staging"
            goto L_0x000d
        L_0x000b:
            java.lang.String r8 = "api"
        L_0x000d:
            java.lang.String r10 = "content://com.google.android.gms.chimera/"
            int r3 = r10.length()     // Catch:{ Exception -> 0x008c }
            int r3 = r3 + 1
            int r4 = r8.length()     // Catch:{ Exception -> 0x008c }
            int r3 = r3 + r4
            java.lang.String r4 = java.lang.String.valueOf(r9)     // Catch:{ Exception -> 0x008c }
            int r4 = r4.length()     // Catch:{ Exception -> 0x008c }
            int r3 = r3 + r4
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x008c }
            r4.<init>(r3)     // Catch:{ Exception -> 0x008c }
            r4.append(r10)     // Catch:{ Exception -> 0x008c }
            r4.append(r8)     // Catch:{ Exception -> 0x008c }
            java.lang.String r8 = "/"
            r4.append(r8)     // Catch:{ Exception -> 0x008c }
            r4.append(r9)     // Catch:{ Exception -> 0x008c }
            java.lang.String r8 = r4.toString()     // Catch:{ Exception -> 0x008c }
            android.net.Uri r3 = android.net.Uri.parse(r8)     // Catch:{ Exception -> 0x008c }
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r8 = r2.query(r3, r4, r5, r6, r7)     // Catch:{ Exception -> 0x008c }
            if (r8 == 0) goto L_0x007a
            boolean r9 = r8.moveToFirst()     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            if (r9 == 0) goto L_0x007a
            int r9 = r8.getInt(r1)     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            if (r9 <= 0) goto L_0x0074
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r10 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r10)     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            r2 = 2
            java.lang.String r2 = r8.getString(r2)     // Catch:{ all -> 0x0071 }
            d = r2     // Catch:{ all -> 0x0071 }
            monitor-exit(r10)     // Catch:{ all -> 0x0071 }
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$a> r10 = e     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            java.lang.Object r10 = r10.get()     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            com.google.android.gms.dynamite.DynamiteModule$a r10 = (com.google.android.gms.dynamite.DynamiteModule.a) r10     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            if (r10 == 0) goto L_0x0074
            android.database.Cursor r2 = r10.zzgxd     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            if (r2 != 0) goto L_0x0074
            r10.zzgxd = r8     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            r8 = r0
            goto L_0x0074
        L_0x0071:
            r9 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x0071 }
            throw r9     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
        L_0x0074:
            if (r8 == 0) goto L_0x0079
            r8.close()
        L_0x0079:
            return r9
        L_0x007a:
            com.google.android.gms.dynamite.DynamiteModule$c r9 = new com.google.android.gms.dynamite.DynamiteModule$c     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            java.lang.String r10 = "Failed to connect to dynamite module ContentResolver."
            r9.<init>((java.lang.String) r10, (byte) r1)     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
            throw r9     // Catch:{ Exception -> 0x0086, all -> 0x0082 }
        L_0x0082:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto L_0x009a
        L_0x0086:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto L_0x008d
        L_0x008a:
            r8 = move-exception
            goto L_0x009a
        L_0x008c:
            r8 = move-exception
        L_0x008d:
            boolean r9 = r8 instanceof com.google.android.gms.dynamite.DynamiteModule.c     // Catch:{ all -> 0x008a }
            if (r9 == 0) goto L_0x0092
            throw r8     // Catch:{ all -> 0x008a }
        L_0x0092:
            com.google.android.gms.dynamite.DynamiteModule$c r9 = new com.google.android.gms.dynamite.DynamiteModule$c     // Catch:{ all -> 0x008a }
            java.lang.String r10 = "V2 version check failed"
            r9.<init>(r10, r8, r1)     // Catch:{ all -> 0x008a }
            throw r9     // Catch:{ all -> 0x008a }
        L_0x009a:
            if (r0 == 0) goto L_0x009f
            r0.close()
        L_0x009f:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.b(android.content.Context, java.lang.String, boolean):int");
    }

    private static DynamiteModule b(Context context, String str, int i) throws c {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        k a2 = a(context);
        if (a2 != null) {
            try {
                com.google.android.gms.a.a zza = a2.zza(m.zzz(context), str, i);
                if (m.zzx(zza) != null) {
                    return new DynamiteModule((Context) m.zzx(zza));
                }
                throw new c("Failed to load remote module.", (byte) 0);
            } catch (RemoteException e2) {
                throw new c("Failed to load remote module.", e2, (byte) 0);
            }
        } else {
            throw new c("Failed to create IDynamiteLoader.", (byte) 0);
        }
    }

    private static DynamiteModule c(Context context, String str, int i) throws c {
        m mVar;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51);
        sb.append("Selected remote version of ");
        sb.append(str);
        sb.append(", version >= ");
        sb.append(i);
        synchronized (DynamiteModule.class) {
            mVar = c;
        }
        if (mVar != null) {
            a aVar = e.get();
            if (aVar == null || aVar.zzgxd == null) {
                throw new c("No result cursor", (byte) 0);
            }
            Context a2 = a(context.getApplicationContext(), str, i, aVar.zzgxd, mVar);
            if (a2 != null) {
                return new DynamiteModule(a2);
            }
            throw new c("Failed to get module context", (byte) 0);
        }
        throw new c("DynamiteLoaderV2 was not cached.", (byte) 0);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x0073, code lost:
        if (r2.zzgxd != null) goto L_0x0075;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x008c, code lost:
        if (r2.zzgxd != null) goto L_0x0075;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x00c2, code lost:
        if (r2.zzgxd != null) goto L_0x0075;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.dynamite.DynamiteModule zza(android.content.Context r9, com.google.android.gms.dynamite.DynamiteModule.d r10, java.lang.String r11) throws com.google.android.gms.dynamite.DynamiteModule.c {
        /*
            java.lang.String r0 = ":"
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$a> r1 = e
            java.lang.Object r1 = r1.get()
            com.google.android.gms.dynamite.DynamiteModule$a r1 = (com.google.android.gms.dynamite.DynamiteModule.a) r1
            com.google.android.gms.dynamite.DynamiteModule$a r2 = new com.google.android.gms.dynamite.DynamiteModule$a
            r3 = 0
            r2.<init>(r3)
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$a> r4 = e
            r4.set(r2)
            com.google.android.gms.dynamite.i r4 = f     // Catch:{ all -> 0x0112 }
            com.google.android.gms.dynamite.j r4 = r10.zza(r9, r11, r4)     // Catch:{ all -> 0x0112 }
            int r5 = r4.zzgxg     // Catch:{ all -> 0x0112 }
            int r6 = r4.zzgxh     // Catch:{ all -> 0x0112 }
            java.lang.String r7 = java.lang.String.valueOf(r11)     // Catch:{ all -> 0x0112 }
            int r7 = r7.length()     // Catch:{ all -> 0x0112 }
            int r7 = r7 + 68
            java.lang.String r8 = java.lang.String.valueOf(r11)     // Catch:{ all -> 0x0112 }
            int r8 = r8.length()     // Catch:{ all -> 0x0112 }
            int r7 = r7 + r8
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ all -> 0x0112 }
            r8.<init>(r7)     // Catch:{ all -> 0x0112 }
            java.lang.String r7 = "Considering local module "
            r8.append(r7)     // Catch:{ all -> 0x0112 }
            r8.append(r11)     // Catch:{ all -> 0x0112 }
            r8.append(r0)     // Catch:{ all -> 0x0112 }
            r8.append(r5)     // Catch:{ all -> 0x0112 }
            java.lang.String r5 = " and remote module "
            r8.append(r5)     // Catch:{ all -> 0x0112 }
            r8.append(r11)     // Catch:{ all -> 0x0112 }
            r8.append(r0)     // Catch:{ all -> 0x0112 }
            r8.append(r6)     // Catch:{ all -> 0x0112 }
            int r0 = r4.zzgxi     // Catch:{ all -> 0x0112 }
            if (r0 == 0) goto L_0x00e8
            int r0 = r4.zzgxi     // Catch:{ all -> 0x0112 }
            r5 = -1
            if (r0 != r5) goto L_0x0060
            int r0 = r4.zzgxg     // Catch:{ all -> 0x0112 }
            if (r0 == 0) goto L_0x00e8
        L_0x0060:
            int r0 = r4.zzgxi     // Catch:{ all -> 0x0112 }
            r6 = 1
            if (r0 != r6) goto L_0x0069
            int r0 = r4.zzgxh     // Catch:{ all -> 0x0112 }
            if (r0 == 0) goto L_0x00e8
        L_0x0069:
            int r0 = r4.zzgxi     // Catch:{ all -> 0x0112 }
            if (r0 != r5) goto L_0x0080
            com.google.android.gms.dynamite.DynamiteModule r9 = a(r9, r11)     // Catch:{ all -> 0x0112 }
            android.database.Cursor r10 = r2.zzgxd
            if (r10 == 0) goto L_0x007a
        L_0x0075:
            android.database.Cursor r10 = r2.zzgxd
            r10.close()
        L_0x007a:
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$a> r10 = e
            r10.set(r1)
            return r9
        L_0x0080:
            int r0 = r4.zzgxi     // Catch:{ all -> 0x0112 }
            if (r0 != r6) goto L_0x00cd
            int r0 = r4.zzgxh     // Catch:{ c -> 0x008f }
            com.google.android.gms.dynamite.DynamiteModule r9 = a((android.content.Context) r9, (java.lang.String) r11, (int) r0)     // Catch:{ c -> 0x008f }
            android.database.Cursor r10 = r2.zzgxd
            if (r10 == 0) goto L_0x007a
            goto L_0x0075
        L_0x008f:
            r0 = move-exception
            java.lang.String r6 = "Failed to load remote module: "
            java.lang.String r7 = r0.getMessage()     // Catch:{ all -> 0x0112 }
            java.lang.String r7 = java.lang.String.valueOf(r7)     // Catch:{ all -> 0x0112 }
            int r8 = r7.length()     // Catch:{ all -> 0x0112 }
            if (r8 == 0) goto L_0x00a4
            r6.concat(r7)     // Catch:{ all -> 0x0112 }
            goto L_0x00a9
        L_0x00a4:
            java.lang.String r7 = new java.lang.String     // Catch:{ all -> 0x0112 }
            r7.<init>(r6)     // Catch:{ all -> 0x0112 }
        L_0x00a9:
            int r6 = r4.zzgxg     // Catch:{ all -> 0x0112 }
            if (r6 == 0) goto L_0x00c5
            com.google.android.gms.dynamite.DynamiteModule$b r6 = new com.google.android.gms.dynamite.DynamiteModule$b     // Catch:{ all -> 0x0112 }
            int r4 = r4.zzgxg     // Catch:{ all -> 0x0112 }
            r6.<init>(r4, r3)     // Catch:{ all -> 0x0112 }
            com.google.android.gms.dynamite.j r10 = r10.zza(r9, r11, r6)     // Catch:{ all -> 0x0112 }
            int r10 = r10.zzgxi     // Catch:{ all -> 0x0112 }
            if (r10 != r5) goto L_0x00c5
            com.google.android.gms.dynamite.DynamiteModule r9 = a(r9, r11)     // Catch:{ all -> 0x0112 }
            android.database.Cursor r10 = r2.zzgxd
            if (r10 == 0) goto L_0x007a
            goto L_0x0075
        L_0x00c5:
            com.google.android.gms.dynamite.DynamiteModule$c r9 = new com.google.android.gms.dynamite.DynamiteModule$c     // Catch:{ all -> 0x0112 }
            java.lang.String r10 = "Remote load failed. No local fallback found."
            r9.<init>(r10, r0, r3)     // Catch:{ all -> 0x0112 }
            throw r9     // Catch:{ all -> 0x0112 }
        L_0x00cd:
            com.google.android.gms.dynamite.DynamiteModule$c r9 = new com.google.android.gms.dynamite.DynamiteModule$c     // Catch:{ all -> 0x0112 }
            int r10 = r4.zzgxi     // Catch:{ all -> 0x0112 }
            r11 = 47
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x0112 }
            r0.<init>(r11)     // Catch:{ all -> 0x0112 }
            java.lang.String r11 = "VersionPolicy returned invalid code:"
            r0.append(r11)     // Catch:{ all -> 0x0112 }
            r0.append(r10)     // Catch:{ all -> 0x0112 }
            java.lang.String r10 = r0.toString()     // Catch:{ all -> 0x0112 }
            r9.<init>((java.lang.String) r10, (byte) r3)     // Catch:{ all -> 0x0112 }
            throw r9     // Catch:{ all -> 0x0112 }
        L_0x00e8:
            com.google.android.gms.dynamite.DynamiteModule$c r9 = new com.google.android.gms.dynamite.DynamiteModule$c     // Catch:{ all -> 0x0112 }
            int r10 = r4.zzgxg     // Catch:{ all -> 0x0112 }
            int r11 = r4.zzgxh     // Catch:{ all -> 0x0112 }
            r0 = 91
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0112 }
            r4.<init>(r0)     // Catch:{ all -> 0x0112 }
            java.lang.String r0 = "No acceptable module found. Local version is "
            r4.append(r0)     // Catch:{ all -> 0x0112 }
            r4.append(r10)     // Catch:{ all -> 0x0112 }
            java.lang.String r10 = " and remote version is "
            r4.append(r10)     // Catch:{ all -> 0x0112 }
            r4.append(r11)     // Catch:{ all -> 0x0112 }
            java.lang.String r10 = "."
            r4.append(r10)     // Catch:{ all -> 0x0112 }
            java.lang.String r10 = r4.toString()     // Catch:{ all -> 0x0112 }
            r9.<init>((java.lang.String) r10, (byte) r3)     // Catch:{ all -> 0x0112 }
            throw r9     // Catch:{ all -> 0x0112 }
        L_0x0112:
            r9 = move-exception
            android.database.Cursor r10 = r2.zzgxd
            if (r10 == 0) goto L_0x011c
            android.database.Cursor r10 = r2.zzgxd
            r10.close()
        L_0x011c:
            java.lang.ThreadLocal<com.google.android.gms.dynamite.DynamiteModule$a> r10 = e
            r10.set(r1)
            goto L_0x0123
        L_0x0122:
            throw r9
        L_0x0123:
            goto L_0x0122
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zza(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$d, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    public static int zzab(Context context, String str) {
        try {
            ClassLoader classLoader = context.getApplicationContext().getClassLoader();
            StringBuilder sb = new StringBuilder("com.google.android.gms.dynamite.descriptors.".length() + 1 + String.valueOf(str).length() + "ModuleDescriptor".length());
            sb.append("com.google.android.gms.dynamite.descriptors.");
            sb.append(str);
            sb.append(".");
            sb.append("ModuleDescriptor");
            Class<?> loadClass = classLoader.loadClass(sb.toString());
            Field declaredField = loadClass.getDeclaredField("MODULE_ID");
            Field declaredField2 = loadClass.getDeclaredField("MODULE_VERSION");
            if (declaredField.get(null).equals(str)) {
                return declaredField2.getInt(null);
            }
            String valueOf = String.valueOf(declaredField.get(null));
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(str).length());
            sb2.append("Module descriptor id '");
            sb2.append(valueOf);
            sb2.append("' didn't match expected id '");
            sb2.append(str);
            sb2.append("'");
            return 0;
        } catch (ClassNotFoundException unused) {
            StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 45);
            sb3.append("Local module descriptor class for ");
            sb3.append(str);
            sb3.append(" not found.");
            return 0;
        } catch (Exception e2) {
            String valueOf2 = String.valueOf(e2.getMessage());
            if (valueOf2.length() != 0) {
                "Failed to load module descriptor class: ".concat(valueOf2);
            } else {
                new String("Failed to load module descriptor class: ");
            }
            return 0;
        }
    }

    public static int zzac(Context context, String str) {
        return zzc(context, str, false);
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:39|40) */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:15|16|17|18) */
    /* JADX WARNING: Code restructure failed: missing block: B:40:?, code lost:
        r2.set(null, java.lang.ClassLoader.getSystemClassLoader());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0085, code lost:
        r1 = r2;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0035 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x007c */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x00b5 A[SYNTHETIC, Splitter:B:54:0x00b5] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00d6  */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:22:0x0050=Splitter:B:22:0x0050, B:17:0x0035=Splitter:B:17:0x0035, B:34:0x0079=Splitter:B:34:0x0079} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int zzc(android.content.Context r8, java.lang.String r9, boolean r10) {
        /*
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule> r0 = com.google.android.gms.dynamite.DynamiteModule.class
            monitor-enter(r0)
            java.lang.Boolean r1 = f3024a     // Catch:{ all -> 0x00db }
            if (r1 != 0) goto L_0x00ae
            android.content.Context r1 = r8.getApplicationContext()     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
            java.lang.ClassLoader r1 = r1.getClassLoader()     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
            java.lang.Class<com.google.android.gms.dynamite.DynamiteModule$DynamiteLoaderClassLoader> r2 = com.google.android.gms.dynamite.DynamiteModule.DynamiteLoaderClassLoader.class
            java.lang.String r2 = r2.getName()     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
            java.lang.Class r1 = r1.loadClass(r2)     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
            java.lang.String r2 = "sClassLoader"
            java.lang.reflect.Field r2 = r1.getDeclaredField(r2)     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
            monitor-enter(r1)     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
            r3 = 0
            java.lang.Object r4 = r2.get(r3)     // Catch:{ all -> 0x0087 }
            java.lang.ClassLoader r4 = (java.lang.ClassLoader) r4     // Catch:{ all -> 0x0087 }
            if (r4 == 0) goto L_0x0038
            java.lang.ClassLoader r2 = java.lang.ClassLoader.getSystemClassLoader()     // Catch:{ all -> 0x0087 }
            if (r4 != r2) goto L_0x0032
        L_0x002f:
            java.lang.Boolean r2 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x0087 }
            goto L_0x0084
        L_0x0032:
            a((java.lang.ClassLoader) r4)     // Catch:{ c -> 0x0035 }
        L_0x0035:
            java.lang.Boolean r2 = java.lang.Boolean.TRUE     // Catch:{ all -> 0x0087 }
            goto L_0x0084
        L_0x0038:
            java.lang.String r4 = "com.google.android.gms"
            android.content.Context r5 = r8.getApplicationContext()     // Catch:{ all -> 0x0087 }
            java.lang.String r5 = r5.getPackageName()     // Catch:{ all -> 0x0087 }
            boolean r4 = r4.equals(r5)     // Catch:{ all -> 0x0087 }
            if (r4 == 0) goto L_0x0050
            java.lang.ClassLoader r4 = java.lang.ClassLoader.getSystemClassLoader()     // Catch:{ all -> 0x0087 }
            r2.set(r3, r4)     // Catch:{ all -> 0x0087 }
            goto L_0x002f
        L_0x0050:
            int r4 = b((android.content.Context) r8, (java.lang.String) r9, (boolean) r10)     // Catch:{ c -> 0x007c }
            java.lang.String r5 = d     // Catch:{ c -> 0x007c }
            if (r5 == 0) goto L_0x0079
            java.lang.String r5 = d     // Catch:{ c -> 0x007c }
            boolean r5 = r5.isEmpty()     // Catch:{ c -> 0x007c }
            if (r5 == 0) goto L_0x0061
            goto L_0x0079
        L_0x0061:
            com.google.android.gms.dynamite.h r5 = new com.google.android.gms.dynamite.h     // Catch:{ c -> 0x007c }
            java.lang.String r6 = d     // Catch:{ c -> 0x007c }
            java.lang.ClassLoader r7 = java.lang.ClassLoader.getSystemClassLoader()     // Catch:{ c -> 0x007c }
            r5.<init>(r6, r7)     // Catch:{ c -> 0x007c }
            a((java.lang.ClassLoader) r5)     // Catch:{ c -> 0x007c }
            r2.set(r3, r5)     // Catch:{ c -> 0x007c }
            java.lang.Boolean r5 = java.lang.Boolean.TRUE     // Catch:{ c -> 0x007c }
            f3024a = r5     // Catch:{ c -> 0x007c }
            monitor-exit(r1)     // Catch:{ all -> 0x0087 }
            monitor-exit(r0)     // Catch:{ all -> 0x00db }
            return r4
        L_0x0079:
            monitor-exit(r1)     // Catch:{ all -> 0x0087 }
            monitor-exit(r0)     // Catch:{ all -> 0x00db }
            return r4
        L_0x007c:
            java.lang.ClassLoader r4 = java.lang.ClassLoader.getSystemClassLoader()     // Catch:{ all -> 0x0087 }
            r2.set(r3, r4)     // Catch:{ all -> 0x0087 }
            goto L_0x002f
        L_0x0084:
            monitor-exit(r1)     // Catch:{ all -> 0x0087 }
            r1 = r2
            goto L_0x00ac
        L_0x0087:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0087 }
            throw r2     // Catch:{ ClassNotFoundException -> 0x008e, IllegalAccessException -> 0x008c, NoSuchFieldException -> 0x008a }
        L_0x008a:
            r1 = move-exception
            goto L_0x008f
        L_0x008c:
            r1 = move-exception
            goto L_0x008f
        L_0x008e:
            r1 = move-exception
        L_0x008f:
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch:{ all -> 0x00db }
            java.lang.String r2 = java.lang.String.valueOf(r1)     // Catch:{ all -> 0x00db }
            int r2 = r2.length()     // Catch:{ all -> 0x00db }
            int r2 = r2 + 30
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x00db }
            r3.<init>(r2)     // Catch:{ all -> 0x00db }
            java.lang.String r2 = "Failed to load module via V2: "
            r3.append(r2)     // Catch:{ all -> 0x00db }
            r3.append(r1)     // Catch:{ all -> 0x00db }
            java.lang.Boolean r1 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x00db }
        L_0x00ac:
            f3024a = r1     // Catch:{ all -> 0x00db }
        L_0x00ae:
            monitor-exit(r0)     // Catch:{ all -> 0x00db }
            boolean r0 = r1.booleanValue()
            if (r0 == 0) goto L_0x00d6
            int r8 = b((android.content.Context) r8, (java.lang.String) r9, (boolean) r10)     // Catch:{ c -> 0x00ba }
            return r8
        L_0x00ba:
            r8 = move-exception
            java.lang.String r9 = "Failed to retrieve remote module version: "
            java.lang.String r8 = r8.getMessage()
            java.lang.String r8 = java.lang.String.valueOf(r8)
            int r10 = r8.length()
            if (r10 == 0) goto L_0x00cf
            r9.concat(r8)
            goto L_0x00d4
        L_0x00cf:
            java.lang.String r8 = new java.lang.String
            r8.<init>(r9)
        L_0x00d4:
            r8 = 0
            return r8
        L_0x00d6:
            int r8 = a((android.content.Context) r8, (java.lang.String) r9, (boolean) r10)
            return r8
        L_0x00db:
            r8 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00db }
            goto L_0x00df
        L_0x00de:
            throw r8
        L_0x00df:
            goto L_0x00de
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzc(android.content.Context, java.lang.String, boolean):int");
    }

    public final Context zzaqb() {
        return this.h;
    }

    public final IBinder zzhb(String str) throws c {
        try {
            return (IBinder) this.h.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e2) {
            String valueOf = String.valueOf(str);
            throw new c(valueOf.length() != 0 ? "Failed to instantiate module class: ".concat(valueOf) : new String("Failed to instantiate module class: "), e2, (byte) 0);
        }
    }
}
