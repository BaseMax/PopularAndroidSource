package com.webengage.sdk.android;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Bundle;
import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.webengage.sdk.android.PushChannelConfiguration;
import com.webengage.sdk.android.WebEngageConfig;
import com.webengage.sdk.android.actions.database.ReportingStrategy;
import com.webengage.sdk.android.actions.render.CallToAction;
import com.webengage.sdk.android.actions.render.PushNotificationData;
import com.webengage.sdk.android.actions.rules.RuleExecutor;
import com.webengage.sdk.android.callbacks.CustomPushRender;
import com.webengage.sdk.android.callbacks.CustomPushRerender;
import com.webengage.sdk.android.callbacks.InAppNotificationCallbacks;
import com.webengage.sdk.android.callbacks.LifeCycleCallbacks;
import com.webengage.sdk.android.callbacks.PushNotificationCallbacks;
import com.webengage.sdk.android.callbacks.StateChangeCallbacks;
import com.webengage.sdk.android.q;
import com.webengage.sdk.android.utils.h;
import com.webengage.sdk.android.utils.k;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import org.a.b;
import org.a.c;

public class WebEngage extends AbstractWebEngage {

    /* renamed from: a  reason: collision with root package name */
    private static Context f4913a;

    /* renamed from: b  reason: collision with root package name */
    private static j f4914b;
    private static WebEngageConfig c;
    private static volatile AbstractWebEngage d;
    private static y e;
    private static final Object f = new Object();
    private static boolean g = false;

