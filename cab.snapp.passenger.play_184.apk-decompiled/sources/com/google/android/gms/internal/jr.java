package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.io.IOException;
import java.util.Map;

public final class jr extends kw {

    /* renamed from: b  reason: collision with root package name */
    private static int f3258b = 65535;
    private static int c = 2;

    /* renamed from: a  reason: collision with root package name */
    final Map<String, ni> f3259a = new ArrayMap();
    private final Map<String, Map<String, String>> d = new ArrayMap();
    private final Map<String, Map<String, Boolean>> f = new ArrayMap();
    private final Map<String, Map<String, Boolean>> g = new ArrayMap();
    private final Map<String, Map<String, Integer>> h = new ArrayMap();
    private final Map<String, String> i = new ArrayMap();

    jr(jx jxVar) {
        super(jxVar);
    }

    private final ni a(String str, byte[] bArr) {
        if (bArr == null) {
            return new ni();
        }
        so zzn = so.zzn(bArr, 0, bArr.length);
        ni niVar = new ni();
        try {
            niVar.zza(zzn);
            zzawy().zzazj().zze("Parsed config. version, gmp_app_id", niVar.zzjkw, niVar.zzixs);
            return niVar;
        } catch (IOException e) {
            zzawy().zzazf().zze("Unable to merge remote config. appId", iz.a(str), e);
            return new ni();
        }
    }

    private static Map<String, String> a(ni niVar) {
        ArrayMap arrayMap = new ArrayMap();
        if (!(niVar == null || niVar.zzjky == null)) {
            for (nj njVar : niVar.zzjky) {
                if (njVar != null) {
                    arrayMap.put(njVar.key, njVar.value);
                }
            }
        }
        return arrayMap;
    }

    private final void a(String str, ni niVar) {
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        if (!(niVar == null || niVar.zzjkz == null)) {
            for (nh nhVar : niVar.zzjkz) {
                if (TextUtils.isEmpty(nhVar.name)) {
                    zzawy().zzazf().log("EventConfig contained null event name");
                } else {
                    String zziq = AppMeasurement.a.zziq(nhVar.name);
                    if (!TextUtils.isEmpty(zziq)) {
                        nhVar.name = zziq;
                    }
                    arrayMap.put(nhVar.name, nhVar.zzjkt);
                    arrayMap2.put(nhVar.name, nhVar.zzjku);
                    if (nhVar.zzjkv != null) {
                        if (nhVar.zzjkv.intValue() < c || nhVar.zzjkv.intValue() > f3258b) {
                            zzawy().zzazf().zze("Invalid sampling rate. Event name, sample rate", nhVar.name, nhVar.zzjkv);
                        } else {
                            arrayMap3.put(nhVar.name, nhVar.zzjkv);
                        }
                    }
                }
            }
        }
        this.f.put(str, arrayMap);
        this.g.put(str, arrayMap2);
        this.h.put(str, arrayMap3);
    }

    private final void d(String str) {
        k();
        zzve();
        ap.zzgm(str);
        if (this.f3259a.get(str) == null) {
            byte[] zzjd = zzaws().zzjd(str);
            if (zzjd == null) {
                this.d.put(str, null);
                this.f.put(str, null);
                this.g.put(str, null);
                this.f3259a.put(str, null);
                this.i.put(str, null);
                this.h.put(str, null);
                return;
            }
            ni a2 = a(str, zzjd);
            this.d.put(str, a(a2));
            a(str, a2);
            this.f3259a.put(str, a2);
            this.i.put(str, null);
        }
    }

    /* access modifiers changed from: protected */
    public final ni a(String str) {
        k();
        zzve();
        ap.zzgm(str);
        d(str);
        return this.f3259a.get(str);
    }

    /* access modifiers changed from: package-private */
    public final String a(String str, String str2) {
        zzve();
        d(str);
        Map map = this.d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final boolean a(String str, byte[] bArr, String str2) {
        byte[] bArr2;
        String str3 = str;
        k();
        zzve();
        ap.zzgm(str);
        ni a2 = a(str, bArr);
        a(str3, a2);
        this.f3259a.put(str3, a2);
        this.i.put(str3, str2);
        this.d.put(str3, a(a2));
        ia zzawl = zzawl();
        nb[] nbVarArr = a2.zzjla;
        ap.checkNotNull(nbVarArr);
        for (nb nbVar : nbVarArr) {
            for (nc ncVar : nbVar.zzjju) {
                String zziq = AppMeasurement.a.zziq(ncVar.zzjjx);
                if (zziq != null) {
                    ncVar.zzjjx = zziq;
                }
                for (nd ndVar : ncVar.zzjjy) {
                    String zziq2 = AppMeasurement.d.zziq(ndVar.zzjkf);
                    if (zziq2 != null) {
                        ndVar.zzjkf = zziq2;
                    }
                }
            }
            for (nf nfVar : nbVar.zzjjt) {
                String zziq3 = AppMeasurement.e.zziq(nfVar.zzjkm);
                if (zziq3 != null) {
                    nfVar.zzjkm = zziq3;
                }
            }
        }
        zzawl.zzaws().a(str3, nbVarArr);
        try {
            a2.zzjla = null;
            bArr2 = new byte[a2.zzho()];
            a2.zza(sp.zzo(bArr2, 0, bArr2.length));
        } catch (IOException e) {
            zzawy().zzazf().zze("Unable to serialize reduced-size config. Storing full config instead. appId", iz.a(str), e);
            bArr2 = bArr;
        }
        id zzaws = zzaws();
        ap.zzgm(str);
        zzaws.zzve();
        zzaws.k();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr2);
        try {
            if (((long) zzaws.b().update("apps", contentValues, "app_id = ?", new String[]{str3})) == 0) {
                zzaws.zzawy().zzazd().zzj("Failed to update remote config (got 0). appId", iz.a(str));
            }
        } catch (SQLiteException e2) {
            zzaws.zzawy().zzazd().zze("Error storing remote config. appId", iz.a(str), e2);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public final String b(String str) {
        zzve();
        return this.i.get(str);
    }

    /* access modifiers changed from: package-private */
    public final boolean b(String str, String str2) {
        zzve();
        d(str);
        if (zzawu().d(str) && na.zzki(str2)) {
            return true;
        }
        if (zzawu().e(str) && na.a(str2)) {
            return true;
        }
        Map map = this.f.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* access modifiers changed from: protected */
    public final void c(String str) {
        zzve();
        this.i.put(str, null);
    }

    /* access modifiers changed from: package-private */
    public final boolean c(String str, String str2) {
        zzve();
        d(str);
        if (FirebaseAnalytics.a.ECOMMERCE_PURCHASE.equals(str2)) {
            return true;
        }
        Map map = this.g.get(str);
        if (map == null) {
            return false;
        }
        Boolean bool = (Boolean) map.get(str2);
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* access modifiers changed from: package-private */
    public final int d(String str, String str2) {
        zzve();
        d(str);
        Map map = this.h.get(str);
        if (map == null) {
            return 1;
        }
        Integer num = (Integer) map.get(str2);
        if (num == null) {
            return 1;
        }
        return num.intValue();
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
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

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }
}
