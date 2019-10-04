package com.google.firebase;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.collection.ArraySet;
import androidx.core.content.ContextCompat;
import com.google.android.gms.c.f;
import com.google.android.gms.c.i;
import com.google.android.gms.common.api.internal.cs;
import com.google.android.gms.common.api.internal.ct;
import com.google.android.gms.common.internal.ag;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.n;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.eclipse.paho.a.a.w;

public class b {
    public static final String DEFAULT_APP_NAME = "[DEFAULT]";

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, b> f4044a = new ArrayMap();

    /* renamed from: b  reason: collision with root package name */
    private static final List<String> f4045b = Arrays.asList(new String[]{"com.google.firebase.auth.FirebaseAuth", "com.google.firebase.iid.FirebaseInstanceId"});
    private static final List<String> c = Collections.singletonList("com.google.firebase.crash.FirebaseCrash");
    private static final List<String> d = Arrays.asList(new String[]{"com.google.android.gms.measurement.AppMeasurement"});
    private static final List<String> e = Arrays.asList(new String[0]);
    private static final Set<String> f = Collections.emptySet();
    /* access modifiers changed from: private */
    public static final Object g = new Object();
    private final Context h;
    private final String i;
    private final d j;
    private final AtomicBoolean k = new AtomicBoolean(false);
    private final AtomicBoolean l = new AtomicBoolean();
    private final List<a> m = new CopyOnWriteArrayList();
    private final List<C0077b> n = new CopyOnWriteArrayList();
    private final List<Object> o = new CopyOnWriteArrayList();
    private com.google.firebase.a.a p;
    private c q;

    public interface a {
        void zzb(com.google.firebase.a.d dVar);
    }

    /* renamed from: com.google.firebase.b$b  reason: collision with other inner class name */
    public interface C0077b {
        void zzbf(boolean z);
    }

    public interface c {
        void zzgj(int i);
    }

    static class d extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private static AtomicReference<d> f4046a = new AtomicReference<>();

        /* renamed from: b  reason: collision with root package name */
        private final Context f4047b;

        private d(Context context) {
            this.f4047b = context;
        }

        public final void onReceive(Context context, Intent intent) {
            synchronized (b.g) {
                for (b a2 : b.f4044a.values()) {
                    b.a(a2);
                }
            }
            this.f4047b.unregisterReceiver(this);
        }

        static /* synthetic */ void a(Context context) {
            if (f4046a.get() == null) {
                d dVar = new d(context);
                if (f4046a.compareAndSet(null, dVar)) {
                    context.registerReceiver(dVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
                }
            }
        }
    }

    private b(Context context, String str, d dVar) {
        this.h = (Context) ap.checkNotNull(context);
        this.i = ap.zzgm(str);
        this.j = (d) ap.checkNotNull(dVar);
        this.q = new com.google.firebase.a.b();
    }

    private final <T> void a(Class<T> cls, T t, Iterable<String> iterable) {
        boolean isDeviceProtectedStorage = ContextCompat.isDeviceProtectedStorage(this.h);
        if (isDeviceProtectedStorage) {
            d.a(this.h);
        }
        for (String next : iterable) {
            if (isDeviceProtectedStorage) {
                try {
                    if (!e.contains(next)) {
                    }
                } catch (ClassNotFoundException unused) {
                    if (!f.contains(next)) {
                        String.valueOf(next).concat(" is not linked. Skipping initialization.");
                    } else {
                        throw new IllegalStateException(String.valueOf(next).concat(" is missing, but is required. Check if it has been removed by Proguard."));
                    }
                } catch (NoSuchMethodException unused2) {
                    throw new IllegalStateException(String.valueOf(next).concat("#getInstance has been removed by Proguard. Add keep rule to prevent it."));
                } catch (InvocationTargetException e2) {
                    Log.wtf("FirebaseApp", "Firebase API initialization failure.", e2);
                } catch (IllegalAccessException e3) {
                    String valueOf = String.valueOf(next);
                    Log.wtf("FirebaseApp", valueOf.length() != 0 ? "Failed to initialize ".concat(valueOf) : new String("Failed to initialize "), e3);
                }
            }
            Method method = Class.forName(next).getMethod("getInstance", new Class[]{cls});
            int modifiers = method.getModifiers();
            if (Modifier.isPublic(modifiers) && Modifier.isStatic(modifiers)) {
                method.invoke(null, new Object[]{t});
            }
        }
    }