    /* renamed from: com.webengage.sdk.android.WebEngage$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5323a = new int[LocationTrackingStrategy.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                com.webengage.sdk.android.LocationTrackingStrategy[] r0 = com.webengage.sdk.android.LocationTrackingStrategy.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5323a = r0
                int[] r0 = f5323a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.LocationTrackingStrategy r1 = com.webengage.sdk.android.LocationTrackingStrategy.ACCURACY_BEST     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5323a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.LocationTrackingStrategy r1 = com.webengage.sdk.android.LocationTrackingStrategy.ACCURACY_CITY     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f5323a     // Catch:{ NoSuchFieldError -> 0x002a }
                com.webengage.sdk.android.LocationTrackingStrategy r1 = com.webengage.sdk.android.LocationTrackingStrategy.ACCURACY_COUNTRY     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f5323a     // Catch:{ NoSuchFieldError -> 0x0035 }
                com.webengage.sdk.android.LocationTrackingStrategy r1 = com.webengage.sdk.android.LocationTrackingStrategy.DISABLED     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.WebEngage.AnonymousClass1.<clinit>():void");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0105  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0116  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0129  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x015f  */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x01bb A[Catch:{ Exception -> 0x01d2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x01cc A[Catch:{ Exception -> 0x01d2 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private WebEngage(android.content.Context r10) {
        /*
            r9 = this;
            r9.<init>()
            com.webengage.sdk.android.actions.database.DataHolder r10 = com.webengage.sdk.android.actions.database.DataHolder.get()
            r0 = 1
            r10.c((boolean) r0)
            com.webengage.sdk.android.t r10 = new com.webengage.sdk.android.t
            r10.<init>()
            com.webengage.sdk.android.utils.a.d.a((com.webengage.sdk.android.utils.a.c) r10)
            android.content.Context r10 = f4913a
            com.webengage.sdk.android.ad r10 = com.webengage.sdk.android.ad.a((android.content.Context) r10)
            com.webengage.sdk.android.ah r1 = new com.webengage.sdk.android.ah
            android.content.Context r2 = f4913a
            r1.<init>(r2)
            r10.a((com.webengage.sdk.android.ag) r1)
            com.webengage.sdk.android.actions.database.DataHolder r10 = com.webengage.sdk.android.actions.database.DataHolder.get()
            com.webengage.sdk.android.Analytics r1 = r9.analytics()
            com.webengage.sdk.android.f r1 = r1.c()
            r10.a((com.webengage.sdk.android.actions.database.n) r1)
            com.webengage.sdk.android.actions.database.DataHolder r10 = com.webengage.sdk.android.actions.database.DataHolder.get()
            android.content.Context r1 = f4913a
            com.webengage.sdk.android.actions.database.y r1 = com.webengage.sdk.android.actions.database.y.a((android.content.Context) r1)
            r10.a((com.webengage.sdk.android.actions.database.n) r1)
            com.webengage.sdk.android.Analytics r10 = r9.analytics()
            com.webengage.sdk.android.f r10 = r10.c()
            java.lang.String r10 = r10.e()
            boolean r1 = r10.isEmpty()
            java.lang.String r2 = "|"
            if (r1 == 0) goto L_0x007a
            android.content.Context r10 = f4913a
            java.lang.String r10 = com.webengage.sdk.android.utils.k.c((android.content.Context) r10)
            com.webengage.sdk.android.WebEngageConfig r0 = c
            boolean r0 = r0.getAlternateInterfaceIdFlag()
            if (r0 == 0) goto L_0x009e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
        L_0x0066:
            android.content.Context r1 = f4913a
            java.lang.String r1 = r1.getPackageName()
            r0.append(r1)
            r0.append(r2)
            r0.append(r10)
            java.lang.String r10 = r0.toString()
            goto L_0x009e
        L_0x007a:
            r1 = 124(0x7c, float:1.74E-43)
            int r1 = r10.indexOf(r1)
            r3 = -1
            if (r1 != r3) goto L_0x0091
            com.webengage.sdk.android.WebEngageConfig r0 = c
            boolean r0 = r0.getAlternateInterfaceIdFlag()
            if (r0 == 0) goto L_0x009e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            goto L_0x0066
        L_0x0091:
            com.webengage.sdk.android.WebEngageConfig r2 = c
            boolean r2 = r2.getAlternateInterfaceIdFlag()
            if (r2 != 0) goto L_0x009e
            int r1 = r1 + r0
            java.lang.String r10 = r10.substring(r1)
        L_0x009e:
            android.content.Context r0 = f4913a
            com.webengage.sdk.android.actions.database.i r0 = com.webengage.sdk.android.actions.database.i.a((android.content.Context) r0)
            r0.b()
            com.webengage.sdk.android.Analytics r0 = r9.analytics()
            com.webengage.sdk.android.f r0 = r0.c()
            r0.d(r10)
            com.webengage.sdk.android.Analytics r10 = r9.analytics()
            com.webengage.sdk.android.f r10 = r10.c()
            java.lang.String r10 = r10.i()
            boolean r10 = r10.isEmpty()
            if (r10 == 0) goto L_0x00cd
            com.webengage.sdk.android.User r10 = r9.user()
            com.webengage.sdk.android.ak r10 = (com.webengage.sdk.android.ak) r10
            r10.a()
        L_0x00cd:
            com.webengage.sdk.android.Analytics r10 = r9.analytics()
            com.webengage.sdk.android.f r10 = r10.c()
            java.lang.String r10 = r10.g()
            boolean r10 = r10.isEmpty()
            if (r10 == 0) goto L_0x00ea
            com.webengage.sdk.android.Analytics r10 = r9.analytics()
            com.webengage.sdk.android.aa r10 = r10.a()
            r10.b()
        L_0x00ea:
            android.content.Context r10 = f4913a
            com.webengage.sdk.android.i.a((android.content.Context) r10)
            com.webengage.sdk.android.af r10 = com.webengage.sdk.android.af.BOOT_UP
            android.content.Context r0 = f4913a
            r1 = 0
            android.content.Intent r10 = com.webengage.sdk.android.n.a(r10, r1, r0)
            android.content.Context r0 = f4913a
            startService(r10, r0)
            com.webengage.sdk.android.WebEngageConfig r10 = c
            boolean r10 = r10.g()
            if (r10 == 0) goto L_0x010e
            com.webengage.sdk.android.WebEngageConfig r10 = c
            com.webengage.sdk.android.actions.database.ReportingStrategy r10 = r10.getEventReportingStrategy()
            r9.setEventReportingStrategy(r10)
        L_0x010e:
            com.webengage.sdk.android.WebEngageConfig r10 = c
            boolean r10 = r10.a()
            if (r10 == 0) goto L_0x0129
            com.webengage.sdk.android.WebEngageConfig r10 = c
            boolean r10 = r10.b()
            if (r10 == 0) goto L_0x011f
            goto L_0x0131
        L_0x011f:
            com.webengage.sdk.android.WebEngageConfig r10 = c
            boolean r10 = r10.getLocationTrackingFlag()
            r9.setLocationTracking(r10)
            goto L_0x014f
        L_0x0129:
            com.webengage.sdk.android.WebEngageConfig r10 = c
            boolean r10 = r10.b()
            if (r10 == 0) goto L_0x013b
        L_0x0131:
            com.webengage.sdk.android.WebEngageConfig r10 = c
            com.webengage.sdk.android.LocationTrackingStrategy r10 = r10.getLocationTrackingStrategy()
            r9.setLocationTrackingStrategy(r10)
            goto L_0x014f
        L_0x013b:
            android.content.Context r10 = f4913a
            com.webengage.sdk.android.o r2 = com.webengage.sdk.android.p.a(r10)
            r3 = 10800000(0xa4cb80, double:5.335909E-317)
            r5 = 3600000(0x36ee80, double:1.7786363E-317)
            r7 = 1184645120(0x469c4000, float:20000.0)
            r8 = 104(0x68, float:1.46E-43)
            r2.a(r3, r5, r7, r8)
        L_0x014f:
            com.webengage.sdk.android.Analytics r10 = r9.analytics()
            com.webengage.sdk.android.f r10 = r10.c()
            boolean r10 = r10.f()
            java.lang.String r0 = "WebEngage"
            if (r10 == 0) goto L_0x0186
            java.lang.String r10 = "App was crashed last time, LOL"
            com.webengage.sdk.android.Logger.e(r0, r10)
            com.webengage.sdk.android.Analytics r10 = r9.analytics()
            com.webengage.sdk.android.f r10 = r10.c()
            java.lang.String r2 = "com.webengage.static.app_crashed"
            r10.g(r2)
            com.webengage.sdk.android.af r10 = com.webengage.sdk.android.af.EVENT
            android.content.Context r2 = f4913a
            java.lang.String r3 = "app_crashed"
            com.webengage.sdk.android.l r1 = com.webengage.sdk.android.k.a(r3, r1, r1, r1, r2)
            android.content.Context r2 = f4913a
            android.content.Intent r10 = com.webengage.sdk.android.n.a(r10, r1, r2)
            android.content.Context r1 = f4913a
            startService(r10, r1)
        L_0x0186:
            com.webengage.sdk.android.aq r10 = new com.webengage.sdk.android.aq     // Catch:{ Exception -> 0x019d }
            java.lang.Thread$UncaughtExceptionHandler r1 = java.lang.Thread.getDefaultUncaughtExceptionHandler()     // Catch:{ Exception -> 0x019d }
            android.content.Context r2 = f4913a     // Catch:{ Exception -> 0x019d }
            com.webengage.sdk.android.Analytics r3 = r9.analytics()     // Catch:{ Exception -> 0x019d }
            com.webengage.sdk.android.f r3 = r3.c()     // Catch:{ Exception -> 0x019d }
            r10.<init>(r1, r2, r3)     // Catch:{ Exception -> 0x019d }
            java.lang.Thread.setDefaultUncaughtExceptionHandler(r10)     // Catch:{ Exception -> 0x019d }
            goto L_0x01b3
        L_0x019d:
            r10 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Exception occurred during registering exception handler: "
            r1.<init>(r2)
            java.lang.String r10 = r10.toString()
            r1.append(r10)
            java.lang.String r10 = r1.toString()
            com.webengage.sdk.android.Logger.e(r0, r10)
        L_0x01b3:
            com.webengage.sdk.android.WebEngageConfig r10 = c     // Catch:{ Exception -> 0x01d2 }
            com.webengage.sdk.android.PushChannelConfiguration r10 = r10.getDefaultPushChannelConfiguration()     // Catch:{ Exception -> 0x01d2 }
            if (r10 == 0) goto L_0x01cc
            com.webengage.sdk.android.WebEngageConfig r10 = c     // Catch:{ Exception -> 0x01d2 }
            com.webengage.sdk.android.PushChannelConfiguration r10 = r10.getDefaultPushChannelConfiguration()     // Catch:{ Exception -> 0x01d2 }
            android.content.Context r1 = f4913a     // Catch:{ Exception -> 0x01d2 }
            com.webengage.sdk.android.v.a((com.webengage.sdk.android.PushChannelConfiguration) r10, (android.content.Context) r1)     // Catch:{ Exception -> 0x01d2 }
            java.lang.String r10 = "Default push channel registered"
            com.webengage.sdk.android.Logger.d(r0, r10)     // Catch:{ Exception -> 0x01d2 }
            goto L_0x01e8
        L_0x01cc:
            java.lang.String r10 = "Not registering for default push channel"
            com.webengage.sdk.android.Logger.w(r0, r10)     // Catch:{ Exception -> 0x01d2 }
            goto L_0x01e8
        L_0x01d2:
            r10 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Error during channel registration: "
            r1.<init>(r2)
            java.lang.String r10 = r10.toString()
            r1.append(r10)
            java.lang.String r10 = r1.toString()
            com.webengage.sdk.android.Logger.e(r0, r10)
        L_0x01e8:
            java.lang.String r10 = "WebEngage Successfully Initialized"
            com.webengage.sdk.android.Logger.d(r0, r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r1 = "Current interface_id: "
            r10.<init>(r1)
            com.webengage.sdk.android.Analytics r1 = r9.analytics()
            com.webengage.sdk.android.f r1 = r1.c()
            java.lang.String r1 = r1.e()
            r10.append(r1)
            java.lang.String r10 = r10.toString()
            com.webengage.sdk.android.Logger.d(r0, r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r1 = "Current luid: "
            r10.<init>(r1)
            com.webengage.sdk.android.Analytics r1 = r9.analytics()
            com.webengage.sdk.android.f r1 = r1.c()
            java.lang.String r1 = r1.i()
            r10.append(r1)
            java.lang.String r10 = r10.toString()
            com.webengage.sdk.android.Logger.d(r0, r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r1 = "Current cuid: "
            r10.<init>(r1)
            com.webengage.sdk.android.Analytics r1 = r9.analytics()
            com.webengage.sdk.android.f r1 = r1.c()
            java.lang.String r1 = r1.h()
            r10.append(r1)
            java.lang.String r10 = r10.toString()
            com.webengage.sdk.android.Logger.d(r0, r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r1 = "Current token: "
            r10.<init>(r1)
            com.webengage.sdk.android.Analytics r1 = r9.analytics()
            com.webengage.sdk.android.f r1 = r1.c()
            java.lang.String r1 = r1.c()
            r10.append(r1)
            java.lang.String r10 = r10.toString()
            com.webengage.sdk.android.Logger.d(r0, r10)
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r1 = "Current WebEngage Configuration: "
            r10.<init>(r1)
            com.webengage.sdk.android.WebEngageConfig r1 = c
            java.lang.String r1 = r1.toString()
            r10.append(r1)
            java.lang.String r10 = r10.toString()
            com.webengage.sdk.android.Logger.d(r0, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.WebEngage.<init>(android.content.Context):void");
    }

    static WebEngageConfig a(Context context) {
        WebEngageConfig.Builder builder = new WebEngageConfig.Builder();
        Bundle a2 = k.a(context);
        if (a2 != null) {
            if (a2.containsKey("com.webengage.sdk.android.environment")) {
                builder.b(a2.getString("com.webengage.sdk.android.environment"));
            }
            if (a2.containsKey("com.webengage.sdk.android.alternate_interface_id")) {
                builder.a(a2.getBoolean("com.webengage.sdk.android.alternate_interface_id"));
            }
            if (a2.containsKey("com.webengage.sdk.android.small_icon")) {
                builder.setPushSmallIcon(a2.getInt("com.webengage.sdk.android.small_icon"));
            }
            if (a2.containsKey("com.webengage.sdk.android.large_icon")) {
                builder.setPushLargeIcon(a2.getInt("com.webengage.sdk.android.large_icon"));
            }
            if (a2.containsKey("com.webengage.sdk.android.accent_color")) {
                builder.setPushAccentColor(a2.getInt("com.webengage.sdk.android.accent_color"));
            }
            int i = 3;
            String string = a2.containsKey("com.webengage.sdk.android.push.channel.name") ? a2.getString("com.webengage.sdk.android.push.channel.name") : "Marketing";
            if (a2.containsKey("com.webengage.sdk.android.push.channel.importance")) {
                i = a2.getInt("com.webengage.sdk.android.push.channel.importance");
            }
            PushChannelConfiguration.Builder builder2 = new PushChannelConfiguration.Builder();
            builder2.setNotificationChannelName(string);
            builder2.setNotificationChannelImportance(i);
            if (a2.containsKey("com.webengage.sdk.android.push.channel.description")) {
                builder2.setNotificationChannelDescription(a2.getString("com.webengage.sdk.android.push.channel.description"));
            }
            if (a2.containsKey("com.webengage.sdk.android.push.channel.group")) {
                builder2.setNotificationChannelGroup(a2.getString("com.webengage.sdk.android.push.channel.group"));
            }
            if (a2.containsKey("com.webengage.sdk.android.push.channel.light_color")) {
                builder2.setNotificationChannelLightColor(a2.getInt("com.webengage.sdk.android.push.channel.light_color"));
            }
            if (a2.containsKey("com.webengage.sdk.android.push.channel.lock_screen_visibility")) {
                builder2.setNotificationChannelLockScreenVisibility(a2.getInt("com.webengage.sdk.android.push.channel.lock_screen_visibility"));
            }
            if (a2.containsKey("com.webengage.sdk.android.push.channel.show_badge")) {
                builder2.setNotificationChannelShowBadge(a2.getBoolean("com.webengage.sdk.android.push.channel.show_badge"));
            }
            if (a2.containsKey("com.webengage.sdk.android.push.channel.sound")) {
                builder2.setNotificationChannelSound(a2.getString("com.webengage.sdk.android.push.channel.sound"));
            }
            if (a2.containsKey("com.webengage.sdk.android.push.channel.vibration")) {
                builder2.setNotificationChannelVibration(a2.getBoolean("com.webengage.sdk.android.push.channel.vibration"));
            }
            PushChannelConfiguration build = builder2.build();
            if (build != null) {
                builder.setDefaultPushChannelConfiguration(build);
            }
            if (a2.containsKey("com.webengage.sdk.android.location_tracking")) {
                builder.setLocationTracking(a2.getBoolean("com.webengage.sdk.android.location_tracking"));
            }
            if (a2.containsKey("com.webengage.sdk.android.auto_gcm_registration")) {
                builder.setAutoGCMRegistrationFlag(a2.getBoolean("com.webengage.sdk.android.auto_gcm_registration"));
            }
            if (a2.containsKey("com.webengage.sdk.android.project_number")) {
                Object obj = a2.get("com.webengage.sdk.android.project_number");
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (str.length() > 0) {
                        builder.setGCMProjectNumber(str.substring(1));
                    }
                }
            }
            if (a2.containsKey("com.webengage.sdk.android.key")) {
                Object obj2 = a2.get("com.webengage.sdk.android.key");
                if (obj2 != null) {
                    builder.setWebEngageKey(obj2.toString());
                }
            }
            if (a2.containsKey("com.webengage.sdk.android.debug")) {
                builder.setDebugMode(a2.getBoolean("com.webengage.sdk.android.debug"));
            }
        }
        return builder.build();
    }

    /* JADX WARNING: Removed duplicated region for block: B:108:0x01fc  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:16:0x0037  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003f  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0050  */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0055  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0074  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0086  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x008b  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0098  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x009d  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x00af  */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x00bc  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00c1  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x00ce  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x00d3  */
    /* JADX WARNING: Removed duplicated region for block: B:55:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x00f2  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x00f7  */
    /* JADX WARNING: Removed duplicated region for block: B:63:0x0104  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0109  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0116  */
    /* JADX WARNING: Removed duplicated region for block: B:68:0x011b  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0128  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected static com.webengage.sdk.android.WebEngageConfig a(com.webengage.sdk.android.WebEngageConfig r2, com.webengage.sdk.android.WebEngageConfig r3, com.webengage.sdk.android.j r4) {
        /*
            if (r3 != 0) goto L_0x0003
            return r2
        L_0x0003:
            if (r2 != 0) goto L_0x0006
            return r3
        L_0x0006:
            com.webengage.sdk.android.WebEngageConfig$Builder r0 = new com.webengage.sdk.android.WebEngageConfig$Builder
            r0.<init>(r4)
            boolean r4 = r3.a()
            if (r4 == 0) goto L_0x0019
            boolean r4 = r3.getLocationTrackingFlag()
        L_0x0015:
            r0.setLocationTracking(r4)
            goto L_0x0024
        L_0x0019:
            boolean r4 = r2.a()
            if (r4 == 0) goto L_0x0024
            boolean r4 = r2.getLocationTrackingFlag()
            goto L_0x0015
        L_0x0024:
            boolean r4 = r3.b()
            if (r4 == 0) goto L_0x0031
            com.webengage.sdk.android.LocationTrackingStrategy r4 = r3.getLocationTrackingStrategy()
            r0.setLocationTrackingStrategy(r4)
        L_0x0031:
            boolean r4 = r3.g()
            if (r4 == 0) goto L_0x003f
            com.webengage.sdk.android.actions.database.ReportingStrategy r4 = r3.getEventReportingStrategy()
        L_0x003b:
            r0.setEventReportingStrategy(r4)
            goto L_0x004a
        L_0x003f:
            boolean r4 = r2.g()
            if (r4 == 0) goto L_0x004a
            com.webengage.sdk.android.actions.database.ReportingStrategy r4 = r2.getEventReportingStrategy()
            goto L_0x003b
        L_0x004a:
            boolean r4 = r3.c()
            if (r4 == 0) goto L_0x0055
            boolean r4 = r3.getAutoGCMRegistrationFlag()
            goto L_0x0059
        L_0x0055:
            boolean r4 = r2.getAutoGCMRegistrationFlag()
        L_0x0059:
            r0.setAutoGCMRegistrationFlag(r4)
            boolean r4 = r3.d()
            if (r4 == 0) goto L_0x0067
            java.lang.String r4 = r3.getWebEngageKey()
            goto L_0x006b
        L_0x0067:
            java.lang.String r4 = r2.getWebEngageKey()
        L_0x006b:
            r0.setWebEngageKey(r4)
            boolean r4 = r3.e()
            if (r4 == 0) goto L_0x0079
            java.lang.String r4 = r3.getGcmProjectNumber()
            goto L_0x007d
        L_0x0079:
            java.lang.String r4 = r2.getGcmProjectNumber()
        L_0x007d:
            r0.setGCMProjectNumber(r4)
            boolean r4 = r3.f()
            if (r4 == 0) goto L_0x008b
            java.lang.String r4 = r3.getWebEngageVersion()
            goto L_0x008f
        L_0x008b:
            java.lang.String r4 = r2.getWebEngageVersion()
        L_0x008f:
            r0.a((java.lang.String) r4)
            boolean r4 = r3.h()
            if (r4 == 0) goto L_0x009d
            boolean r4 = r3.getDebugMode()
            goto L_0x00a1
        L_0x009d:
            boolean r4 = r2.getDebugMode()
        L_0x00a1:
            r0.setDebugMode(r4)
            boolean r4 = r3.i()
            if (r4 == 0) goto L_0x00af
            boolean r4 = r3.getEveryActivityIsScreen()
            goto L_0x00b3
        L_0x00af:
            boolean r4 = r2.getEveryActivityIsScreen()
        L_0x00b3:
            r0.setEveryActivityIsScreen(r4)
            boolean r4 = r3.j()
            if (r4 == 0) goto L_0x00c1
            java.lang.String r4 = r3.getEnvironment()
            goto L_0x00c5
        L_0x00c1:
            java.lang.String r4 = r2.getEnvironment()
        L_0x00c5:
            r0.b((java.lang.String) r4)
            boolean r4 = r3.k()
            if (r4 == 0) goto L_0x00d3
            boolean r4 = r3.getAlternateInterfaceIdFlag()
            goto L_0x00d7
        L_0x00d3:
            boolean r4 = r2.getAlternateInterfaceIdFlag()
        L_0x00d7:
            r0.a((boolean) r4)
            boolean r4 = r3.l()
            if (r4 == 0) goto L_0x00e5
            int r4 = r3.getPushSmallIcon()
            goto L_0x00e9
        L_0x00e5:
            int r4 = r2.getPushSmallIcon()
        L_0x00e9:
            r0.setPushSmallIcon(r4)
            boolean r4 = r3.m()
            if (r4 == 0) goto L_0x00f7
            int r4 = r3.getPushLargeIcon()
            goto L_0x00fb
        L_0x00f7:
            int r4 = r2.getPushLargeIcon()
        L_0x00fb:
            r0.setPushLargeIcon(r4)
            boolean r4 = r3.n()
            if (r4 == 0) goto L_0x0109
            int r4 = r3.getAccentColor()
            goto L_0x010d
        L_0x0109:
            int r4 = r2.getAccentColor()
        L_0x010d:
            r0.setPushAccentColor(r4)
            boolean r4 = r3.o()
            if (r4 == 0) goto L_0x011b
            boolean r4 = r3.getFilterCustomEvents()
            goto L_0x011f
        L_0x011b:
            boolean r4 = r2.getFilterCustomEvents()
        L_0x011f:
            r0.b((boolean) r4)
            boolean r4 = r3.p()
            if (r4 == 0) goto L_0x01fc
            com.webengage.sdk.android.PushChannelConfiguration r3 = r3.getDefaultPushChannelConfiguration()
            com.webengage.sdk.android.PushChannelConfiguration$Builder r4 = new com.webengage.sdk.android.PushChannelConfiguration$Builder
            r4.<init>()
            boolean r1 = r3.isNotificationChannelNameSet()
            if (r1 == 0) goto L_0x013c
            java.lang.String r1 = r3.getNotificationChannelName()
            goto L_0x0144
        L_0x013c:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            java.lang.String r1 = r1.getNotificationChannelName()
        L_0x0144:
            r4.setNotificationChannelName(r1)
            boolean r1 = r3.isNotificationChannelImportanceSet()
            if (r1 == 0) goto L_0x0152
            int r1 = r3.getNotificationChannelImportance()
            goto L_0x015a
        L_0x0152:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            int r1 = r1.getNotificationChannelImportance()
        L_0x015a:
            r4.setNotificationChannelImportance(r1)
            boolean r1 = r3.isNotificationChannelDescriptionSet()
            if (r1 == 0) goto L_0x0168
            java.lang.String r1 = r3.getNotificationChannelDescription()
            goto L_0x0170
        L_0x0168:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            java.lang.String r1 = r1.getNotificationChannelDescription()
        L_0x0170:
            r4.setNotificationChannelDescription(r1)
            boolean r1 = r3.isNotificationChannelGroupSet()
            if (r1 == 0) goto L_0x017e
            java.lang.String r1 = r3.getNotificationChannelGroup()
            goto L_0x0186
        L_0x017e:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            java.lang.String r1 = r1.getNotificationChannelGroup()
        L_0x0186:
            r4.setNotificationChannelGroup(r1)
            boolean r1 = r3.isNotificationLightColorSet()
            if (r1 == 0) goto L_0x0194
            int r1 = r3.getNotificationChannelLightColor()
            goto L_0x019c
        L_0x0194:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            int r1 = r1.getNotificationChannelLightColor()
        L_0x019c:
            r4.setNotificationChannelLightColor(r1)
            boolean r1 = r3.isNotificationLockScreenVisibilitySet()
            if (r1 == 0) goto L_0x01aa
            int r1 = r3.getNotificationChannelLockScreenVisibility()
            goto L_0x01b2
        L_0x01aa:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            int r1 = r1.getNotificationChannelLockScreenVisibility()
        L_0x01b2:
            r4.setNotificationChannelLockScreenVisibility(r1)
            boolean r1 = r3.isNotificationChannelShowBadgeSet()
            if (r1 == 0) goto L_0x01c0
            boolean r1 = r3.isNotificationChannelShowBadge()
            goto L_0x01c8
        L_0x01c0:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            boolean r1 = r1.isNotificationChannelShowBadge()
        L_0x01c8:
            r4.setNotificationChannelShowBadge(r1)
            boolean r1 = r3.isNotificationChannelSoundSet()
            if (r1 == 0) goto L_0x01d6
            java.lang.String r1 = r3.getNotificationChannelSound()
            goto L_0x01de
        L_0x01d6:
            com.webengage.sdk.android.PushChannelConfiguration r1 = r2.getDefaultPushChannelConfiguration()
            java.lang.String r1 = r1.getNotificationChannelSound()
        L_0x01de:
            r4.setNotificationChannelSound(r1)
            boolean r1 = r3.isNotificationChannelVibrationSet()
            if (r1 == 0) goto L_0x01ec
            boolean r2 = r3.isNotificationChannelVibration()
            goto L_0x01f4
        L_0x01ec:
            com.webengage.sdk.android.PushChannelConfiguration r2 = r2.getDefaultPushChannelConfiguration()
            boolean r2 = r2.isNotificationChannelVibration()
        L_0x01f4:
            r4.setNotificationChannelVibration(r2)
            com.webengage.sdk.android.PushChannelConfiguration r2 = r4.build()
            goto L_0x0200
        L_0x01fc:
            com.webengage.sdk.android.PushChannelConfiguration r2 = r2.getDefaultPushChannelConfiguration()
        L_0x0200:
            r0.setDefaultPushChannelConfiguration(r2)
            com.webengage.sdk.android.WebEngageConfig r2 = r0.build()
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.WebEngage.a(com.webengage.sdk.android.WebEngageConfig, com.webengage.sdk.android.WebEngageConfig, com.webengage.sdk.android.j):com.webengage.sdk.android.WebEngageConfig");
    }

    public static void engage(Context context) {
        engage(context, null);
    }

    public static void engage(Context context, WebEngageConfig webEngageConfig) {
        if (context == null) {
            throw new IllegalArgumentException("Context found null while initializing WebEngage SDK");
        } else if (d == null) {
            synchronized (f) {
                if (d == null) {
                    g = true;
                    f4913a = context.getApplicationContext();
                    f4914b = new j(f4913a);
                    try {
                        Logger.setLogLevel(-1);
                        WebEngageConfig a2 = a(a(f4913a), webEngageConfig, f4914b);
                        c = a2;
                        if (a2.getDebugMode()) {
                            Logger.setLogLevel(1);
                        } else {
                            Logger.setLogLevel(-1);
                        }
                        Logger.d("WebEngage", "Initializing WebEngage SDK");
                        if (c.isValid(f4913a)) {
                            d = new WebEngage(f4913a);
                        } else {
                            d = new ao(c);
                            Logger.e("WebEngage", "Invalid WebEngage config");
                            Logger.e("WebEngage", "WebEngage Initialization failed");
                        }
                        try {
                            if (e != null) {
                                Queue<ae> a3 = e.a();
                                if (a3 != null && a3.size() > 0) {
                                    Logger.d("WebEngage", "Executing tasks that have been submitted before webengage initialization, count: " + a3.size());
                                    while (!a3.isEmpty()) {
                                        ae poll = a3.poll();
                                        if (poll != null) {
                                            if (poll instanceof ap) {
                                                ((ap) poll).a(d);
                                            } else if (poll instanceof g) {
                                                ((g) poll).a(c.a(f4913a));
                                            } else if (poll instanceof an) {
                                                Context context2 = f4913a;
                                                ((an) poll).a(aj.a(context2, c.a(context2)));
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            Logger.e("WebEngage", "Some error occurred while executing all queued tasks: " + e2.toString());
                        }
                    } catch (Exception e3) {
                        Logger.e("WebEngage", "Some Error occurred during initialization : " + e3.toString());
                        Logger.e("WebEngage", "WebEngage Initialization Failed");
                    }
                }
            }
        }
    }

    public static AbstractWebEngage get() {
        synchronized (f) {
            if (d != null) {
                AbstractWebEngage abstractWebEngage = d;
                return abstractWebEngage;
            } else if (g) {
                Logger.d("WebEngage", "Returning no-op implementation of WebEngage");
                if (c == null) {
                    c = new WebEngageConfig.Builder().build();
                }
                ao aoVar = new ao(c);
                d = aoVar;
                return aoVar;
            } else {
                Logger.d("WebEngage", "Returning queued implementation of WebEngage");
                if (e == null) {
                    e = new y(new WebEngageConfig.Builder().build());
                }
                y yVar = e;
                return yVar;
            }
        }
    }

    public static Context getApplicationContext() {
        return f4913a;
    }

    public static boolean isEngaged() {
        boolean z;
        synchronized (f) {
            z = g && d != null && (d instanceof WebEngage);
        }
        return z;
    }

    public static void registerCustomPushRenderCallback(CustomPushRender customPushRender) {
        i.a(customPushRender);
    }

    public static void registerCustomPushRerenderCallback(CustomPushRerender customPushRerender) {
        i.a(customPushRerender);
    }

    public static void registerInAppNotificationCallback(InAppNotificationCallbacks inAppNotificationCallbacks) {
        i.a(inAppNotificationCallbacks);
    }

    public static void registerLifeCycleCallback(LifeCycleCallbacks lifeCycleCallbacks) {
        i.a(lifeCycleCallbacks);
    }

    public static void registerPushNotificationCallback(PushNotificationCallbacks pushNotificationCallbacks) {
        i.a(pushNotificationCallbacks);
    }

    public static void registerStateChangeCallback(StateChangeCallbacks stateChangeCallbacks) {
        if (isEngaged()) {
            i.a(stateChangeCallbacks, c.a(f4913a), f4913a);
        } else {
            i.a(stateChangeCallbacks, null, null);
        }
    }

    public static void startService(Intent intent, Context context) {
        startService(intent, context, null);
    }

    public static void startService(Intent intent, Context context, BroadcastReceiver broadcastReceiver) {
        if (context == null || intent == null) {
            Logger.e("WebEngage", "Invalid Parameters to start a service");
        } else {
            au.a(context, intent, broadcastReceiver);
        }
    }

    public static void unregisterInAppNotificationCallback(InAppNotificationCallbacks inAppNotificationCallbacks) {
        i.b(inAppNotificationCallbacks);
    }

    public static void unregisterLifeCycleCallback(LifeCycleCallbacks lifeCycleCallbacks) {
        i.b(lifeCycleCallbacks);
    }

    public static void unregisterPushNotificationCallback(PushNotificationCallbacks pushNotificationCallbacks) {
        i.b(pushNotificationCallbacks);
    }

    public static void unregisterStateChangeCallback(StateChangeCallbacks stateChangeCallbacks) {
        i.a(stateChangeCallbacks);
    }

    /* access modifiers changed from: protected */
    public void a(BroadcastReceiver broadcastReceiver) {
        Intent intent = new Intent(f4913a, ExecutorService.class);
        intent.putExtra("action_name", 1);
        startService(intent, f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent) {
        startService(n.a(af.GCM_MESSAGE, intent.getExtras(), f4913a), f4913a);
    }

    /* access modifiers changed from: protected */
    public void a(Intent intent, BroadcastReceiver broadcastReceiver) {
        PushNotificationData pushNotificationData;
        boolean z;
        String str;
        Intent intent2 = intent;
        BroadcastReceiver broadcastReceiver2 = broadcastReceiver;
        if (intent2 != null) {
            try {
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    if (extras.containsKey("hashed_notification_id")) {
                        try {
                            pushNotificationData = new PushNotificationData(new c(analytics().c().h(extras.getString("id"))), f4913a);
                        } catch (b e2) {
                            Logger.e("WebEngage", "Exception while getting push notification data from sharedprefs", e2);
                            analytics().b(e2);
                            pushNotificationData = null;
                        }
                        if (extras.containsKey("notification_main_intent")) {
                            boolean z2 = extras.getBoolean("dismiss_flag", true);
                            if (z2) {
                                ((NotificationManager) f4913a.getSystemService("notification")).cancel(extras.getInt("hashed_notification_id", -1));
                            }
                            f4913a.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
                            String str2 = "push_notification_click";
                            if (extras.containsKey(NotificationCompat.CATEGORY_EVENT)) {
                                str2 = extras.getString(NotificationCompat.CATEGORY_EVENT);
                            }
                            HashMap hashMap = new HashMap();
                            hashMap.put("id", extras.getString("id"));
                            hashMap.put("call_to_action", extras.getString("call_to_action"));
                            hashMap.put("experiment_id", extras.getString("experiment_id"));
                            HashMap hashMap2 = new HashMap();
                            hashMap2.put("dismiss_flag", Boolean.valueOf(z2));
                            Map a2 = k.a(extras.getBundle("event_data"));
                            if (pushNotificationData != null) {
                                if (a2 == null) {
                                    a2 = new HashMap();
                                }
                                a2.put("amplified", Boolean.valueOf(pushNotificationData.isAmplified()));
                            }
                            analytics().a(k.a(str2, hashMap, a2, hashMap2, f4913a));
                            if (pushNotificationData != null) {
                                if (extras.getBoolean("notification_main_intent")) {
                                    z = i.a(f4913a).onPushNotificationClicked(f4913a, pushNotificationData);
                                } else if (!extras.getBoolean("notification_main_intent")) {
                                    if ("push_notification_rating_submitted".equals(str2)) {
                                        pushNotificationData.getRatingV1().setRateValue(((Integer) a2.get("we_wk_rating")).intValue());
                                    }
                                    z = i.a(f4913a).onPushNotificationActionClicked(f4913a, pushNotificationData, extras.getString("call_to_action"));
                                } else {
                                    z = false;
                                }
                                if (!z && h.i()) {
                                    String string = extras.getString("call_to_action");
                                    Bundle customData = pushNotificationData.getCustomData();
                                    if (string != null) {
                                        CallToAction callToActionById = pushNotificationData.getCallToActionById(string);
                                        if (callToActionById != null) {
                                            str = callToActionById.getAction();
                                            h.a("com.webengage.cordova.WebEngagePlugin", "handlePushClick", new Class[]{String.class, Bundle.class}, new Object[]{str, customData});
                                        }
                                    }
                                    str = null;
                                    h.a("com.webengage.cordova.WebEngagePlugin", "handlePushClick", new Class[]{String.class, Bundle.class}, new Object[]{str, customData});
                                }
                            } else {
                                z = false;
                            }
                            if (!z) {
                                startService(n.a(af.DEEPLINK, intent2, f4913a), f4913a, broadcastReceiver2);
                            }
                            return;
                        }
                        if (pushNotificationData != null) {
                            HashMap hashMap3 = new HashMap();
                            hashMap3.put("id", pushNotificationData.getVariationId());
                            hashMap3.put("experiment_id", pushNotificationData.getExperimentId());
                            if (extras.containsKey("call_to_action")) {
                                hashMap3.put("call_to_action", extras.getString("call_to_action"));
                            }
                            HashMap hashMap4 = new HashMap();
                            hashMap4.put("amplified", Boolean.valueOf(pushNotificationData.isAmplified()));
                            analytics().a(k.a("push_notification_close", hashMap3, hashMap4, null, f4913a));
                            i.a(f4913a).onPushNotificationDismissed(f4913a, pushNotificationData);
                        }
                        return;
                    }
                    startService(n.a(af.DEEPLINK, intent2, f4913a), f4913a, broadcastReceiver2);
                }
            } catch (Exception e3) {
                Logger.e("WebEngage", "Exception while handling notification click/close", e3);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Location location, BroadcastReceiver broadcastReceiver) {
        HashMap hashMap = new HashMap();
        hashMap.put("latitude", Double.valueOf(location.getLatitude()));
        hashMap.put("longitude", Double.valueOf(location.getLongitude()));
        startService(n.a(af.EVENT, k.a("user_update_geo_info", hashMap, null, null, f4913a), f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void a(q.a aVar, BroadcastReceiver broadcastReceiver) {
        if (aVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("geofence_id", aVar.a());
            hashMap.put("transition_type", Integer.valueOf(aVar.c()));
            if (aVar.b() != null) {
                hashMap.put("latitude", Double.valueOf(aVar.b().getLatitude()));
                hashMap.put("longitude", Double.valueOf(aVar.b().getLongitude()));
            }
            startService(n.a(af.EVENT, k.a("geofence_transition", hashMap, null, null, f4913a), f4913a), f4913a, broadcastReceiver);
        }
    }

    public Analytics analytics() {
        return c.a(f4913a);
    }

    /* access modifiers changed from: protected */
    public void b(BroadcastReceiver broadcastReceiver) {
        startService(n.a(af.REPORT, null, f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void b(Intent intent) {
        Map<String, Object> map;
        HashMap hashMap;
        Map<String, Object> map2;
        Bundle extras = intent.getExtras();
        if (extras != null) {
            String string = extras.getString("id");
            String string2 = extras.getString("experiment_id");
            hashMap = new HashMap();
            hashMap.put("id", string);
            hashMap.put("experiment_id", string2);
            map2 = k.a(extras.getBundle("event_data"));
            map = k.a(extras.getBundle("extra_data"));
        } else {
            map = null;
            map2 = null;
            hashMap = null;
        }
        startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_push_notification_rerender", hashMap, map2, map, f4913a), f4913a), f4913a, null);
    }

    /* access modifiers changed from: protected */
    public void b(Intent intent, BroadcastReceiver broadcastReceiver) {
        long longExtra = intent.getLongExtra("delay_value", 0);
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.b.VALUE, Long.valueOf(longExtra + 1));
        startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_session_delay", null, hashMap, null, f4913a), f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void c(BroadcastReceiver broadcastReceiver) {
        startService(n.a(af.CONFIG_REFRESH, null, f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void c(Intent intent) {
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.b.VALUE, Boolean.TRUE);
        startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_leave_intent", null, hashMap, null, f4913a), f4913a), f4913a);
    }

    /* access modifiers changed from: protected */
    public void c(Intent intent, BroadcastReceiver broadcastReceiver) {
        long longExtra = intent.getLongExtra("delay_value", 0);
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.b.VALUE, Long.valueOf(longExtra + 1));
        startService(n.a(af.INTERNAL_EVENT, k.a("we_wk_page_delay", null, hashMap, null, f4913a), f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void d(BroadcastReceiver broadcastReceiver) {
        startService(n.a(af.FETCH_PROFILE, null, f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void e(BroadcastReceiver broadcastReceiver) {
        startService(n.a(af.JOURNEY_CONTEXT, null, f4913a), f4913a, broadcastReceiver);
    }

    /* access modifiers changed from: protected */
    public void f(BroadcastReceiver broadcastReceiver) {
        startService(n.a(af.AMPLIFY, null, f4913a), f4913a, broadcastReceiver);
    }

    public void filterCustomEvents(boolean z) {
        c = c.getCurrentState().b(z).build();
    }

    public WebEngageConfig getWebEngageConfig() {
        return c;
    }

    public void receive(Intent intent) {
        if (intent == null) {
            Logger.e("WebEngage", "Push intent is null");
        } else {
            a(intent);
        }
    }

    public void receive(Bundle bundle) {
        if (bundle == null) {
            Logger.e("WebEngage", "Push bundle is null");
            return;
        }
        Intent intent = new Intent();
        intent.putExtras(bundle);
        receive(intent);
    }

    public void receive(Map<String, String> map) {
        if (map == null) {
            Logger.e("WebEngage", "Push data is null");
            return;
        }
        Bundle b2 = k.b(map);
        if (b2 != null) {
            receive(b2);
        }
    }

    public RuleExecutor ruleExecutor() {
        return com.webengage.sdk.android.actions.rules.h.a();
    }

    public void setEventReportingStrategy(ReportingStrategy reportingStrategy) {
        if (reportingStrategy == null) {
            Logger.e("WebEngage", "Reporting Strategy is null");
            return;
        }
        c = c.getCurrentState().setEventReportingStrategy(reportingStrategy).build();
        f4914b.a(reportingStrategy);
    }

    public void setEveryActivityIsScreen(boolean z) {
        c = c.getCurrentState().setEveryActivityIsScreen(z).build();
    }

    public void setLocationTracking(boolean z) {
        WebEngageConfig webEngageConfig = c;
        if (webEngageConfig != null) {
            try {
                c = webEngageConfig.getCurrentState().setLocationTracking(z).build();
                if (z) {
                    p.a(f4913a).a(10800000, 3600000, 20000.0f, 104);
                } else {
                    p.a(f4913a).a();
                }
                f4914b.a(z);
            } catch (Exception e2) {
                Logger.e("WebEngage", "Some error occurred during changing location tracking flag : " + e2.toString());
            }
        }
    }

    public void setLocationTrackingStrategy(LocationTrackingStrategy locationTrackingStrategy) {
        WebEngageConfig webEngageConfig = c;
        if (!(webEngageConfig == null || locationTrackingStrategy == null)) {
            try {
                c = webEngageConfig.getCurrentState().setLocationTrackingStrategy(locationTrackingStrategy).build();
                int i = AnonymousClass1.f5323a[locationTrackingStrategy.ordinal()];
                if (i == 1) {
                    p.a(f4913a).a(900000, 300000, 1000.0f, 100);
                } else if (i == 2) {
                    p.a(f4913a).a(10800000, 3600000, 20000.0f, 104);
                } else if (i == 3) {
                    p.a(f4913a).a(43200000, 43200000, 100000.0f, 104);
                } else if (i == 4) {
                    p.a(f4913a).a();
                }
                f4914b.a(locationTrackingStrategy);
            } catch (Exception e2) {
                Logger.e("WebEngage", "Some error occurred while setting location tracking strategy: " + e2.toString());
            }
        }
    }

    public void setLogLevel(int i) {
        Logger.setLogLevel(i);
    }

    public void setRegistrationID(String str) {
        setRegistrationID(str, null);
    }

    public void setRegistrationID(String str, String str2) {
        if (str == null || str.isEmpty()) {
            Logger.e("WebEngage", "Invalid GCM Parameters");
        } else if (!str.equals(analytics().c().c())) {
            analytics().c().f(str);
            c = c.getCurrentState().setGCMProjectNumber(str2).build();
            HashMap hashMap = new HashMap();
            hashMap.put("gcm_regId", str);
            if (str2 != null) {
                hashMap.put("gcm_project_number", str2);
            }
            startService(n.a(af.EVENT, k.a("gcm_registered", null, hashMap, null, f4913a), f4913a), f4913a);
        }
    }

    public User user() {
        return aj.a(f4913a, analytics());
    }
}
