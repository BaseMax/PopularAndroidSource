package c.e.c.a.a.a;

import android.os.Bundle;
import c.e.a.b.h.b.Aa;
import com.crashlytics.android.core.CrashlyticsController;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Set<String> f11512a = new HashSet(Arrays.asList(new String[]{"_in", "_xa", "_xu", "_aq", "_aa", "_ai", "_ac", "campaign_details", "_ug", "_iapx", "_exp_set", "_exp_clear", "_exp_activate", "_exp_timeout", "_exp_expire"}));

    /* renamed from: b  reason: collision with root package name */
    public static final List<String> f11513b = Arrays.asList(new String[]{"_e", "_f", "_iap", "_s", "_au", "_ui", "_cd", "app_open"});

    /* renamed from: c  reason: collision with root package name */
    public static final List<String> f11514c = Arrays.asList(new String[]{"auto", "app", "am"});

    /* renamed from: d  reason: collision with root package name */
    public static final List<String> f11515d = Arrays.asList(new String[]{CrashlyticsController.FIREBASE_REALTIME, "_dbg"});

    /* renamed from: e  reason: collision with root package name */
    public static final List<String> f11516e = Arrays.asList((String[]) c.e.a.b.d.g.b.a(Aa.f10574a, Aa.f10575b));

    /* renamed from: f  reason: collision with root package name */
    public static final List<String> f11517f = Arrays.asList(new String[]{"^_ltv_[A-Z]{3}$", "^_cc[1-5]{1}$"});

    public static boolean a(String str) {
        return !f11514c.contains(str);
    }

    public static boolean a(String str, Bundle bundle) {
        if (f11513b.contains(str)) {
            return false;
        }
        if (bundle != null) {
            for (String containsKey : f11515d) {
                if (bundle.containsKey(containsKey)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean a(String str, String str2) {
        if ("_ce1".equals(str2) || "_ce2".equals(str2)) {
            return str.equals("fcm") || str.equals("frc");
        }
        if ("_ln".equals(str2)) {
            return str.equals("fcm") || str.equals("fiam");
        }
        if (f11516e.contains(str2)) {
            return false;
        }
        for (String matches : f11517f) {
            if (str2.matches(matches)) {
                return false;
            }
        }
        return true;
    }

    public static boolean a(String str, String str2, Bundle bundle) {
        if (!"_cmp".equals(str2)) {
            return true;
        }
        if (!a(str) || bundle == null) {
            return false;
        }
        for (String containsKey : f11515d) {
            if (bundle.containsKey(containsKey)) {
                return false;
            }
        }
        char c2 = 65535;
        int hashCode = str.hashCode();
        if (hashCode != 101200) {
            if (hashCode != 101230) {
                if (hashCode == 3142703 && str.equals("fiam")) {
                    c2 = 2;
                }
            } else if (str.equals("fdl")) {
                c2 = 1;
            }
        } else if (str.equals("fcm")) {
            c2 = 0;
        }
        if (c2 == 0) {
            bundle.putString("_cis", "fcm_integration");
            return true;
        } else if (c2 == 1) {
            bundle.putString("_cis", "fdl_integration");
            return true;
        } else if (c2 != 2) {
            return false;
        } else {
            bundle.putString("_cis", "fiam_integration");
            return true;
        }
    }
}
