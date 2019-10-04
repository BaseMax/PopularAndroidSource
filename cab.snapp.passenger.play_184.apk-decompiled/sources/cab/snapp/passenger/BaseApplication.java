package cab.snapp.passenger;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.media.RingtoneManager;
import androidx.core.app.NotificationCompat;
import androidx.multidex.MultiDexApplication;
import cab.snapp.notificationmanager.a.a;
import cab.snapp.passenger.activities.root.AuthenticatorActivity;
import cab.snapp.passenger.data_access_layer.network.b;
import cab.snapp.passenger.e.b.d;
import cab.snapp.passenger.f.g;
import cab.snapp.passenger.services.c;
import com.a.a.a;
import com.a.a.c.j;
import com.raizlabs.android.dbflow.config.FlowManager;
import com.raizlabs.android.dbflow.config.e;
import com.webengage.sdk.android.WebEngage;
import javax.inject.Inject;

public class BaseApplication extends MultiDexApplication {
    private static Context c;
    private static a d;
    public static a notificationManager;
    public static c ridePushRenderer;
    @Inject

    /* renamed from: a  reason: collision with root package name */
    cab.snapp.b.a f343a;
    @Inject

    /* renamed from: b  reason: collision with root package name */
    b f344b;
    private cab.snapp.passenger.e.a.a e;
    private cab.snapp.passenger.e.a.c f;
    private boolean g = false;

    public static void setupNotificationManager(Context context) {
        notificationManager = new a(context, RingtoneManager.getDefaultUri(2), null);
    }

    public static Activity getTopActivity() {
        a aVar = d;
        if (aVar != null) {
            return aVar.getActivity();
        }
        return null;
    }

    public static Context getContext() {
        a aVar = d;
        return (aVar == null || aVar.getActivity() == null) ? c : d.getActivity();
    }

    public static BaseApplication get(Context context) {
        return (BaseApplication) context.getApplicationContext();
    }

    public void onCreate() {
        super.onCreate();
        FlowManager.init(new e.a(this).build());
        io.fabric.sdk.android.c.with(this, new a.C0029a().core(new j.a().disabled(false).build()).build());
        getDataManagerComponent().inject(this);
        com.google.firebase.b.initializeApp(this);
        c = getApplicationContext();
        if (notificationManager == null) {
            setupNotificationManager(this);
        }
        g.setSharedPreferencesManager(this.f343a);
        g.setNetworkModule(this.f344b);
        g.changeAppLocale(this, g.getSavedLocale());
        d = new a();
        registerActivityLifecycleCallbacks(d);
        initRideNotificationPush();
    }

    public void onTerminate() {
        super.onTerminate();
        releaseEverything();
    }

    public void onLowMemory() {
        super.onLowMemory();
        this.g = true;
    }

    public boolean shouldRestartApp() {
        return this.g;
    }

    public void initRideNotificationPush() {
        if (ridePushRenderer == null) {
            c cVar = new c();
            ridePushRenderer = cVar;
            WebEngage.registerCustomPushRenderCallback(cVar);
            WebEngage.registerCustomPushRerenderCallback(ridePushRenderer);
        }
    }

    private void a() {
        this.e = cab.snapp.passenger.e.a.b.builder().appModule(new cab.snapp.passenger.e.b.a()).context(this).authenticatorActivityClass(AuthenticatorActivity.class).build();
    }

    public cab.snapp.passenger.e.a.a getAppComponent() {
        if (this.e == null) {
            a();
        }
        return this.e;
    }

    public cab.snapp.passenger.e.a.c getDataManagerComponent() {
        if (this.f == null) {
            if (this.e == null) {
                a();
            }
            this.f = this.e.getDataManagerComponent(new d());
        }
        return this.f;
    }

    public void releaseEverything() {
        notificationManager = null;
        cab.snapp.authenticator.c.release();
        g.release();
        this.f = null;
        this.e = null;
        ridePushRenderer = null;
    }

    public static void doRestart() {
        Context context = c;
        if (context != null) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager != null) {
                    Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(context.getPackageName());
                    if (launchIntentForPackage != null) {
                        launchIntentForPackage.addFlags(67108864);
                        PendingIntent activity = PendingIntent.getActivity(context, 223344, launchIntentForPackage, 268435456);
                        AlarmManager alarmManager = (AlarmManager) context.getSystemService(NotificationCompat.CATEGORY_ALARM);
                        if (alarmManager != null) {
                            alarmManager.set(1, System.currentTimeMillis() + 100, activity);
                        }
                        System.exit(0);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }
}
