package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.a;
import com.google.android.gms.c.i;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.internal.al;
import com.google.android.gms.common.api.internal.aw;
import com.google.android.gms.common.api.internal.ax;
import com.google.android.gms.common.api.internal.bd;
import com.google.android.gms.common.api.internal.bl;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.internal.bo;
import com.google.android.gms.common.internal.bp;
import com.google.android.gms.common.util.f;
import com.google.android.gms.common.util.m;
import java.util.ArrayList;
import java.util.Arrays;

public final class b extends j {
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = j.GOOGLE_PLAY_SERVICES_VERSION_CODE;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f2892a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private static final b f2893b = new b();
    private String c;

    class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2894a;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public a(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.f2894a = context.getApplicationContext();
        }

        public final void handleMessage(Message message) {
            if (message.what != 1) {
                int i = message.what;
                StringBuilder sb = new StringBuilder(50);
                sb.append("Don't know how to handle this message: ");
                sb.append(i);
                return;
            }
            int isGooglePlayServicesAvailable = b.this.isGooglePlayServicesAvailable(this.f2894a);
            if (b.this.isUserResolvableError(isGooglePlayServicesAvailable)) {
                b.this.showErrorNotification(this.f2894a, isGooglePlayServicesAvailable);
            }
        }
    }

    b() {
    }

    static Dialog a(Context context, int i, bp bpVar, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
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
        builder.setMessage(bo.zzi(context, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String zzk = bo.zzk(context, i);
        if (zzk != null) {
            builder.setPositiveButton(zzk, bpVar);
        }
        String zzg = bo.zzg(context, i);
        if (zzg != null) {
            builder.setTitle(zzg);
        }
        return builder.create();
    }

    private final String a() {
        String str;
        synchronized (f2892a) {
            str = this.c;
        }
        return str;
    }

    private final String a(Context context, NotificationManager notificationManager) {
        ap.checkState(m.isAtLeastO());
        String a2 = a();
        if (a2 == null) {
            a2 = "com.google.android.gms.availability";
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel(a2);
            String zzcn = bo.zzcn(context);
            if (notificationChannel == null) {
                notificationChannel = new NotificationChannel(a2, zzcn, 4);
            } else if (!zzcn.equals(notificationChannel.getName())) {
                notificationChannel.setName(zzcn);
            }
            notificationManager.createNotificationChannel(notificationChannel);
        }
        return a2;
    }

    static void a(Activity activity, Dialog dialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        if (activity instanceof FragmentActivity) {
            SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
            return;
        }
        a.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    private final void a(Context context, int i, PendingIntent pendingIntent) {
        Notification notification;
        int i2;
        if (i == 18) {
            a(context);
        } else if (pendingIntent != null) {
            String zzh = bo.zzh(context, i);
            String zzj = bo.zzj(context, i);
            Resources resources = context.getResources();
            NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
            if (f.zzct(context)) {
                ap.checkState(m.zzamm());
                Notification.Builder addAction = new Notification.Builder(context).setSmallIcon(context.getApplicationInfo().icon).setPriority(2).setAutoCancel(true).setContentTitle(zzh).setStyle(new Notification.BigTextStyle().bigText(zzj)).addAction(a.b.common_full_open_on_phone, resources.getString(a.c.common_open_on_phone), pendingIntent);
                if (m.isAtLeastO() && m.isAtLeastO()) {
                    addAction.setChannelId(a(context, notificationManager));
                }
                notification = addAction.build();
            } else {
                NotificationCompat.Builder style = new NotificationCompat.Builder(context).setSmallIcon(17301642).setTicker(resources.getString(a.c.common_google_play_services_notification_ticker)).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(pendingIntent).setContentTitle(zzh).setContentText(zzj).setLocalOnly(true).setStyle(new NotificationCompat.BigTextStyle().bigText(zzj));
                if (m.isAtLeastO() && m.isAtLeastO()) {
                    style.setChannelId(a(context, notificationManager));
                }
                notification = style.build();
            }
            if (i == 1 || i == 2 || i == 3) {
                i2 = 10436;
                s.zzfln.set(false);
            } else {
                i2 = 39789;
            }
            notificationManager.notify(i2, notification);
        }
    }

    public static b getInstance() {
        return f2893b;
    }

    public static Dialog zza(Activity activity, DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(bo.zzi(activity, 18));
        builder.setPositiveButton("", null);
        AlertDialog create = builder.create();
        a(activity, (Dialog) create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    public static aw zza(Context context, ax axVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        aw awVar = new aw(axVar);
        context.registerReceiver(awVar, intentFilter);
        awVar.setContext(context);
        if (s.zzv(context, "com.google.android.gms")) {
            return awVar;
        }
        axVar.zzahg();
        awVar.unregister();
        return null;
    }

    /* access modifiers changed from: package-private */
    public final void a(Context context) {
        new a(context).sendEmptyMessageDelayed(1, 120000);
    }

    public final com.google.android.gms.c.f<Void> checkApiAvailability(e<?> eVar, e<?>... eVarArr) {
        ap.checkNotNull(eVar, "Requested API must not be null.");
        for (e<?> checkNotNull : eVarArr) {
            ap.checkNotNull(checkNotNull, "Requested API must not be null.");
        }
        ArrayList arrayList = new ArrayList(eVarArr.length + 1);
        arrayList.add(eVar);
        arrayList.addAll(Arrays.asList(eVarArr));
        return al.zzaiq().zza((Iterable<? extends e<?>>) arrayList).continueWith(new i());
    }

    public final Dialog getErrorDialog(Activity activity, int i, int i2) {
        return getErrorDialog(activity, i, i2, null);
    }

    public final Dialog getErrorDialog(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        return a((Context) activity, i, bp.zza(activity, j.zza(activity, i, "d"), i2), onCancelListener);
    }

    public final PendingIntent getErrorResolutionPendingIntent(Context context, int i, int i2) {
        return super.getErrorResolutionPendingIntent(context, i, i2);
    }

    public final PendingIntent getErrorResolutionPendingIntent(Context context, ConnectionResult connectionResult) {
        return connectionResult.hasResolution() ? connectionResult.getResolution() : getErrorResolutionPendingIntent(context, connectionResult.getErrorCode(), 0);
    }

    public final String getErrorString(int i) {
        return super.getErrorString(i);
    }

    public final int isGooglePlayServicesAvailable(Context context) {
        return super.isGooglePlayServicesAvailable(context);
    }

    public final boolean isUserResolvableError(int i) {
        return super.isUserResolvableError(i);
    }

    public final com.google.android.gms.c.f<Void> makeGooglePlayServicesAvailable(Activity activity) {
        ap.zzge("makeGooglePlayServicesAvailable must be called from the main thread");
        int isGooglePlayServicesAvailable = isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable == 0) {
            return i.forResult(null);
        }
        bl zzp = bl.zzp(activity);
        zzp.zzb(new ConnectionResult(isGooglePlayServicesAvailable, null), 0);
        return zzp.getTask();
    }

    public final void setDefaultNotificationChannelId(Context context, String str) {
        if (m.isAtLeastO()) {
            ap.checkNotNull(((NotificationManager) context.getSystemService("notification")).getNotificationChannel(str));
        }
        synchronized (f2892a) {
            this.c = str;
        }
    }

    public final boolean showErrorDialogFragment(Activity activity, int i, int i2) {
        return showErrorDialogFragment(activity, i, i2, null);
    }

    public final boolean showErrorDialogFragment(Activity activity, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog errorDialog = getErrorDialog(activity, i, i2, onCancelListener);
        if (errorDialog == null) {
            return false;
        }
        a(activity, errorDialog, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public final void showErrorNotification(Context context, int i) {
        a(context, i, zza(context, i, 0, "n"));
    }

    public final void showErrorNotification(Context context, ConnectionResult connectionResult) {
        a(context, connectionResult.getErrorCode(), getErrorResolutionPendingIntent(context, connectionResult));
    }

    public final boolean zza(Activity activity, bd bdVar, int i, int i2, DialogInterface.OnCancelListener onCancelListener) {
        Dialog a2 = a((Context) activity, i, bp.zza(bdVar, j.zza(activity, i, "d"), 2), onCancelListener);
        if (a2 == null) {
            return false;
        }
        a(activity, a2, GooglePlayServicesUtil.GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    public final boolean zza(Context context, ConnectionResult connectionResult, int i) {
        PendingIntent errorResolutionPendingIntent = getErrorResolutionPendingIntent(context, connectionResult);
        if (errorResolutionPendingIntent == null) {
            return false;
        }
        a(context, connectionResult.getErrorCode(), GoogleApiActivity.zza(context, errorResolutionPendingIntent, i));
        return true;
    }
}
