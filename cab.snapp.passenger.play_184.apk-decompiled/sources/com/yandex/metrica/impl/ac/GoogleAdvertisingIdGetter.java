package com.yandex.metrica.impl.ac;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Pair;
import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.j;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.m;
import com.yandex.metrica.impl.ob.ma;
import com.yandex.metrica.impl.ob.ni;
import com.yandex.metrica.impl.ob.r;
import io.fabric.sdk.android.services.common.e;
import java.lang.ref.WeakReference;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;

public class GoogleAdvertisingIdGetter {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public volatile String f5666a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public volatile Boolean f5667b;
    /* access modifiers changed from: private */
    public final Object c;
    private volatile FutureTask<Pair<String, Boolean>> d;
    /* access modifiers changed from: private */
    public ma e;
    private final e f;
    private WeakReference<Context> g;

    interface GoogleAdvertisingInfo extends IInterface {

        public static abstract class GoogleAdvertisingInfoBinder extends Binder implements GoogleAdvertisingInfo {

            static class GoogleAdvertisingInfoImplementation implements GoogleAdvertisingInfo {

                /* renamed from: a  reason: collision with root package name */
                private IBinder f5671a;

                GoogleAdvertisingInfoImplementation(IBinder iBinder) {
                    this.f5671a = iBinder;
                }

                public IBinder asBinder() {
                    return this.f5671a;
                }

                public String getId() throws RemoteException {
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken(e.b.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                        this.f5671a.transact(1, obtain, obtain2, 0);
                        obtain2.readException();
                        return obtain2.readString();
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }

                public boolean getEnabled(boolean z) throws RemoteException {
                    Parcel obtain = Parcel.obtain();
                    Parcel obtain2 = Parcel.obtain();
                    try {
                        obtain.writeInterfaceToken(e.b.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                        boolean z2 = true;
                        obtain.writeInt(z ? 1 : 0);
                        this.f5671a.transact(2, obtain, obtain2, 0);
                        obtain2.readException();
                        if (obtain2.readInt() == 0) {
                            z2 = false;
                        }
                        return z2;
                    } finally {
                        obtain2.recycle();
                        obtain.recycle();
                    }
                }
            }

            public static GoogleAdvertisingInfo create(IBinder iBinder) {
                if (iBinder == null) {
                    return null;
                }
                IInterface queryLocalInterface = iBinder.queryLocalInterface(e.b.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                if (queryLocalInterface == null || !(queryLocalInterface instanceof GoogleAdvertisingInfo)) {
                    return new GoogleAdvertisingInfoImplementation(iBinder);
                }
                return (GoogleAdvertisingInfo) queryLocalInterface;
            }

            public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
                if (i == 1) {
                    parcel.enforceInterface(e.b.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                    String id = getId();
                    parcel2.writeNoException();
                    parcel2.writeString(id);
                    return true;
                } else if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                } else {
                    parcel.enforceInterface(e.b.ADVERTISING_ID_SERVICE_INTERFACE_TOKEN);
                    boolean enabled = getEnabled(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(enabled ? 1 : 0);
                    return true;
                }
            }
        }

        boolean getEnabled(boolean z) throws RemoteException;

        String getId() throws RemoteException;
    }

    static class a implements e {
        public boolean a(ma maVar) {
            return true;
        }

        a() {
        }
    }

    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final String f5672a;

        /* renamed from: b  reason: collision with root package name */
        public final Boolean f5673b;

        public b(String str, Boolean bool) {
            this.f5672a = str;
            this.f5673b = bool;
        }
    }

    class c implements ServiceConnection {

        /* renamed from: a  reason: collision with root package name */
        private boolean f5674a;

        /* renamed from: b  reason: collision with root package name */
        private final BlockingQueue<IBinder> f5675b;

        public void onServiceDisconnected(ComponentName componentName) {
        }

        private c() {
            this.f5674a = false;
            this.f5675b = new LinkedBlockingQueue();
        }

        /* synthetic */ c(byte b2) {
            this();
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.f5675b.put(iBinder);
            } catch (InterruptedException unused) {
            }
        }

        public IBinder a() throws InterruptedException {
            if (!this.f5674a) {
                this.f5674a = true;
                return this.f5675b.take();
            }
            throw new IllegalStateException();
        }
    }

    static class d {

        /* renamed from: a  reason: collision with root package name */
        static final GoogleAdvertisingIdGetter f5676a = new GoogleAdvertisingIdGetter(new f(), (byte) 0);

        /* renamed from: b  reason: collision with root package name */
        static final GoogleAdvertisingIdGetter f5677b = new GoogleAdvertisingIdGetter(new a(), (byte) 0);
    }

    interface e {
        boolean a(ma maVar);
    }

    static class f implements e {
        f() {
        }

        public boolean a(ma maVar) {
            return maVar != null && maVar.m.f;
        }
    }

    interface g<T> {
        T b(Future<Pair<String, Boolean>> future) throws InterruptedException, ExecutionException;
    }

    /* synthetic */ GoogleAdvertisingIdGetter(e eVar, byte b2) {
        this(eVar);
    }

