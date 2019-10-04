package c.c.a.d.b;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.view.LayoutInflater;
import c.c.a.d.c;
import c.c.a.d.d.e;
import c.c.a.d.f;
import com.crashlytics.android.core.LogFileManager;
import com.farsitel.bazaar.data.entity.ErrorModel;
import com.farsitel.bazaar.data.entity.GatewayPaymentFailed;
import com.farsitel.bazaar.data.entity.InvalidEmailException;
import com.farsitel.bazaar.data.entity.InvalidPhoneNumberException;
import com.farsitel.bazaar.data.entity.PaymentFailed;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;

/* compiled from: ContextExt.kt */
public final class d {
    public static final boolean a(Context context, Intent intent, Uri uri) {
        j.b(context, "$this$grantPermissionForUri");
        j.b(intent, "intent");
        j.b(uri, "uri");
        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(intent, LogFileManager.MAX_LOG_SIZE);
        if (queryIntentActivities.isEmpty()) {
            return false;
        }
        j.a((Object) queryIntentActivities, "resInfoList");
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            context.grantUriPermission(resolveInfo.activityInfo.packageName, uri, 3);
        }
        return true;
    }

    public static final PackageInfo b(Context context, String str) {
        j.b(context, "$this$getPackageInfo");
        j.b(str, "packageName");
        try {
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static final LayoutInflater c(Context context) {
        j.b(context, "$this$layoutInflater");
        Object systemService = context.getSystemService("layout_inflater");
        if (systemService != null) {
            return (LayoutInflater) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.LayoutInflater");
    }

    public static final ConnectivityManager b(Context context) {
        j.b(context, "$this$getConnectivityManager");
        Object systemService = context.getSystemService("connectivity");
        if (systemService != null) {
            return (ConnectivityManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
    }

    public static final int c(Context context, String str) {
        j.b(context, "$this$getViewIdIntByIdName");
        j.b(str, "string");
        return context.getResources().getIdentifier(str, "id", context.getPackageName());
    }

    public static final String b(Context context, ErrorModel errorModel) {
        String str;
        String str2;
        String str3;
        j.b(context, "$this$getReadableErrorMessage");
        if (errorModel instanceof ErrorModel.NetworkConnection) {
            if (!e.f4772a.a(context)) {
                str3 = context.getString(f.no_internet_connection);
            } else {
                str3 = context.getString(f.error_server_connection_failure);
            }
            j.a((Object) str3, "if (!NetworkManager.isNe…erver_connection_failure)");
            return str3;
        }
        boolean z = true;
        if (errorModel instanceof ErrorModel.NotFound) {
            if (errorModel.getMessage().length() != 0) {
                z = false;
            }
            if (z) {
                str2 = context.getString(f.data_not_found);
            } else {
                str2 = errorModel.getMessage();
            }
            j.a((Object) str2, "if (errorModel.message.i…orModel.message\n        }");
            return str2;
        } else if (errorModel instanceof ErrorModel.RateLimitExceeded) {
            String string = context.getString(f.rate_limit_exceeded);
            j.a((Object) string, "getString(R.string.rate_limit_exceeded)");
            return string;
        } else if (errorModel instanceof ErrorModel.NotImplemented) {
            String string2 = context.getString(f.not_implemented);
            j.a((Object) string2, "getString(R.string.not_implemented)");
            return string2;
        } else if (errorModel instanceof PaymentFailed) {
            String string3 = context.getString(f.payment_failed);
            j.a((Object) string3, "getString(R.string.payment_failed)");
            return string3;
        } else if (errorModel instanceof GatewayPaymentFailed) {
            String string4 = context.getString(f.gateway_payment_failed);
            j.a((Object) string4, "getString(R.string.gateway_payment_failed)");
            return string4;
        } else if (errorModel instanceof InvalidPhoneNumberException) {
            String string5 = context.getString(f.wrong_phone_number);
            j.a((Object) string5, "getString(R.string.wrong_phone_number)");
            return string5;
        } else if (errorModel instanceof InvalidEmailException) {
            String string6 = context.getString(f.wrong_email_address);
            j.a((Object) string6, "getString(R.string.wrong_email_address)");
            return string6;
        } else if (!(errorModel instanceof ErrorModel.Server) && !j.a((Object) errorModel, (Object) ErrorModel.UnExpected.INSTANCE)) {
            if (errorModel != null) {
                if (errorModel.getMessage().length() != 0) {
                    z = false;
                }
                if (!z) {
                    str = errorModel.getMessage();
                    j.a((Object) str, "if (errorModel == null |…orModel.message\n        }");
                    return str;
                }
            }
            str = context.getString(f.error_server_connection_failure);
            j.a((Object) str, "if (errorModel == null |…orModel.message\n        }");
            return str;
        } else {
            String string7 = context.getString(f.error_server_connection_failure);
            j.a((Object) string7, "getString(R.string.error…erver_connection_failure)");
            return string7;
        }
    }

    public static final ClipboardManager a(Context context) {
        j.b(context, "$this$getClipboardManager");
        Object systemService = context.getSystemService("clipboard");
        if (systemService != null) {
            return (ClipboardManager) systemService;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.content.ClipboardManager");
    }

    public static final void a(Context context, String str) {
        j.b(context, "$this$copyToClipBoard");
        j.b(str, "value");
        a(context).setPrimaryClip(ClipData.newPlainText(str, str));
    }

    public static final int a(Context context, ErrorModel errorModel) {
        j.b(context, "$this$getErrorIcon");
        if (!(errorModel instanceof ErrorModel.NetworkConnection)) {
            return c.ic_error_outline_black_24dp;
        }
        if (!e.f4772a.a(context)) {
            return c.ic_signal_wifi_off_black_24dp;
        }
        return c.ic_error_outline_black_24dp;
    }

    public static final String a(Context context, Intent intent) {
        j.b(context, "$this$getDefaultPackageNameToHandleIntent");
        j.b(intent, "intent");
        ResolveInfo resolveActivity = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveActivity != null) {
            ActivityInfo activityInfo = resolveActivity.activityInfo;
            if (activityInfo != null) {
                return activityInfo.packageName;
            }
        }
        return null;
    }

    public static final List<String> b(Context context, Intent intent) {
        j.b(context, "$this$getPackageNamesToHandleIntent");
        j.b(intent, "intent");
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo next : queryIntentActivities) {
            intent.setPackage(next.activityInfo.packageName);
            if (packageManager.resolveActivity(intent, 0) != null) {
                String str = next.activityInfo.packageName;
                j.a((Object) str, "info.activityInfo.packageName");
                arrayList.add(str);
            }
        }
        return arrayList;
    }
}