    private final void a(boolean z) {
        for (C0077b zzbf : this.n) {
            zzbf.zzbf(z);
        }
    }

    private final void b() {
        ap.zza(!this.l.get(), (Object) "FirebaseApp was deleted");
    }

    private static List<String> c() {
        ArraySet arraySet = new ArraySet();
        synchronized (g) {
            for (b name : f4044a.values()) {
                arraySet.add(name.getName());
            }
            if (com.google.firebase.a.c.zzcjr() != null) {
                arraySet.addAll(com.google.firebase.a.c.zzcjs());
            }
        }
        ArrayList arrayList = new ArrayList(arraySet);
        Collections.sort(arrayList);
        return arrayList;
    }

    public static List<b> getApps(Context context) {
        ArrayList arrayList;
        com.google.firebase.a.c.zzew(context);
        synchronized (g) {
            arrayList = new ArrayList(f4044a.values());
            com.google.firebase.a.c.zzcjr();
            Set<String> zzcjs = com.google.firebase.a.c.zzcjs();
            zzcjs.removeAll(f4044a.keySet());
            for (String next : zzcjs) {
                com.google.firebase.a.c.zzrq(next);
                arrayList.add(initializeApp(context, null, next));
            }
        }
        return arrayList;
    }

    public static b getInstance() {
        b bVar;
        synchronized (g) {
            bVar = f4044a.get(DEFAULT_APP_NAME);
            if (bVar == null) {
                String zzamo = n.zzamo();
                StringBuilder sb = new StringBuilder(String.valueOf(zzamo).length() + 116);
                sb.append("Default FirebaseApp is not initialized in this process ");
                sb.append(zzamo);
                sb.append(". Make sure to call FirebaseApp.initializeApp(Context) first.");
                throw new IllegalStateException(sb.toString());
            }
        }
        return bVar;
    }

    public static b getInstance(String str) {
        b bVar;
        String str2;
        synchronized (g) {
            bVar = f4044a.get(str.trim());
            if (bVar == null) {
                List<String> c2 = c();
                if (!c2.isEmpty()) {
                    String valueOf = String.valueOf(TextUtils.join(", ", c2));
                    str2 = valueOf.length() != 0 ? "Available app names: ".concat(valueOf) : new String("Available app names: ");
                } else {
                    str2 = "";
                }
                throw new IllegalStateException(String.format("FirebaseApp with name %s doesn't exist. %s", new Object[]{str, str2}));
            }
        }
        return bVar;
    }

    public static b initializeApp(Context context) {
        synchronized (g) {
            if (f4044a.containsKey(DEFAULT_APP_NAME)) {
                b instance = getInstance();
                return instance;
            }
            d fromResource = d.fromResource(context);
            if (fromResource == null) {
                return null;
            }
            b initializeApp = initializeApp(context, fromResource);
            return initializeApp;
        }
    }

    public static b initializeApp(Context context, d dVar) {
        return initializeApp(context, dVar, DEFAULT_APP_NAME);
    }

    public static b initializeApp(Context context, d dVar, String str) {
        b bVar;
        Class<b> cls = b.class;
        com.google.firebase.a.c.zzew(context);
        if (context.getApplicationContext() instanceof Application) {
            cs.zza((Application) context.getApplicationContext());
            cs.zzahb().zza((ct) new e());
        }
        String trim = str.trim();
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (g) {
            boolean z = !f4044a.containsKey(trim);
            StringBuilder sb = new StringBuilder(String.valueOf(trim).length() + 33);
            sb.append("FirebaseApp name ");
            sb.append(trim);
            sb.append(" already exists!");
            ap.zza(z, (Object) sb.toString());
            ap.checkNotNull(context, "Application context cannot be null.");
            bVar = new b(context, trim, dVar);
            f4044a.put(trim, bVar);
        }
        com.google.firebase.a.c.zzg(bVar);
        bVar.a(cls, bVar, f4045b);
        if (bVar.zzbqo()) {
            bVar.a(cls, bVar, c);
            bVar.a(Context.class, bVar.getApplicationContext(), d);
        }
        return bVar;
    }

