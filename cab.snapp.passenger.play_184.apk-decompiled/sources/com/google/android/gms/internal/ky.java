package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import com.google.android.gms.c.f;
import com.google.android.gms.c.i;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicReference;

public final class ky extends kw {

    /* renamed from: a  reason: collision with root package name */
    protected lm f3319a;

    /* renamed from: b  reason: collision with root package name */
    private AppMeasurement.b f3320b;
    private final Set<AppMeasurement.c> c = new CopyOnWriteArraySet();
    private boolean d;
    private final AtomicReference<String> f = new AtomicReference<>();

    protected ky(jx jxVar) {
        super(jxVar);
    }

    private final List<AppMeasurement.ConditionalUserProperty> a(String str, String str2, String str3) {
        jb zzazd;
        String str4;
        if (zzawx().zzazs()) {
            zzazd = zzawy().zzazd();
            str4 = "Cannot get conditional user properties from analytics worker thread";
        } else {
            zzawx();
            if (js.zzau()) {
                zzazd = zzawy().zzazd();
                str4 = "Cannot get conditional user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    js zzawx = this.e.zzawx();
                    lc lcVar = new lc(this, atomicReference, str, str2, str3);
                    zzawx.zzg(lcVar);
                    try {
                        atomicReference.wait(5000);
                    } catch (InterruptedException e) {
                        zzawy().zzazf().zze("Interrupted waiting for get conditional user properties", str, e);
                    }
                }
                List<zzcgl> list = (List) atomicReference.get();
                if (list == null) {
                    zzawy().zzazf().zzj("Timed out waiting for get conditional user properties", str);
                    return Collections.emptyList();
                }
                ArrayList arrayList = new ArrayList(list.size());
                for (zzcgl zzcgl : list) {
                    AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
                    conditionalUserProperty.mAppId = str;
                    conditionalUserProperty.mOrigin = str2;
                    conditionalUserProperty.mCreationTimestamp = zzcgl.zziyh;
                    conditionalUserProperty.mName = zzcgl.zziyg.name;
                    conditionalUserProperty.mValue = zzcgl.zziyg.getValue();
                    conditionalUserProperty.mActive = zzcgl.zziyi;
                    conditionalUserProperty.mTriggerEventName = zzcgl.zziyj;
                    if (zzcgl.zziyk != null) {
                        conditionalUserProperty.mTimedOutEventName = zzcgl.zziyk.name;
                        if (zzcgl.zziyk.zzizt != null) {
                            conditionalUserProperty.mTimedOutEventParams = zzcgl.zziyk.zzizt.zzayx();
                        }
                    }
                    conditionalUserProperty.mTriggerTimeout = zzcgl.zziyl;
                    if (zzcgl.zziym != null) {
                        conditionalUserProperty.mTriggeredEventName = zzcgl.zziym.name;
                        if (zzcgl.zziym.zzizt != null) {
                            conditionalUserProperty.mTriggeredEventParams = zzcgl.zziym.zzizt.zzayx();
                        }
                    }
                    conditionalUserProperty.mTriggeredTimestamp = zzcgl.zziyg.zzjji;
                    conditionalUserProperty.mTimeToLive = zzcgl.zziyn;
                    if (zzcgl.zziyo != null) {
                        conditionalUserProperty.mExpiredEventName = zzcgl.zziyo.name;
                        if (zzcgl.zziyo.zzizt != null) {
                            conditionalUserProperty.mExpiredEventParams = zzcgl.zziyo.zzizt.zzayx();
                        }
                    }
                    arrayList.add(conditionalUserProperty);
                }
                return arrayList;
            }
        }
        zzazd.log(str4);
        return Collections.emptyList();
    }

    private final Map<String, Object> a(String str, String str2, String str3, boolean z) {
        jb zzazf;
        String str4;
        if (zzawx().zzazs()) {
            zzazf = zzawy().zzazd();
            str4 = "Cannot get user properties from analytics worker thread";
        } else {
            zzawx();
            if (js.zzau()) {
                zzazf = zzawy().zzazd();
                str4 = "Cannot get user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    js zzawx = this.e.zzawx();
                    ld ldVar = new ld(this, atomicReference, str, str2, str3, z);
                    zzawx.zzg(ldVar);
                    try {
                        atomicReference.wait(5000);
                    } catch (InterruptedException e) {
                        zzawy().zzazf().zzj("Interrupted waiting for get user properties", e);
                    }
                }
                List<zzcln> list = (List) atomicReference.get();
                if (list == null) {
                    zzazf = zzawy().zzazf();
                    str4 = "Timed out waiting for get user properties";
                } else {
                    ArrayMap arrayMap = new ArrayMap(list.size());
                    for (zzcln zzcln : list) {
                        arrayMap.put(zzcln.name, zzcln.getValue());
                    }
                    return arrayMap;
                }
            }
        }
        zzazf.log(str4);
        return Collections.emptyMap();
    }

    private final void a(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        long currentTimeMillis = zzws().currentTimeMillis();
        ap.checkNotNull(conditionalUserProperty);
        ap.zzgm(conditionalUserProperty.mName);
        ap.zzgm(conditionalUserProperty.mOrigin);
        ap.checkNotNull(conditionalUserProperty.mValue);
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        String str = conditionalUserProperty.mName;
        Object obj = conditionalUserProperty.mValue;
        if (zzawu().zzkd(str) != 0) {
            zzawy().zzazd().zzj("Invalid conditional user property name", zzawt().c(str));
        } else if (zzawu().zzl(str, obj) != 0) {
            zzawy().zzazd().zze("Invalid conditional user property value", zzawt().c(str), obj);
        } else {
            Object zzm = zzawu().zzm(str, obj);
            if (zzm == null) {
                zzawy().zzazd().zze("Unable to normalize conditional user property value", zzawt().c(str), obj);
                return;
            }
            conditionalUserProperty.mValue = zzm;
            long j = conditionalUserProperty.mTriggerTimeout;
            if (TextUtils.isEmpty(conditionalUserProperty.mTriggerEventName) || (j <= 15552000000L && j >= 1)) {
                long j2 = conditionalUserProperty.mTimeToLive;
                if (j2 > 15552000000L || j2 < 1) {
                    zzawy().zzazd().zze("Invalid conditional user property time to live", zzawt().c(str), Long.valueOf(j2));
                } else {
                    zzawx().zzg(new la(this, conditionalUserProperty));
                }
            } else {
                zzawy().zzazd().zze("Invalid conditional user property timeout", zzawt().c(str), Long.valueOf(j));
            }
        }
    }

    private final void a(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3) {
        Bundle bundle2;
        Bundle bundle3 = bundle;
        if (bundle3 == null) {
            bundle2 = new Bundle();
        } else {
            Bundle bundle4 = new Bundle(bundle3);
            for (String str3 : bundle4.keySet()) {
                Object obj = bundle4.get(str3);
                if (obj instanceof Bundle) {
                    bundle4.putBundle(str3, new Bundle((Bundle) obj));
                } else {
                    int i = 0;
                    if (obj instanceof Parcelable[]) {
                        Parcelable[] parcelableArr = (Parcelable[]) obj;
                        while (i < parcelableArr.length) {
                            if (parcelableArr[i] instanceof Bundle) {
                                parcelableArr[i] = new Bundle((Bundle) parcelableArr[i]);
                            }
                            i++;
                        }
                    } else if (obj instanceof ArrayList) {
                        ArrayList arrayList = (ArrayList) obj;
                        while (i < arrayList.size()) {
                            Object obj2 = arrayList.get(i);
                            if (obj2 instanceof Bundle) {
                                arrayList.set(i, new Bundle((Bundle) obj2));
                            }
                            i++;
                        }
                    }
                }
            }
            bundle2 = bundle4;
        }
        js zzawx = zzawx();
        lg lgVar = new lg(this, str, str2, j, bundle2, z, z2, z3);
        zzawx.zzg(lgVar);
    }

    private final void a(String str, String str2, long j, Object obj) {
        js zzawx = zzawx();
        lh lhVar = new lh(this, str, str2, obj, j);
        zzawx.zzg(lhVar);
    }

    private final void a(String str, String str2, Bundle bundle, boolean z, boolean z2) {
        a(str, str2, zzws().currentTimeMillis(), bundle, true, z, z2);
    }

    private final void a(String str, String str2, String str3, Bundle bundle) {
        long currentTimeMillis = zzws().currentTimeMillis();
        ap.zzgm(str2);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty = new AppMeasurement.ConditionalUserProperty();
        conditionalUserProperty.mAppId = str;
        conditionalUserProperty.mName = str2;
        conditionalUserProperty.mCreationTimestamp = currentTimeMillis;
        if (str3 != null) {
            conditionalUserProperty.mExpiredEventName = str3;
            conditionalUserProperty.mExpiredEventParams = bundle;
        }
        zzawx().zzg(new lb(this, conditionalUserProperty));
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(4:10|11|12|13) */
    /* JADX WARNING: Code restructure failed: missing block: B:11:?, code lost:
        zzawy().zzazf().log("Interrupted waiting for app instance id");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002c, code lost:
        return null;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x001d */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.String a(long r4) {
        /*
            r3 = this;
            java.util.concurrent.atomic.AtomicReference r0 = new java.util.concurrent.atomic.AtomicReference
            r0.<init>()
            monitor-enter(r0)
            com.google.android.gms.internal.js r1 = r3.zzawx()     // Catch:{ all -> 0x002d }
            com.google.android.gms.internal.lk r2 = new com.google.android.gms.internal.lk     // Catch:{ all -> 0x002d }
            r2.<init>(r3, r0)     // Catch:{ all -> 0x002d }
            r1.zzg(r2)     // Catch:{ all -> 0x002d }
            r0.wait(r4)     // Catch:{ InterruptedException -> 0x001d }
            monitor-exit(r0)     // Catch:{ all -> 0x002d }
            java.lang.Object r4 = r0.get()
            java.lang.String r4 = (java.lang.String) r4
            return r4
        L_0x001d:
            com.google.android.gms.internal.iz r4 = r3.zzawy()     // Catch:{ all -> 0x002d }
            com.google.android.gms.internal.jb r4 = r4.zzazf()     // Catch:{ all -> 0x002d }
            java.lang.String r5 = "Interrupted waiting for app instance id"
            r4.log(r5)     // Catch:{ all -> 0x002d }
            r4 = 0
            monitor-exit(r0)     // Catch:{ all -> 0x002d }
            return r4
        L_0x002d:
            r4 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x002d }
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ky.a(long):java.lang.String");
    }

    /* access modifiers changed from: package-private */
    public final void a(String str) {
        this.f.set(str);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        a((String) null, str, str2, bundle);
    }

    public final void clearConditionalUserPropertyAs(String str, String str2, String str3, Bundle bundle) {
        ap.zzgm(str);
        zzawi();
        a(str, str2, str3, bundle);
    }

    public final f<String> getAppInstanceId() {
        try {
            String d2 = zzawz().d();
            return d2 != null ? i.forResult(d2) : i.call(zzawx().c(), new lj(this));
        } catch (Exception e) {
            zzawy().zzazf().log("Failed to schedule task for getAppInstanceId");
            return i.forException(e);
        }
    }

    public final List<AppMeasurement.ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        return a(null, str, str2);
    }

    public final List<AppMeasurement.ConditionalUserProperty> getConditionalUserPropertiesAs(String str, String str2, String str3) {
        ap.zzgm(str);
        zzawi();
        return a(str, str2, str3);
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public final Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return a((String) null, str, str2, z);
    }

    public final Map<String, Object> getUserPropertiesAs(String str, String str2, String str3, boolean z) {
        ap.zzgm(str);
        zzawi();
        return a(str, str2, str3, z);
    }

    public final void registerOnMeasurementEventListener(AppMeasurement.c cVar) {
        k();
        ap.checkNotNull(cVar);
        if (!this.c.add(cVar)) {
            zzawy().zzazf().log("OnEventListener already registered");
        }
    }

    public final void resetAnalyticsData() {
        zzawx().zzg(new ll(this));
    }

    public final void setConditionalUserProperty(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        ap.checkNotNull(conditionalUserProperty);
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = new AppMeasurement.ConditionalUserProperty(conditionalUserProperty);
        if (!TextUtils.isEmpty(conditionalUserProperty2.mAppId)) {
            zzawy().zzazf().log("Package name should be null when calling setConditionalUserProperty");
        }
        conditionalUserProperty2.mAppId = null;
        a(conditionalUserProperty2);
    }

    public final void setConditionalUserPropertyAs(AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        ap.checkNotNull(conditionalUserProperty);
        ap.zzgm(conditionalUserProperty.mAppId);
        zzawi();
        a(new AppMeasurement.ConditionalUserProperty(conditionalUserProperty));
    }

    public final void setEventInterceptor(AppMeasurement.b bVar) {
        zzve();
        k();
        if (bVar != null) {
            AppMeasurement.b bVar2 = this.f3320b;
            if (bVar != bVar2) {
                ap.zza(bVar2 == null, (Object) "EventInterceptor already set.");
            }
        }
        this.f3320b = bVar;
    }

    public final void setMeasurementEnabled(boolean z) {
        k();
        zzawx().zzg(new kz(this, z));
    }

    public final void setMinimumSessionDuration(long j) {
        zzawx().zzg(new le(this, j));
    }

    public final void setSessionTimeoutDuration(long j) {
        zzawx().zzg(new lf(this, j));
    }

    public final void unregisterOnMeasurementEventListener(AppMeasurement.c cVar) {
        k();
        ap.checkNotNull(cVar);
        if (!this.c.remove(cVar)) {
            zzawy().zzazf().log("OnEventListener had not been registered");
        }
    }

    public final void zza(String str, String str2, Bundle bundle, long j) {
        a(str, str2, j, bundle, false, true, true);
    }

    public final void zza(String str, String str2, Bundle bundle, boolean z) {
        a(str, str2, bundle, this.f3320b == null || na.zzki(str2), true);
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

    public final String zzazn() {
        return this.f.get();
    }

    public final void zzb(String str, String str2, Object obj) {
        ap.zzgm(str);
        long currentTimeMillis = zzws().currentTimeMillis();
        int zzkd = zzawu().zzkd(str2);
        int i = 0;
        if (zzkd != 0) {
            zzawu();
            String zza = na.zza(str2, 24, true);
            if (str2 != null) {
                i = str2.length();
            }
            this.e.zzawu().zza(zzkd, "_ev", zza, i);
        } else if (obj != null) {
            int zzl = zzawu().zzl(str2, obj);
            if (zzl != 0) {
                zzawu();
                String zza2 = na.zza(str2, 24, true);
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    i = String.valueOf(obj).length();
                }
                this.e.zzawu().zza(zzl, "_ev", zza2, i);
                return;
            }
            Object zzm = zzawu().zzm(str2, obj);
            if (zzm != null) {
                a(str, str2, currentTimeMillis, zzm);
            }
        } else {
            a(str, str2, currentTimeMillis, (Object) null);
        }
    }

    public final List<zzcln> zzbq(boolean z) {
        jb zzazf;
        String str;
        k();
        zzawy().zzazi().log("Fetching user attributes (FE)");
        if (zzawx().zzazs()) {
            zzazf = zzawy().zzazd();
            str = "Cannot get all user properties from analytics worker thread";
        } else {
            zzawx();
            if (js.zzau()) {
                zzazf = zzawy().zzazd();
                str = "Cannot get all user properties from main thread";
            } else {
                AtomicReference atomicReference = new AtomicReference();
                synchronized (atomicReference) {
                    this.e.zzawx().zzg(new li(this, atomicReference, z));
                    try {
                        atomicReference.wait(5000);
                    } catch (InterruptedException e) {
                        zzawy().zzazf().zzj("Interrupted waiting for get user properties", e);
                    }
                }
                List<zzcln> list = (List) atomicReference.get();
                if (list != null) {
                    return list;
                }
                zzazf = zzawy().zzazf();
                str = "Timed out waiting for get user properties";
            }
        }
        zzazf.log(str);
        return Collections.emptyList();
    }

    public final void zzc(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, this.f3320b == null || na.zzki(str2), false);
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }

    static /* synthetic */ void a(ky kyVar, boolean z) {
        kyVar.zzve();
        kyVar.k();
        kyVar.zzawy().zzazi().zzj("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        kyVar.zzawz().b(z);
        kyVar.zzawp().c();
    }

    static /* synthetic */ void a(ky kyVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        List list;
        String[] strArr;
        int i;
        int i2;
        ArrayList arrayList;
        long j2;
        ky kyVar2 = kyVar;
        String str4 = str;
        String str5 = str2;
        ap.zzgm(str);
        ap.zzgm(str2);
        ap.checkNotNull(bundle);
        kyVar.zzve();
        kyVar.k();
        if (!kyVar2.e.isEnabled()) {
            kyVar.zzawy().zzazi().log("Event not sent since app measurement is disabled");
            return;
        }
        int i3 = 0;
        if (!kyVar2.d) {
            kyVar2.d = true;
            try {
                try {
                    Class.forName("com.google.android.gms.tagmanager.TagManagerService").getDeclaredMethod("initialize", new Class[]{Context.class}).invoke(null, new Object[]{kyVar.getContext()});
                } catch (Exception e) {
                    kyVar.zzawy().zzazf().zzj("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                kyVar.zzawy().zzazh().log("Tag Manager is not found and thus will not be used");
            }
        }
        boolean equals = "am".equals(str4);
        boolean zzki = na.zzki(str2);
        if (!z || kyVar2.f3320b == null || zzki || equals) {
            Bundle bundle2 = bundle;
            if (kyVar2.e.b()) {
                int zzkb = kyVar.zzawu().zzkb(str5);
                if (zzkb != 0) {
                    kyVar.zzawu();
                    String zza = na.zza(str5, 40, true);
                    if (str5 != null) {
                        i3 = str2.length();
                    }
                    kyVar2.e.zzawu().zza(str3, zzkb, "_ev", zza, i3);
                    return;
                }
                List singletonList = Collections.singletonList("_o");
                Bundle zza2 = kyVar.zzawu().zza(str2, bundle, (List<String>) singletonList, z3, true);
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(zza2);
                long nextLong = kyVar.zzawu().c().nextLong();
                String[] strArr2 = (String[]) zza2.keySet().toArray(new String[bundle.size()]);
                Arrays.sort(strArr2);
                int length = strArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i5 < length) {
                    String str6 = strArr2[i5];
                    Object obj = zza2.get(str6);
                    kyVar.zzawu();
                    ArrayList arrayList3 = arrayList2;
                    Bundle[] zzaf = na.zzaf(obj);
                    if (zzaf != null) {
                        int i6 = i4;
                        zza2.putInt(str6, zzaf.length);
                        i2 = i5;
                        int i7 = 0;
                        while (i7 < zzaf.length) {
                            int i8 = i6;
                            int i9 = i7;
                            String[] strArr3 = strArr2;
                            ArrayList arrayList4 = arrayList3;
                            List list2 = singletonList;
                            Bundle[] bundleArr = zzaf;
                            Bundle zza3 = kyVar.zzawu().zza("_ep", zzaf[i7], (List<String>) singletonList, z3, false);
                            zza3.putString("_en", str5);
                            long j3 = nextLong;
                            zza3.putLong("_eid", j3);
                            zza3.putString("_gn", str6);
                            zza3.putInt("_ll", bundleArr.length);
                            int i10 = i9;
                            zza3.putInt("_i", i10);
                            arrayList4.add(zza3);
                            i7 = i10 + 1;
                            nextLong = j3;
                            zzaf = bundleArr;
                            length = length;
                            singletonList = list2;
                            arrayList3 = arrayList4;
                            strArr2 = strArr3;
                            i6 = i8;
                        }
                        int i11 = i6;
                        i = length;
                        j2 = nextLong;
                        strArr = strArr2;
                        arrayList = arrayList3;
                        list = singletonList;
                        i4 = zzaf.length + i11;
                    } else {
                        i2 = i5;
                        i = length;
                        j2 = nextLong;
                        strArr = strArr2;
                        arrayList = arrayList3;
                        int i12 = i4;
                        list = singletonList;
                    }
                    singletonList = list;
                    arrayList2 = arrayList;
                    strArr2 = strArr;
                    long j4 = j2;
                    i5 = i2 + 1;
                    nextLong = j4;
                    length = i;
                }
                long j5 = nextLong;
                ArrayList arrayList5 = arrayList2;
                int i13 = i4;
                if (i13 != 0) {
                    zza2.putLong("_eid", j5);
                    zza2.putInt("_epc", i13);
                }
                lq zzbao = kyVar.zzawq().zzbao();
                if (zzbao != null && !zza2.containsKey("_sc")) {
                    zzbao.zzjib = true;
                }
                int i14 = 0;
                while (i14 < arrayList5.size()) {
                    Bundle bundle3 = (Bundle) arrayList5.get(i14);
                    String str7 = i14 != 0 ? "_ep" : str5;
                    bundle3.putString("_o", str4);
                    if (!bundle3.containsKey("_sc")) {
                        ln.zza((AppMeasurement.g) zzbao, bundle3);
                    }
                    if (z2) {
                        bundle3 = kyVar.zzawu().a(bundle3);
                    }
                    Bundle bundle4 = bundle3;
                    kyVar.zzawy().zzazi().zze("Logging event (FE)", kyVar.zzawt().a(str5), kyVar.zzawt().a(bundle4));
                    zzcha zzcha = r2;
                    zzcha zzcha2 = new zzcha(str7, new zzcgx(bundle4), str, j);
                    kyVar.zzawp().a(zzcha, str3);
                    if (!equals) {
                        for (AppMeasurement.c onEvent : kyVar2.c) {
                            onEvent.onEvent(str, str2, new Bundle(bundle4), j);
                            String str8 = str3;
                        }
                    }
                    i14++;
                    str4 = str;
                }
                if (kyVar.zzawq().zzbao() != null && AppMeasurement.a.APP_EXCEPTION.equals(str5)) {
                    kyVar.zzaww().zzbs(true);
                }
            }
            return;
        }
        kyVar.zzawy().zzazi().zze("Passing event to registered event handler (FE)", kyVar.zzawt().a(str5), kyVar.zzawt().a(bundle));
        kyVar2.f3320b.interceptEvent(str, str2, bundle, j);
    }

    static /* synthetic */ void a(ky kyVar, String str, String str2, Object obj, long j) {
        ap.zzgm(str);
        ap.zzgm(str2);
        kyVar.zzve();
        kyVar.k();
        if (!kyVar.e.isEnabled()) {
            kyVar.zzawy().zzazi().log("User property not set since app measurement is disabled");
            return;
        }
        if (kyVar.e.b()) {
            kyVar.zzawy().zzazi().zze("Setting user property (FE)", kyVar.zzawt().a(str2), obj);
            zzcln zzcln = new zzcln(str2, j, obj, str);
            kyVar.zzawp().a(zzcln);
        }
    }

    static /* synthetic */ void a(ky kyVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = conditionalUserProperty;
        kyVar.zzve();
        kyVar.k();
        ap.checkNotNull(conditionalUserProperty);
        ap.zzgm(conditionalUserProperty2.mName);
        ap.zzgm(conditionalUserProperty2.mOrigin);
        ap.checkNotNull(conditionalUserProperty2.mValue);
        if (!kyVar.e.isEnabled()) {
            kyVar.zzawy().zzazi().log("Conditional property not sent since Firebase Analytics is disabled");
            return;
        }
        zzcln zzcln = new zzcln(conditionalUserProperty2.mName, conditionalUserProperty2.mTriggeredTimestamp, conditionalUserProperty2.mValue, conditionalUserProperty2.mOrigin);
        try {
            zzcha a2 = kyVar.zzawu().a(conditionalUserProperty2.mTriggeredEventName, conditionalUserProperty2.mTriggeredEventParams, conditionalUserProperty2.mOrigin, 0);
            zzcha a3 = kyVar.zzawu().a(conditionalUserProperty2.mTimedOutEventName, conditionalUserProperty2.mTimedOutEventParams, conditionalUserProperty2.mOrigin, 0);
            zzcha a4 = kyVar.zzawu().a(conditionalUserProperty2.mExpiredEventName, conditionalUserProperty2.mExpiredEventParams, conditionalUserProperty2.mOrigin, 0);
            zzcgl zzcgl = r2;
            zzcgl zzcgl2 = new zzcgl(conditionalUserProperty2.mAppId, conditionalUserProperty2.mOrigin, zzcln, conditionalUserProperty2.mCreationTimestamp, false, conditionalUserProperty2.mTriggerEventName, a3, conditionalUserProperty2.mTriggerTimeout, a2, conditionalUserProperty2.mTimeToLive, a4);
            kyVar.zzawp().a(zzcgl);
        } catch (IllegalArgumentException unused) {
        }
    }

    static /* synthetic */ void b(ky kyVar, AppMeasurement.ConditionalUserProperty conditionalUserProperty) {
        AppMeasurement.ConditionalUserProperty conditionalUserProperty2 = conditionalUserProperty;
        kyVar.zzve();
        kyVar.k();
        ap.checkNotNull(conditionalUserProperty);
        ap.zzgm(conditionalUserProperty2.mName);
        if (!kyVar.e.isEnabled()) {
            kyVar.zzawy().zzazi().log("Conditional property not cleared since Firebase Analytics is disabled");
            return;
        }
        zzcln zzcln = new zzcln(conditionalUserProperty2.mName, 0, null, null);
        try {
            zzcha a2 = kyVar.zzawu().a(conditionalUserProperty2.mExpiredEventName, conditionalUserProperty2.mExpiredEventParams, conditionalUserProperty2.mOrigin, conditionalUserProperty2.mCreationTimestamp);
            String str = conditionalUserProperty2.mAppId;
            String str2 = conditionalUserProperty2.mOrigin;
            long j = conditionalUserProperty2.mCreationTimestamp;
            boolean z = conditionalUserProperty2.mActive;
            String str3 = conditionalUserProperty2.mTriggerEventName;
            long j2 = conditionalUserProperty2.mTimeToLive;
            zzcgl zzcgl = r2;
            zzcgl zzcgl2 = new zzcgl(str, str2, zzcln, j, z, str3, null, conditionalUserProperty2.mTriggerTimeout, null, j2, a2);
            kyVar.zzawp().a(zzcgl);
        } catch (IllegalArgumentException unused) {
        }
    }
}
