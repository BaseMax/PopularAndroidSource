package c.e.a.b.d.d;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import b.f.i;
import c.e.a.b.c.b;
import c.e.a.b.d.g;
import c.e.a.b.d.h.c;
import com.google.android.gms.common.GooglePlayServicesUtil;

/* renamed from: c.e.a.b.d.d.f  reason: case insensitive filesystem */
public final class C0783f {

    /* renamed from: a  reason: collision with root package name */
    public static final i<String, String> f10017a = new i<>();

    public static String a(Context context, int i2) {
        Resources resources = context.getResources();
        if (i2 == 1) {
            return resources.getString(b.common_google_play_services_install_button);
        }
        if (i2 == 2) {
            return resources.getString(b.common_google_play_services_update_button);
        }
        if (i2 != 3) {
            return resources.getString(17039370);
        }
        return resources.getString(b.common_google_play_services_enable_button);
    }

    public static String b(Context context, int i2) {
        Resources resources = context.getResources();
        String a2 = a(context);
        if (i2 == 1) {
            return resources.getString(b.common_google_play_services_install_text, new Object[]{a2});
        } else if (i2 != 2) {
            if (i2 == 3) {
                return resources.getString(b.common_google_play_services_enable_text, new Object[]{a2});
            } else if (i2 == 5) {
                return a(context, "common_google_play_services_invalid_account_text", a2);
            } else {
                if (i2 == 7) {
                    return a(context, "common_google_play_services_network_error_text", a2);
                }
                if (i2 == 9) {
                    return resources.getString(b.common_google_play_services_unsupported_text, new Object[]{a2});
                } else if (i2 == 20) {
                    return a(context, "common_google_play_services_restricted_profile_text", a2);
                } else {
                    switch (i2) {
                        case 16:
                            return a(context, "common_google_play_services_api_unavailable_text", a2);
                        case 17:
                            return a(context, "common_google_play_services_sign_in_failed_text", a2);
                        case 18:
                            return resources.getString(b.common_google_play_services_updating_text, new Object[]{a2});
                        default:
                            return resources.getString(g.common_google_play_services_unknown_issue, new Object[]{a2});
                    }
                }
            }
        } else if (c.e.a.b.d.g.i.c(context)) {
            return resources.getString(b.common_google_play_services_wear_update_text);
        } else {
            return resources.getString(b.common_google_play_services_update_text, new Object[]{a2});
        }
    }

    public static String c(Context context, int i2) {
        if (i2 == 6) {
            return a(context, "common_google_play_services_resolution_required_text", a(context));
        }
        return b(context, i2);
    }

    public static String d(Context context, int i2) {
        String str;
        if (i2 == 6) {
            str = a(context, "common_google_play_services_resolution_required_title");
        } else {
            str = e(context, i2);
        }
        return str == null ? context.getResources().getString(b.common_google_play_services_notification_ticker) : str;
    }

    public static String e(Context context, int i2) {
        Resources resources = context.getResources();
        switch (i2) {
            case 1:
                return resources.getString(b.common_google_play_services_install_title);
            case 2:
                return resources.getString(b.common_google_play_services_update_title);
            case 3:
                return resources.getString(b.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return a(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return a(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return a(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return a(context, "common_google_play_services_restricted_profile_title");
            default:
                StringBuilder sb = new StringBuilder(33);
                sb.append("Unexpected error code ");
                sb.append(i2);
                Log.e("GoogleApiAvailability", sb.toString());
                return null;
        }
    }

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return c.a(context).b(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String a(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String a2 = a(context, str);
        if (a2 == null) {
            a2 = resources.getString(g.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, a2, new Object[]{str2});
    }

    public static String a(Context context, String str) {
        synchronized (f10017a) {
            String str2 = f10017a.get(str);
            if (str2 != null) {
                return str2;
            }
            Resources remoteResource = GooglePlayServicesUtil.getRemoteResource(context);
            if (remoteResource == null) {
                return null;
            }
            int identifier = remoteResource.getIdentifier(str, "string", "com.google.android.gms");
            if (identifier == 0) {
                String valueOf = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf.length() != 0 ? "Missing resource: ".concat(valueOf) : new String("Missing resource: "));
                return null;
            }
            String string = remoteResource.getString(identifier);
            if (TextUtils.isEmpty(string)) {
                String valueOf2 = String.valueOf(str);
                Log.w("GoogleApiAvailability", valueOf2.length() != 0 ? "Got empty resource: ".concat(valueOf2) : new String("Got empty resource: "));
                return null;
            }
            f10017a.put(str, string);
            return string;
        }
    }

    public static String b(Context context) {
        return context.getResources().getString(b.common_google_play_services_notification_channel_name);
    }
}