    public static void zzbf(boolean z) {
        synchronized (g) {
            ArrayList arrayList = new ArrayList(f4044a.values());
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                b bVar = (b) obj;
                if (bVar.k.get()) {
                    bVar.a(z);
                }
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        return this.i.equals(((b) obj).getName());
    }

    public Context getApplicationContext() {
        b();
        return this.h;
    }

    public String getName() {
        b();
        return this.i;
    }

    public d getOptions() {
        b();
        return this.j;
    }

    public f<Object> getToken(boolean z) {
        b();
        com.google.firebase.a.a aVar = this.p;
        return aVar == null ? i.forException(new a("firebase-auth is not linked, please fall back to unauthenticated mode.")) : aVar.zzce(z);
    }

    public final String getUid() throws a {
        b();
        com.google.firebase.a.a aVar = this.p;
        if (aVar != null) {
            return aVar.getUid();
        }
        throw new a("firebase-auth is not linked, please fall back to unauthenticated mode.");
    }

    public int hashCode() {
        return this.i.hashCode();
    }

    public void setAutomaticResourceManagementEnabled(boolean z) {
        b();
        if (this.k.compareAndSet(!z, z)) {
            boolean zzahc = cs.zzahb().zzahc();
            if (z && zzahc) {
                a(true);
            } else if (!z && zzahc) {
                a(false);
            }
        }
    }

    public String toString() {
        return ag.zzx(this).zzg("name", this.i).zzg("options", this.j).toString();
    }

    public final void zza(com.google.firebase.a.a aVar) {
        this.p = (com.google.firebase.a.a) ap.checkNotNull(aVar);
    }

    public final void zza(com.google.firebase.a.d dVar) {
        int i2 = 0;
        for (a zzb : this.m) {
            zzb.zzb(dVar);
            i2++;
        }
        String.format("Notified %d auth state listeners.", new Object[]{Integer.valueOf(i2)});
    }

    public final void zza(a aVar) {
        b();
        ap.checkNotNull(aVar);
        this.m.add(aVar);
        this.q.zzgj(this.m.size());
    }

    public final void zza(C0077b bVar) {
        b();
        if (this.k.get() && cs.zzahb().zzahc()) {
            bVar.zzbf(true);
        }
        this.n.add(bVar);
    }

    public final void zza(c cVar) {
        this.q = (c) ap.checkNotNull(cVar);
        this.q.zzgj(this.m.size());
    }

    public final void zzb(a aVar) {
        b();
        ap.checkNotNull(aVar);
        this.m.remove(aVar);
        this.q.zzgj(this.m.size());
    }

    public final boolean zzbqo() {
        return DEFAULT_APP_NAME.equals(getName());
    }

    public final String zzbqp() {
        String zzm = com.google.android.gms.common.util.b.zzm(getName().getBytes());
        String zzm2 = com.google.android.gms.common.util.b.zzm(getOptions().getApplicationId().getBytes());
        StringBuilder sb = new StringBuilder(String.valueOf(zzm).length() + 1 + String.valueOf(zzm2).length());
        sb.append(zzm);
        sb.append(w.SINGLE_LEVEL_WILDCARD);
        sb.append(zzm2);
        return sb.toString();
    }

    static /* synthetic */ void a(b bVar) {
        Class<b> cls = b.class;
        bVar.a(cls, bVar, f4045b);
        if (bVar.zzbqo()) {
            bVar.a(cls, bVar, c);
            bVar.a(Context.class, bVar.h, d);
        }
    }
}
