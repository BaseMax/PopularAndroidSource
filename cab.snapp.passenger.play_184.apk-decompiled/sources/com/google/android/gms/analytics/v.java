package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.internal.a;
import com.google.android.gms.internal.ac;
import com.google.android.gms.internal.bk;
import com.google.android.gms.internal.ce;
import com.google.android.gms.internal.n;
import com.google.android.gms.internal.y;
import java.util.HashMap;
import java.util.Map;

final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Map f2598a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ boolean f2599b;
    private /* synthetic */ String c;
    private /* synthetic */ long d;
    private /* synthetic */ boolean e;
    private /* synthetic */ boolean f;
    private /* synthetic */ String g;
    private /* synthetic */ h h;

    v(h hVar, Map map, boolean z, String str, long j, boolean z2, boolean z3, String str2) {
        this.h = hVar;
        this.f2598a = map;
        this.f2599b = z;
        this.c = str;
        this.d = j;
        this.e = z2;
        this.f = z3;
        this.g = str2;
    }

    public final void run() {
        if (this.h.f2578b.zzvg()) {
            this.f2598a.put("sc", "start");
        }
        Map map = this.f2598a;
        d zzww = this.h.zzww();
        ap.zzgn("getClientId can not be called from the main thread");
        ce.zzc(map, "cid", zzww.f2581a.zzxl().zzyk());
        String str = (String) this.f2598a.get("sf");
        if (str != null) {
            double zza = ce.zza(str, 100.0d);
            if (ce.zza(zza, (String) this.f2598a.get("cid"))) {
                this.h.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(zza));
                return;
            }
        }
        n zzxk = this.h.zzdta.zzxk();
        if (this.f2599b) {
            ce.zzb((Map<String, String>) this.f2598a, "ate", zzxk.zzwb());
            ce.zzb((Map<String, String>) this.f2598a, "adid", zzxk.zzwi());
        } else {
            this.f2598a.remove("ate");
            this.f2598a.remove("adid");
        }
        a zzxy = this.h.zzdta.zzxd().zzxy();
        ce.zzb((Map<String, String>) this.f2598a, "an", zzxy.zzvi());
        ce.zzb((Map<String, String>) this.f2598a, "av", zzxy.zzvj());
        ce.zzb((Map<String, String>) this.f2598a, "aid", zzxy.getAppId());
        ce.zzb((Map<String, String>) this.f2598a, "aiid", zzxy.zzvk());
        this.f2598a.put("v", "1");
        this.f2598a.put("_v", y.zzdtc);
        ce.zzb((Map<String, String>) this.f2598a, "ul", this.h.zzdta.zzxe().zzzc().getLanguage());
        ce.zzb((Map<String, String>) this.f2598a, "sr", this.h.zzdta.zzxe().zzzd());
        if ((this.c.equals("transaction") || this.c.equals("item")) || this.h.f2577a.zzzn()) {
            long zzei = ce.zzei((String) this.f2598a.get("ht"));
            if (zzei == 0) {
                zzei = this.d;
            }
            long j = zzei;
            if (this.e) {
                bk bkVar = new bk(this.h, this.f2598a, j, this.f);
                this.h.zzdta.zzwt().zzc("Dry run enabled. Would have sent hit", bkVar);
                return;
            }
            HashMap hashMap = new HashMap();
            ce.zza(hashMap, "uid", this.f2598a);
            ce.zza(hashMap, "an", this.f2598a);
            ce.zza(hashMap, "aid", this.f2598a);
            ce.zza(hashMap, "av", this.f2598a);
            ce.zza(hashMap, "aiid", this.f2598a);
            ac acVar = new ac(0, (String) this.f2598a.get("cid"), this.g, !TextUtils.isEmpty((CharSequence) this.f2598a.get("adid")), 0, hashMap);
            this.f2598a.put("_s", String.valueOf(this.h.zzdta.zzwx().zza(acVar)));
            bk bkVar2 = new bk(this.h, this.f2598a, j, this.f);
            this.h.zzdta.zzwx().zza(bkVar2);
            return;
        }
        this.h.zzdta.zzwt().zzf(this.f2598a, "Too many hits sent too quickly, rate limiting invoked");
    }
}
