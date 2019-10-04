package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.adjust.sdk.Constants;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.z;

public final class a extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f2567a;

    public static boolean zzbk(Context context) {
        ap.checkNotNull(context);
        Boolean bool = f2567a;
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean zzb = ce.zzb(context, "com.google.android.gms.analytics.CampaignTrackingReceiver", true);
        f2567a = Boolean.valueOf(zzb);
        return zzb;
    }

    public final void onReceive(Context context, Intent intent) {
        z zzbm = z.zzbm(context);
        bp zzwt = zzbm.zzwt();
        if (intent == null) {
            zzwt.zzdx("CampaignTrackingReceiver received null intent");
            return;
        }
        String stringExtra = intent.getStringExtra(Constants.REFERRER);
        String action = intent.getAction();
        zzwt.zza("CampaignTrackingReceiver received", action);
        if (!"com.android.vending.INSTALL_REFERRER".equals(action) || TextUtils.isEmpty(stringExtra)) {
            zzwt.zzdx("CampaignTrackingReceiver received unexpected intent without referrer extra");
            return;
        }
        int zzyr = ax.zzyr();
        if (stringExtra.length() > zzyr) {
            zzwt.zzc("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(stringExtra.length()), Integer.valueOf(zzyr));
            stringExtra = stringExtra.substring(0, zzyr);
        }
        zzbm.zzwx().zza(stringExtra, new k(goAsync()));
    }
}
