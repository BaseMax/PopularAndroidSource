package com.google.android.gms.maps.a;

import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.dynamite.DynamiteModule;

public class bn {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3680a = bn.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private static Context f3681b = null;
    private static bq c;

    private static Context a(Context context) {
        Context context2 = f3681b;
        if (context2 != null) {
            return context2;
        }
        Context b2 = b(context);
        f3681b = b2;
        return b2;
    }

    private static <T> T a(Class<?> cls) {
        try {
            return cls.newInstance();
        } catch (InstantiationException unused) {
            String valueOf = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to instantiate the dynamic class ".concat(valueOf) : new String("Unable to instantiate the dynamic class "));
        } catch (IllegalAccessException unused2) {
            String valueOf2 = String.valueOf(cls.getName());
            throw new IllegalStateException(valueOf2.length() != 0 ? "Unable to call the default constructor of ".concat(valueOf2) : new String("Unable to call the default constructor of "));
        }
    }

    private static <T> T a(ClassLoader classLoader, String str) {
        try {
            return a(((ClassLoader) ap.checkNotNull(classLoader)).loadClass(str));
        } catch (ClassNotFoundException unused) {
            String valueOf = String.valueOf(str);
            throw new IllegalStateException(valueOf.length() != 0 ? "Unable to find dynamic class ".concat(valueOf) : new String("Unable to find dynamic class "));
        }
    }

    private static Context b(Context context) {
        try {
            return DynamiteModule.zza(context, DynamiteModule.zzgww, "com.google.android.gms.maps_dynamite").zzaqb();
        } catch (Throwable unused) {
            return GooglePlayServicesUtil.getRemoteContext(context);
        }
    }

    /* JADX WARNING: type inference failed for: r1v3, types: [android.os.IInterface] */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.gms.maps.a.bq zzdt(android.content.Context r3) throws com.google.android.gms.common.c {
        /*
            com.google.android.gms.common.internal.ap.checkNotNull(r3)
            com.google.android.gms.maps.a.bq r0 = c
            if (r0 == 0) goto L_0x0008
            return r0
        L_0x0008:
            int r0 = com.google.android.gms.common.GooglePlayServicesUtil.isGooglePlayServicesAvailable(r3)
            if (r0 != 0) goto L_0x0055
            android.content.Context r0 = a((android.content.Context) r3)
            java.lang.ClassLoader r0 = r0.getClassLoader()
            java.lang.String r1 = "com.google.android.gms.maps.internal.CreatorImpl"
            java.lang.Object r0 = a(r0, r1)
            android.os.IBinder r0 = (android.os.IBinder) r0
            if (r0 != 0) goto L_0x0022
            r0 = 0
            goto L_0x0036
        L_0x0022:
            java.lang.String r1 = "com.google.android.gms.maps.internal.ICreator"
            android.os.IInterface r1 = r0.queryLocalInterface(r1)
            boolean r2 = r1 instanceof com.google.android.gms.maps.a.bq
            if (r2 == 0) goto L_0x0030
            r0 = r1
            com.google.android.gms.maps.a.bq r0 = (com.google.android.gms.maps.a.bq) r0
            goto L_0x0036
        L_0x0030:
            com.google.android.gms.maps.a.br r1 = new com.google.android.gms.maps.a.br
            r1.<init>(r0)
            r0 = r1
        L_0x0036:
            c = r0
            com.google.android.gms.maps.a.bq r0 = c     // Catch:{ RemoteException -> 0x004e }
            android.content.Context r3 = a((android.content.Context) r3)     // Catch:{ RemoteException -> 0x004e }
            android.content.res.Resources r3 = r3.getResources()     // Catch:{ RemoteException -> 0x004e }
            com.google.android.gms.a.a r3 = com.google.android.gms.a.m.zzz(r3)     // Catch:{ RemoteException -> 0x004e }
            int r1 = com.google.android.gms.common.GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE     // Catch:{ RemoteException -> 0x004e }
            r0.zzi(r3, r1)     // Catch:{ RemoteException -> 0x004e }
            com.google.android.gms.maps.a.bq r3 = c
            return r3
        L_0x004e:
            r3 = move-exception
            com.google.android.gms.maps.model.j r0 = new com.google.android.gms.maps.model.j
            r0.<init>(r3)
            throw r0
        L_0x0055:
            com.google.android.gms.common.c r3 = new com.google.android.gms.common.c
            r3.<init>(r0)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.maps.a.bn.zzdt(android.content.Context):com.google.android.gms.maps.a.bq");
    }
}
