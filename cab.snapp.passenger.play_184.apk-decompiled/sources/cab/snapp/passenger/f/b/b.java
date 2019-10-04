package cab.snapp.passenger.f.b;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import cab.snapp.passenger.f.b.a.e;
import cab.snapp.passenger.f.b.d.c;
import cab.snapp.passenger.f.b.d.d;
import com.adjust.sdk.AdjustConfig;
import com.google.firebase.messaging.RemoteMessage;
import com.webengage.sdk.android.WebEngage;
import java.util.Map;

public final class b extends a {

    /* renamed from: b  reason: collision with root package name */
    private static b f551b;

    /* renamed from: a  reason: collision with root package name */
    protected a f552a;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        boolean f553a = false;

        /* renamed from: b  reason: collision with root package name */
        AdjustConfig f554b;
        Application c;
        String d;
        String e;
        boolean f;
        private Application.ActivityLifecycleCallbacks g;
        private boolean h;
        private boolean i;

        a() {
        }

        public final String getWebEngageKey() {
            return this.d;
        }

        public final String getAppmetricaKey() {
            return this.e;
        }

        public final boolean isInDebugMode() {
            return this.f;
        }

        public final Application.ActivityLifecycleCallbacks getLifeCycleCallback() {
            return this.g;
        }

        public final void setLifeCycleCallback(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            this.g = activityLifecycleCallbacks;
        }

        public final void supportFirebase() {
            this.h = true;
        }

        public final boolean isSupportFirebase() {
            return this.h;
        }

        public final void supportAppmetrica(String str) {
            this.i = true;
            this.e = str;
        }

        public final boolean isSupportAppmetrica() {
            return this.i;
        }
    }

    /* renamed from: cab.snapp.passenger.f.b.b$b  reason: collision with other inner class name */
    public static class C0020b {

        /* renamed from: a  reason: collision with root package name */
        private a f555a = new a();

        public final C0020b with(Application application) {
            this.f555a.c = application;
            return this;
        }

        public final C0020b supportAdjust(AdjustConfig adjustConfig) {
            this.f555a.f554b = adjustConfig;
            return this;
        }

        public final C0020b supportLifeCycleCallback(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
            this.f555a.setLifeCycleCallback(activityLifecycleCallbacks);
            return this;
        }

        public final C0020b supportWebEngage(String str, boolean z) {
            a aVar = this.f555a;
            aVar.d = str;
            aVar.f = z;
            aVar.f553a = true;
            return this;
        }

        public final C0020b supportFirebase() {
            this.f555a.supportFirebase();
            return this;
        }

        public final C0020b supportAppmetrica(String str) {
            this.f555a.supportAppmetrica(str);
            return this;
        }

        public final a build() {
            if (this.f555a.c != null) {
                return this.f555a;
            }
            throw new IllegalStateException("Please specify the application with <ConfigBuilder.with()> method");
        }
    }

    private b() {
    }

    public static b getInstance() {
        if (f551b == null) {
            f551b = new b();
        }
        return f551b;
    }

    public final b init(a aVar) {
        this.f552a = aVar;
        if (aVar.f553a) {
            addProvider("web_engage", new d().init(aVar.c, aVar.getWebEngageKey(), aVar.f));
        }
        if (aVar.f554b != null) {
            addProvider("adjust", new cab.snapp.passenger.f.b.d.a().init(aVar.c, aVar.f554b));
        }
        if (aVar.getLifeCycleCallback() != null && Build.VERSION.SDK_INT >= 14) {
            aVar.c.registerActivityLifecycleCallbacks(aVar.getLifeCycleCallback());
        }
        if (aVar.isSupportFirebase()) {
            addProvider("firebase", new c().init(aVar.c));
        }
        if (aVar.isSupportAppmetrica()) {
            addProvider("appmetrica", new cab.snapp.passenger.f.b.d.b().init(aVar.c, aVar.e));
        }
        return this;
    }

    public final void sendAdjustEvent(String str, Map<String, String> map) {
        sendEvent("adjust", new cab.snapp.passenger.f.b.a.a(str, map));
    }

    public final void sendWebEngageEvent(e eVar) {
        sendEvent("web_engage", eVar);
    }

    public final void sendWebEngageEvent(String str, Map<String, Object> map) {
        sendWebEngageEvent(new e(str, map));
    }

    public final void sendFirebaseEvent(String str, Bundle bundle) {
        sendEvent("firebase", new cab.snapp.passenger.f.b.a.d(str, bundle));
    }

    public final void sendAppmetricaEvent(String str, Map<String, Object> map) {
        sendEvent("appmetrica", new cab.snapp.passenger.f.b.a.b(str, map));
    }

    public final void sendAppmetricaEvent(String str, org.a.c cVar) {
        sendEvent("appmetrica", new cab.snapp.passenger.f.b.a.c(str, cVar));
    }

    public final void changeWebengageUser(String str) {
        cab.snapp.passenger.f.b.c.a provider = getProvider("web_engage");
        if (provider instanceof d) {
            ((d) provider).changeUser(str);
        }
    }

    public final void logoutWebengageUser() {
        cab.snapp.passenger.f.b.c.a provider = getProvider("web_engage");
        if (provider instanceof d) {
            ((d) provider).logOutUser();
        }
    }

    public final void setWebengageUserCustomAttribute(String str, String str2) {
        cab.snapp.passenger.f.b.c.a provider = getProvider("web_engage");
        if (provider instanceof d) {
            ((d) provider).setUserCustomAttribute(str, str2);
        }
    }

    public final void setWebengageUserCommonAttributes(String str, String str2, String str3, String str4) {
        cab.snapp.passenger.f.b.c.a provider = getProvider("web_engage");
        if (provider instanceof d) {
            ((d) provider).setUserCommonAttributes(str, str2, str3, str4);
        }
    }

    public final void sendUserProfileToAppmetrica(String str, String str2, String str3) {
        cab.snapp.passenger.f.b.c.a provider = getProvider("appmetrica");
        if (provider instanceof cab.snapp.passenger.f.b.d.b) {
            ((cab.snapp.passenger.f.b.d.b) provider).sendUserProfile(str, str2, str3);
        }
    }

    public final boolean setIdForInAppMessage(String str) {
        try {
            WebEngage.get().setRegistrationID(str);
            return true;
        } catch (Exception e) {
            com.a.a.a.logException(e);
            return false;
        }
    }

    public final void onPushReceived(RemoteMessage remoteMessage) {
        Map<String, String> data = remoteMessage.getData();
        if (data != null && data.containsKey("source") && "webengage".equals(data.get("source"))) {
            WebEngage.get().receive(data);
        }
    }

    public final boolean setFirebaseScreen(Activity activity, String str) {
        cab.snapp.passenger.f.b.c.a provider = getProvider("firebase");
        if (provider == null || !(provider instanceof c)) {
            return false;
        }
        return ((c) provider).setScreen(activity, str);
    }

    public final void release() {
        release();
        this.f552a = null;
        f551b = null;
    }
}
