package com.a.a;

import com.a.a.a.b;
import com.a.a.b.c;
import com.a.a.c.ab;
import com.a.a.c.j;
import com.a.a.c.l;
import io.fabric.sdk.android.i;
import io.fabric.sdk.android.j;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;

public class a extends i<Void> implements j {
    public static final String TAG = "Crashlytics";
    public final b answers;
    public final c beta;
    public final com.a.a.c.j core;
    public final Collection<? extends i> kits;

    /* renamed from: com.a.a.a$a  reason: collision with other inner class name */
    public static class C0029a {

        /* renamed from: a  reason: collision with root package name */
        private b f1651a;

        /* renamed from: b  reason: collision with root package name */
        private c f1652b;
        private com.a.a.c.j c;
        private j.a d;

        @Deprecated
        public final C0029a delay(float f) {
            a().delay(f);
            return this;
        }

        @Deprecated
        public final C0029a listener(l lVar) {
            a().listener(lVar);
            return this;
        }

        @Deprecated
        public final C0029a pinningInfo(ab abVar) {
            a().pinningInfo(abVar);
            return this;
        }

        @Deprecated
        public final C0029a disabled(boolean z) {
            a().disabled(z);
            return this;
        }

        public final C0029a answers(b bVar) {
            if (bVar == null) {
                throw new NullPointerException("Answers Kit must not be null.");
            } else if (this.f1651a == null) {
                this.f1651a = bVar;
                return this;
            } else {
                throw new IllegalStateException("Answers Kit already set.");
            }
        }

        public final C0029a beta(c cVar) {
            if (cVar == null) {
                throw new NullPointerException("Beta Kit must not be null.");
            } else if (this.f1652b == null) {
                this.f1652b = cVar;
                return this;
            } else {
                throw new IllegalStateException("Beta Kit already set.");
            }
        }

        public final C0029a core(com.a.a.c.j jVar) {
            if (jVar == null) {
                throw new NullPointerException("CrashlyticsCore Kit must not be null.");
            } else if (this.c == null) {
                this.c = jVar;
                return this;
            } else {
                throw new IllegalStateException("CrashlyticsCore Kit already set.");
            }
        }

        public final a build() {
            j.a aVar = this.d;
            if (aVar != null) {
                if (this.c == null) {
                    this.c = aVar.build();
                } else {
                    throw new IllegalStateException("Must not use Deprecated methods delay(), disabled(), listener(), pinningInfoProvider() with core()");
                }
            }
            if (this.f1651a == null) {
                this.f1651a = new b();
            }
            if (this.f1652b == null) {
                this.f1652b = new c();
            }
            if (this.c == null) {
                this.c = new com.a.a.c.j();
            }
            return new a(this.f1651a, this.f1652b, this.c);
        }

        private synchronized j.a a() {
            if (this.d == null) {
                this.d = new j.a();
            }
            return this.d;
        }
    }

    public final /* bridge */ /* synthetic */ Object doInBackground() {
        return null;
    }

    public String getIdentifier() {
        return "com.crashlytics.sdk.android:crashlytics";
    }

    public String getVersion() {
        return "2.6.8.dev";
    }

    public a() {
        this(new b(), new c(), new com.a.a.c.j());
    }

    a(b bVar, c cVar, com.a.a.c.j jVar) {
        this.answers = bVar;
        this.beta = cVar;
        this.core = jVar;
        this.kits = Collections.unmodifiableCollection(Arrays.asList(new i[]{bVar, cVar, jVar}));
    }

    public Collection<? extends i> getKits() {
        return this.kits;
    }

    public static a getInstance() {
        return (a) io.fabric.sdk.android.c.getKit(a.class);
    }

    public static ab getPinningInfoProvider() {
        a();
        return getInstance().core.getPinningInfoProvider();
    }

    public static void logException(Throwable th) {
        a();
        getInstance().core.logException(th);
    }

    public static void log(String str) {
        a();
        getInstance().core.log(str);
    }

    public static void log(int i, String str, String str2) {
        a();
        getInstance().core.log(i, str, str2);
    }

    public static void setUserIdentifier(String str) {
        a();
        getInstance().core.setUserIdentifier(str);
    }

    public static void setUserName(String str) {
        a();
        getInstance().core.setUserName(str);
    }

    public static void setUserEmail(String str) {
        a();
        getInstance().core.setUserEmail(str);
    }

    public static void setString(String str, String str2) {
        a();
        getInstance().core.setString(str, str2);
    }

    public static void setBool(String str, boolean z) {
        a();
        getInstance().core.setBool(str, z);
    }

    public static void setDouble(String str, double d) {
        a();
        getInstance().core.setDouble(str, d);
    }

    public static void setFloat(String str, float f) {
        a();
        getInstance().core.setFloat(str, f);
    }

    public static void setInt(String str, int i) {
        a();
        getInstance().core.setInt(str, i);
    }

    public static void setLong(String str, long j) {
        a();
        getInstance().core.setLong(str, j);
    }

    public void crash() {
        this.core.crash();
    }

    public boolean verifyPinning(URL url) {
        return this.core.verifyPinning(url);
    }

    @Deprecated
    public synchronized void setListener(l lVar) {
        this.core.setListener(lVar);
    }

    @Deprecated
    public void setDebugMode(boolean z) {
        io.fabric.sdk.android.c.getLogger().w(TAG, "Use of Crashlytics.setDebugMode is deprecated.");
    }

    @Deprecated
    public boolean getDebugMode() {
        io.fabric.sdk.android.c.getLogger().w(TAG, "Use of Crashlytics.getDebugMode is deprecated.");
        getFabric();
        return io.fabric.sdk.android.c.isDebuggable();
    }

    @Deprecated
    public static void setPinningInfoProvider(ab abVar) {
        io.fabric.sdk.android.c.getLogger().w(TAG, "Use of Crashlytics.setPinningInfoProvider is deprecated");
    }

    private static void a() {
        if (getInstance() == null) {
            throw new IllegalStateException("Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()");
        }
    }
}
