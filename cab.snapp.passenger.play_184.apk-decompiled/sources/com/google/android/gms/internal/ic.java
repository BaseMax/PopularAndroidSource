package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.n;
import java.lang.reflect.InvocationTargetException;

public final class ic extends kv {

    /* renamed from: a  reason: collision with root package name */
    private Boolean f3200a;

    ic(jx jxVar) {
        super(jxVar);
    }

    public static long zzayb() {
        return ip.zzjbg.get().longValue();
    }

    public static long zzayc() {
        return ip.zzjag.get().longValue();
    }

    public static boolean zzaye() {
        return ip.zzjab.get().booleanValue();
    }

    /* access modifiers changed from: package-private */
    public final Boolean a(String str) {
        ap.zzgm(str);
        try {
            if (getContext().getPackageManager() == null) {
                zzawy().zzazd().log("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo applicationInfo = fr.zzdb(getContext()).getApplicationInfo(getContext().getPackageName(), 128);
            if (applicationInfo == null) {
                zzawy().zzazd().log("Failed to load metadata: ApplicationInfo is null");
                return null;
            } else if (applicationInfo.metaData == null) {
                zzawy().zzazd().log("Failed to load metadata: Metadata bundle is null");
                return null;
            } else if (!applicationInfo.metaData.containsKey(str)) {
                return null;
            } else {
                return Boolean.valueOf(applicationInfo.metaData.getBoolean(str));
            }
        } catch (PackageManager.NameNotFoundException e) {
            zzawy().zzazd().zzj("Failed to load metadata: Package name not found", e);
            return null;
        }
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final long zza(String str, iq<Long> iqVar) {
        if (str != null) {
            String a2 = zzawv().a(str, iqVar.getKey());
            if (!TextUtils.isEmpty(a2)) {
                try {
                    return iqVar.get(Long.valueOf(Long.valueOf(a2).longValue())).longValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return iqVar.get().longValue();
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final /* bridge */ /* synthetic */ void zzawj() {
        super.zzawj();
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final boolean zzaya() {
        Boolean a2 = a("firebase_analytics_collection_deactivated");
        return a2 != null && a2.booleanValue();
    }

    public final String zzayd() {
        String str;
        jb jbVar;
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", new Class[]{String.class, String.class}).invoke(null, new Object[]{"debug.firebase.analytics.app", ""});
        } catch (ClassNotFoundException e) {
            e = e;
            jbVar = zzawy().zzazd();
            str = "Could not find SystemProperties class";
            jbVar.zzj(str, e);
            return "";
        } catch (NoSuchMethodException e2) {
            e = e2;
            jbVar = zzawy().zzazd();
            str = "Could not find SystemProperties.get() method";
            jbVar.zzj(str, e);
            return "";
        } catch (IllegalAccessException e3) {
            e = e3;
            jbVar = zzawy().zzazd();
            str = "Could not access SystemProperties.get()";
            jbVar.zzj(str, e);
            return "";
        } catch (InvocationTargetException e4) {
            e = e4;
            jbVar = zzawy().zzazd();
            str = "SystemProperties.get() threw an exception";
            jbVar.zzj(str, e);
            return "";
        }
    }

    public final int zzb(String str, iq<Integer> iqVar) {
        if (str != null) {
            String a2 = zzawv().a(str, iqVar.getKey());
            if (!TextUtils.isEmpty(a2)) {
                try {
                    return iqVar.get(Integer.valueOf(Integer.valueOf(a2).intValue())).intValue();
                } catch (NumberFormatException unused) {
                }
            }
        }
        return iqVar.get().intValue();
    }

    public final int zzix(String str) {
        return zzb(str, ip.zzjar);
    }

    public final boolean zziz(String str) {
        return "1".equals(zzawv().a(str, "gaia_collection_enabled"));
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }

    public final boolean zzyp() {
        if (this.f3200a == null) {
            synchronized (this) {
                if (this.f3200a == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String zzamo = n.zzamo();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f3200a = Boolean.valueOf(str != null && str.equals(zzamo));
                    }
                    if (this.f3200a == null) {
                        this.f3200a = Boolean.TRUE;
                        zzawy().zzazd().log("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f3200a.booleanValue();
    }
}