    private GoogleAdvertisingIdGetter(e eVar) {
        this.f5666a = null;
        this.f5667b = null;
        this.c = new Object();
        this.f = eVar;
        h.a().a(this, r.class, l.a(new k<r>() {
            public void a(r rVar) {
                synchronized (GoogleAdvertisingIdGetter.this.c) {
                    ma unused = GoogleAdvertisingIdGetter.this.e = rVar.f6499b;
                }
            }
        }).a());
    }

    public static GoogleAdvertisingIdGetter a() {
        return d.f5676a;
    }

    public static GoogleAdvertisingIdGetter b() {
        return d.f5677b;
    }

    public void a(Context context) {
        this.g = new WeakReference<>(context.getApplicationContext());
    }

    public void b(final Context context) {
        this.g = new WeakReference<>(context.getApplicationContext());
        if (this.d == null) {
            synchronized (this.c) {
                if (this.d == null && this.f.a(this.e)) {
                    this.d = new FutureTask<>(new Callable<Pair<String, Boolean>>() {
                        /* renamed from: a */
                        public Pair<String, Boolean> call() {
                            Context applicationContext = context.getApplicationContext();
                            if (GoogleAdvertisingIdGetter.e(applicationContext)) {
                                GoogleAdvertisingIdGetter.a(GoogleAdvertisingIdGetter.this, applicationContext);
                            }
                            if (!GoogleAdvertisingIdGetter.this.e()) {
                                GoogleAdvertisingIdGetter.b(GoogleAdvertisingIdGetter.this, applicationContext);
                            }
                            return new Pair<>(GoogleAdvertisingIdGetter.this.f5666a, GoogleAdvertisingIdGetter.this.f5667b);
                        }
                    });
                    ni.a("YMM-UT1", this.d).start();
                }
            }
        }
    }

    private void a(String str) {
        h.a().b((j) new m(str));
        this.f5666a = str;
    }

    private <T> T a(Context context, g<T> gVar) {
        b(context);
        try {
            return gVar.b(this.d);
        } catch (InterruptedException | ExecutionException unused) {
            return null;
        }
    }

    public b c(Context context) {
        if (this.f.a(this.e)) {
            return (b) a(context, new g<b>() {
                /* renamed from: a */
                public b b(Future<Pair<String, Boolean>> future) throws InterruptedException, ExecutionException {
                    Pair pair = future.get();
                    return new b((String) pair.first, (Boolean) pair.second);
                }
            });
        }
        return null;
    }

    public String c() {
        f();
        return this.f5666a;
    }

    public Boolean d() {
        f();
        return this.f5667b;
    }

    private void f() {
        WeakReference<Context> weakReference = this.g;
        Context context = weakReference == null ? null : (Context) weakReference.get();
        if (context != null && !e()) {
            c(context);
        }
    }

    public synchronized boolean e() {
        return (this.f5666a == null || this.f5667b == null) ? false : true;
    }

    /* access modifiers changed from: private */
    public static boolean e(Context context) {
        try {
            return Class.forName("com.google.android.gms.common.GooglePlayServicesUtil").getMethod("isGooglePlayServicesAvailable", new Class[]{Context.class}).invoke(null, new Object[]{context}).equals(0);
        } catch (Exception unused) {
            return false;
        }
    }

    static /* synthetic */ void a(GoogleAdvertisingIdGetter googleAdvertisingIdGetter, Context context) {
        try {
            Object invoke = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient").getMethod("getAdvertisingIdInfo", new Class[]{Context.class}).invoke(null, new Object[]{context});
            Class<?> cls = Class.forName("com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
            String str = (String) cls.getMethod("getId", new Class[0]).invoke(invoke, new Object[0]);
            Boolean bool = (Boolean) cls.getMethod("isLimitAdTrackingEnabled", new Class[0]).invoke(invoke, new Object[0]);
            synchronized (googleAdvertisingIdGetter) {
                googleAdvertisingIdGetter.a(str);
                googleAdvertisingIdGetter.f5667b = bool;
            }
        } catch (Exception unused) {
        }
    }

    static /* synthetic */ void b(GoogleAdvertisingIdGetter googleAdvertisingIdGetter, Context context) {
        c cVar = new c((byte) 0);
        Intent intent = new Intent(e.GOOGLE_PLAY_SERVICES_INTENT);
        intent.setPackage("com.google.android.gms");
        if (context.getPackageManager().resolveService(intent, 0) != null && context.bindService(intent, cVar, 1)) {
            try {
                GoogleAdvertisingInfo create = GoogleAdvertisingInfo.GoogleAdvertisingInfoBinder.create(cVar.a());
                String id = create.getId();
                Boolean valueOf = Boolean.valueOf(create.getEnabled(true));
                synchronized (googleAdvertisingIdGetter) {
                    googleAdvertisingIdGetter.a(id);
                    googleAdvertisingIdGetter.f5667b = valueOf;
                }
                context.unbindService(cVar);
            } catch (Exception unused) {
                context.unbindService(cVar);
            } catch (Throwable th) {
                context.unbindService(cVar);
                throw th;
            }
        }
    }
}
