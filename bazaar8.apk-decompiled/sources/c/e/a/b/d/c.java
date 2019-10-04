package c.e.a.b.d;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import b.i.a.n;
import b.o.a.C0285i;
import c.e.a.b.c.b;
import c.e.a.b.d.a.a.A;
import c.e.a.b.d.a.a.C0758f;
import c.e.a.b.d.a.a.C0777z;
import c.e.a.b.d.d.C0783f;
import c.e.a.b.d.d.C0784g;
import c.e.a.b.d.d.r;
import c.e.a.b.d.g.i;
import c.e.a.b.g.c.e;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiActivity;

public class c extends d {

    /* renamed from: c  reason: collision with root package name */
    public static final Object f9935c = new Object();

    /* renamed from: d  reason: collision with root package name */
    public static final c f9936d = new c();

    /* renamed from: e  reason: collision with root package name */
    public static final int f9937e = d.f9943a;

    /* renamed from: f  reason: collision with root package name */
    public String f9938f;

    @SuppressLint({"HandlerLeak"})
    private class a extends e {

        /* renamed from: a  reason: collision with root package name */
        public final Context f9940a;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f9940a = context.getApplicationContext();
        }

        public final void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 1) {
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i2);
                Log.w("GoogleApiAvailability", sb.toString());
                return;
            }
            int b2 = c.this.b(this.f9940a);
            if (c.this.b(b2)) {
                c.this.b(this.f9940a, b2);
            }
        }
    }

    public static c a() {
        return f9936d;
    }

    public boolean b(Activity activity, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a(activity, i2, i3, onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public final void c(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000);
    }

    public Dialog a(Activity activity, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        return a((Context) activity, i2, C0784g.a(activity, a((Context) activity, i2, "d"), i3), onCancelListener);
    }

    public void b(Context context, int i2) {
        a(context, i2, (String) null, a(context, i2, 0, "n"));
    }

    public final boolean a(Activity activity, C0758f fVar, int i2, int i3, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a((Context) activity, i2, C0784g.a(fVar, a((Context) activity, i2, "d"), 2), onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public final String b() {
        String str;
        synchronized (f9935c) {
            str = this.f9938f;
        }
        return str;
    }

    public int b(Context context) {
        return super.b(context);
    }

    public final boolean a(Context context, ConnectionResult connectionResult, int i2) {
        PendingIntent a2 = a(context, connectionResult);
        if (a2 == null) {
            return false;
        }
        a(context, connectionResult.x(), (String) null, GoogleApiActivity.a(context, a2, i2));
        return true;
    }

    public final boolean b(int i2) {
        return super.b(i2);
    }

    public static Dialog a(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(C0783f.b(activity, 18));
        builder.setPositiveButton("", null);
        AlertDialog create = builder.create();
        a(activity, (Dialog) create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    public final C0777z a(Context context, A a2) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        C0777z zVar = new C0777z(a2);
        context.registerReceiver(zVar, intentFilter);
        zVar.a(context);
        if (a(context, "com.google.android.gms")) {
            return zVar;
        }
        a2.a();
        zVar.a();
        return null;
    }

    public int a(Context context, int i2) {
        return super.a(context, i2);
    }

    public Intent a(Context context, int i2, String str) {
        return super.a(context, i2, str);
    }

    public PendingIntent a(Context context, int i2, int i3) {
        return super.a(context, i2, i3);
    }

    public PendingIntent a(Context context, ConnectionResult connectionResult) {
        if (connectionResult.A()) {
            return connectionResult.z();
        }
        return a(context, connectionResult.x(), 0);
    }

    public final String a(int i2) {
        return super.a(i2);
    }

    public static Dialog a(Context context, int i2, C0784g gVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i2 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843529, typedValue, true);
        if ("Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId))) {
            builder = new AlertDialog.Builder(context, 5);
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(C0783f.b(context, i2));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String a2 = C0783f.a(context, i2);
        if (a2 != null) {
            builder.setPositiveButton(a2, gVar);
        }
        String e2 = C0783f.e(context, i2);
        if (e2 != null) {
            builder.setTitle(e2);
        }
        return builder.create();
    }

    public static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof C0285i) {
            h.a(dialog, onCancelListener).a(((C0285i) activity).r(), str);
            return;
        }
        b.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    public final void a(Context context, int i2, String str, PendingIntent pendingIntent) {
        int i3;
        if (i2 == 18) {
            c(context);
        } else if (pendingIntent == null) {
            if (i2 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
            }
        } else {
            String d2 = C0783f.d(context, i2);
            String c2 = C0783f.c(context, i2);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            n.d dVar = new n.d(context);
            dVar.b(true);
            dVar.a(true);
            dVar.c((CharSequence) d2);
            n.c cVar = new n.c();
            cVar.a((CharSequence) c2);
            dVar.a((n.e) cVar);
            if (i.b(context)) {
                r.b(c.e.a.b.d.g.n.f());
                dVar.c(context.getApplicationInfo().icon);
                dVar.b(2);
                if (i.c(context)) {
                    dVar.a(c.e.a.b.c.a.common_full_open_on_phone, (CharSequence) resources.getString(b.common_open_on_phone), pendingIntent);
                } else {
                    dVar.a(pendingIntent);
                }
            } else {
                dVar.c(17301642);
                dVar.d((CharSequence) resources.getString(b.common_google_play_services_notification_ticker));
                dVar.a(System.currentTimeMillis());
                dVar.a(pendingIntent);
                dVar.b((CharSequence) c2);
            }
            if (c.e.a.b.d.g.n.i()) {
                r.b(c.e.a.b.d.g.n.i());
                String b2 = b();
                if (b2 == null) {
                    b2 = "com.google.android.gms.availability";
                    NotificationChannel notificationChannel = notificationManager.getNotificationChannel(b2);
                    String b3 = C0783f.b(context);
                    if (notificationChannel == null) {
                        notificationManager.createNotificationChannel(new NotificationChannel(b2, b3, 4));
                    } else if (!b3.contentEquals(notificationChannel.getName())) {
                        notificationChannel.setName(b3);
                        notificationManager.createNotificationChannel(notificationChannel);
                    }
                }
                dVar.a(b2);
            }
            Notification a2 = dVar.a();
            if (i2 == 1 || i2 == 2 || i2 == 3) {
                i3 = e.GMS_AVAILABILITY_NOTIFICATION_ID;
                e.sCanceledAvailabilityNotification.set(false);
            } else {
                i3 = e.GMS_GENERAL_ERROR_NOTIFICATION_ID;
            }
            notificationManager.notify(i3, a2);
        }
    }
}
