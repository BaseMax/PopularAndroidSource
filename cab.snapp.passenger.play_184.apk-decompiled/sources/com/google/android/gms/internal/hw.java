package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;

final class hw implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3194a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ long f3195b;
    private /* synthetic */ hu c;

    hw(hu huVar, String str, long j) {
        this.c = huVar;
        this.f3194a = str;
        this.f3195b = j;
    }

    public final void run() {
        hu huVar = this.c;
        String str = this.f3194a;
        long j = this.f3195b;
        huVar.zzve();
        ap.zzgm(str);
        Integer num = huVar.f3191b.get(str);
        if (num != null) {
            lq zzbao = huVar.zzawq().zzbao();
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                huVar.f3191b.remove(str);
                Long l = huVar.f3190a.get(str);
                if (l == null) {
                    huVar.zzawy().zzazd().log("First ad unit exposure time was never set");
                } else {
                    huVar.f3190a.remove(str);
                    huVar.a(str, j - l.longValue(), zzbao);
                }
                if (huVar.f3191b.isEmpty()) {
                    if (huVar.c == 0) {
                        huVar.zzawy().zzazd().log("First ad exposure time was never set");
                        return;
                    } else {
                        huVar.a(j - huVar.c, zzbao);
                        huVar.c = 0;
                    }
                }
                return;
            }
            huVar.f3191b.put(str, Integer.valueOf(intValue));
            return;
        }
        huVar.zzawy().zzazd().zzj("Call to endAdUnitExposure for unknown ad unit id", str);
    }
}
