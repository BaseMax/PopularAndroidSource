package com.google.android.gms.common;

import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.fragment.app.Fragment;
import c.e.a.b.d.c;
import c.e.a.b.d.d.C0784g;
import c.e.a.b.d.e;

public final class GooglePlayServicesUtil extends e {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE = e.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    @Deprecated
    public static Dialog getErrorDialog(int i2, Activity activity, int i3) {
        return getErrorDialog(i2, activity, i3, null);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i2, Context context, int i3) {
        return e.getErrorPendingIntent(i2, context, i3);
    }

    @Deprecated
    public static String getErrorString(int i2) {
        return e.getErrorString(i2);
    }

    public static Context getRemoteContext(Context context) {
        return e.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return e.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return e.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i2) {
        return e.isUserRecoverableError(i2);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i2, Activity activity, int i3, DialogInterface.OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i2, activity, null, i3, onCancelListener);
    }

    @Deprecated
    public static void showErrorNotification(int i2, Context context) {
        c a2 = c.a();
        if (e.isPlayServicesPossiblyUpdating(context, i2) || e.isPlayStorePossiblyUpdating(context, i2)) {
            a2.c(context);
        } else {
            a2.b(context, i2);
        }
    }

    @Deprecated
    public static Dialog getErrorDialog(int i2, Activity activity, int i3, DialogInterface.OnCancelListener onCancelListener) {
        if (e.isPlayServicesPossiblyUpdating(activity, i2)) {
            i2 = 18;
        }
        return c.a().a(activity, i2, i3, onCancelListener);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context, int i2) {
        return e.isGooglePlayServicesAvailable(context, i2);
    }

    public static boolean showErrorDialogFragment(int i2, Activity activity, Fragment fragment, int i3, DialogInterface.OnCancelListener onCancelListener) {
        if (e.isPlayServicesPossiblyUpdating(activity, i2)) {
            i2 = 18;
        }
        c a2 = c.a();
        if (fragment == null) {
            return a2.b(activity, i2, i3, onCancelListener);
        }
        Dialog a3 = c.a((Context) activity, i2, C0784g.a(fragment, c.a().a((Context) activity, i2, "d"), i3), onCancelListener);
        if (a3 == null) {
            return false;
        }
        c.a(activity, a3, GMS_ERROR_DIALOG, onCancelListener);
        return true;
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i2, Activity activity, int i3) {
        return showErrorDialogFragment(i2, activity, i3, null);
    }
}
