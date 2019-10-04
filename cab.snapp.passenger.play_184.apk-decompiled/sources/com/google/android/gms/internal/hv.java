package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;

final class hv implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ String f3192a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ long f3193b;
    private /* synthetic */ hu c;

    hv(hu huVar, String str, long j) {
        this.c = huVar;
        this.f3192a = str;
        this.f3193b = j;
    }

    public final void run() {
        hu huVar = this.c;
        String str = this.f3192a;
        long j = this.f3193b;
        huVar.zzve();
        ap.zzgm(str);
        if (huVar.f3191b.isEmpty()) {
            huVar.c = j;
        }
        Integer num = huVar.f3191b.get(str);
        if (num != null) {
            huVar.f3191b.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (huVar.f3191b.size() >= 100) {
            huVar.zzawy().zzazf().log("Too many ads visible");
        } else {
            huVar.f3191b.put(str, 1);
            huVar.f3190a.put(str, Long.valueOf(j));
        }
    }
}
