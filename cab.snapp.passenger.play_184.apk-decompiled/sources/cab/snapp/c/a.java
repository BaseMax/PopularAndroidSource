package cab.snapp.c;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.hardware.display.DisplayManager;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.PowerManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import androidx.appcompat.widget.ActivityChooserView;
import java.util.List;

public final class a {
    public static float[] getScreenSizeInDp(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        return new float[]{((float) i) / (((float) displayMetrics.densityDpi) / 160.0f), (float) i2};
    }

    public static boolean isPackageInstalled(Application application, String str) {
        try {
            application.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static String getDeviceName() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return j.capitalize(str2);
        }
        return j.capitalize(str) + " " + str2;
    }

    public static String getAndroidVersion() {
        return Build.VERSION.RELEASE;
    }

    public static String getImei(Application application) {
        return ((TelephonyManager) application.getSystemService("phone")).getDeviceId();
    }

    public static String getDeviceMACAddress(Application application) {
        String str = "";
        try {
            WifiManager wifiManager = (WifiManager) application.getSystemService("wifi");
            if (wifiManager == null) {
                return str;
            }
            str = wifiManager.getConnectionInfo().getMacAddress();
            return str;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String getCarrierName(Application application) {
        TelephonyManager telephonyManager = (TelephonyManager) application.getSystemService("phone");
        if (telephonyManager == null) {
            return "";
        }
        return telephonyManager.getNetworkOperatorName();
    }

    public final boolean isMyServiceRunning(Context context, Class<?> cls) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        if (activityManager == null) {
            return false;
        }
        for (ActivityManager.RunningServiceInfo runningServiceInfo : activityManager.getRunningServices(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED)) {
            if (cls.getName().equals(runningServiceInfo.service.getClassName())) {
                return true;
            }
        }
        return false;
    }

    public static List<ApplicationInfo> getAllPackageNames(Application application) {
        PackageManager packageManager = application.getPackageManager();
        if (packageManager != null) {
            return packageManager.getInstalledApplications(128);
        }
        return null;
    }

    public static PackageInfo getAppPackageInfo(Application application, String str) {
        try {
            PackageManager packageManager = application.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return packageManager.getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final boolean isScreenOn(Context context) {
        if (Build.VERSION.SDK_INT >= 20) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                return false;
            }
            boolean z = false;
            for (Display state : displayManager.getDisplays()) {
                if (state.getState() != 1) {
                    z = true;
                }
            }
            return z;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        return powerManager != null && powerManager.isScreenOn();
    }

    public static boolean hasJellyBean() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static boolean hasLollipop() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static String getSecureDeviceIdString(Application application) {
        try {
            return Settings.Secure.getString(application.getApplicationContext().getContentResolver(), "android_id");
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }
}
