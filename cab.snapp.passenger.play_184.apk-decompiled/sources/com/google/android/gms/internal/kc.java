package com.google.android.gms.internal;

import android.os.Binder;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.s;
import com.google.android.gms.common.t;
import com.google.android.gms.common.util.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;

public final class kc extends is {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public final jx f3279a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f3280b;
    private String c;

    public kc(jx jxVar) {
        this(jxVar, (byte) 0);
    }

    private kc(jx jxVar, byte b2) {
        ap.checkNotNull(jxVar);
        this.f3279a = jxVar;
        this.c = null;
    }

    private final void a(zzcgi zzcgi) {
        ap.checkNotNull(zzcgi);
        a(zzcgi.packageName, false);
        this.f3279a.zzawu().zzkg(zzcgi.zzixs);
    }

    private final void a(String str, boolean z) {
        boolean z2;
        if (!TextUtils.isEmpty(str)) {
            if (z) {
                try {
                    if (this.f3280b == null) {
                        if (!"com.google.android.gms".equals(this.c) && !r.zzf(this.f3279a.getContext(), Binder.getCallingUid())) {
                            if (!t.zzci(this.f3279a.getContext()).zzbq(Binder.getCallingUid())) {
                                z2 = false;
                                this.f3280b = Boolean.valueOf(z2);
                            }
                        }
                        z2 = true;
                        this.f3280b = Boolean.valueOf(z2);
                    }
                    if (this.f3280b.booleanValue()) {
                        return;
                    }
                } catch (SecurityException e) {
                    this.f3279a.zzawy().zzazd().zzj("Measurement Service called with invalid calling package. appId", iz.a(str));
                    throw e;
                }
            }
            if (this.c == null && s.zzb(this.f3279a.getContext(), Binder.getCallingUid(), str)) {
                this.c = str;
            }
            if (!str.equals(this.c)) {
                throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[]{str}));
            }
            return;
        }
        this.f3279a.zzawy().zzazd().log("Measurement Service called without app package");
        throw new SecurityException("Measurement Service called without app package");
    }

    public final List<zzcln> zza(zzcgi zzcgi, boolean z) {
        a(zzcgi);
        try {
            List<mz> list = (List) this.f3279a.zzawx().zzc(new ks(this, zzcgi)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (mz mzVar : list) {
                if (z || !na.zzki(mzVar.c)) {
                    arrayList.add(new zzcln(mzVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f3279a.zzawy().zzazd().zze("Failed to get user attributes. appId", iz.a(zzcgi.packageName), e);
            return null;
        }
    }

    public final List<zzcgl> zza(String str, String str2, zzcgi zzcgi) {
        a(zzcgi);
        try {
            return (List) this.f3279a.zzawx().zzc(new kk(this, zzcgi, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f3279a.zzawy().zzazd().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }

    public final List<zzcln> zza(String str, String str2, String str3, boolean z) {
        a(str, true);
        try {
            List<mz> list = (List) this.f3279a.zzawx().zzc(new kj(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (mz mzVar : list) {
                if (z || !na.zzki(mzVar.c)) {
                    arrayList.add(new zzcln(mzVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f3279a.zzawy().zzazd().zze("Failed to get user attributes. appId", iz.a(str), e);
            return Collections.emptyList();
        }
    }

    public final List<zzcln> zza(String str, String str2, boolean z, zzcgi zzcgi) {
        a(zzcgi);
        try {
            List<mz> list = (List) this.f3279a.zzawx().zzc(new ki(this, zzcgi, str, str2)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (mz mzVar : list) {
                if (z || !na.zzki(mzVar.c)) {
                    arrayList.add(new zzcln(mzVar));
                }
            }
            return arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f3279a.zzawy().zzazd().zze("Failed to get user attributes. appId", iz.a(zzcgi.packageName), e);
            return Collections.emptyList();
        }
    }

    public final void zza(long j, String str, String str2, String str3) {
        js zzawx = this.f3279a.zzawx();
        ku kuVar = new ku(this, str2, str3, str, j);
        zzawx.zzg(kuVar);
    }

    public final void zza(zzcgi zzcgi) {
        a(zzcgi);
        kt ktVar = new kt(this, zzcgi);
        if (this.f3279a.zzawx().zzazs()) {
            ktVar.run();
        } else {
            this.f3279a.zzawx().zzg(ktVar);
        }
    }

    public final void zza(zzcgl zzcgl, zzcgi zzcgi) {
        js zzawx;
        Runnable kfVar;
        ap.checkNotNull(zzcgl);
        ap.checkNotNull(zzcgl.zziyg);
        a(zzcgi);
        zzcgl zzcgl2 = new zzcgl(zzcgl);
        zzcgl2.packageName = zzcgi.packageName;
        if (zzcgl.zziyg.getValue() == null) {
            zzawx = this.f3279a.zzawx();
            kfVar = new ke(this, zzcgl2, zzcgi);
        } else {
            zzawx = this.f3279a.zzawx();
            kfVar = new kf(this, zzcgl2, zzcgi);
        }
        zzawx.zzg(kfVar);
    }

    public final void zza(zzcha zzcha, zzcgi zzcgi) {
        ap.checkNotNull(zzcha);
        a(zzcgi);
        this.f3279a.zzawx().zzg(new kn(this, zzcha, zzcgi));
    }

    public final void zza(zzcha zzcha, String str, String str2) {
        ap.checkNotNull(zzcha);
        ap.zzgm(str);
        a(str, true);
        this.f3279a.zzawx().zzg(new ko(this, zzcha, str));
    }

    public final void zza(zzcln zzcln, zzcgi zzcgi) {
        js zzawx;
        Runnable krVar;
        ap.checkNotNull(zzcln);
        a(zzcgi);
        if (zzcln.getValue() == null) {
            zzawx = this.f3279a.zzawx();
            krVar = new kq(this, zzcln, zzcgi);
        } else {
            zzawx = this.f3279a.zzawx();
            krVar = new kr(this, zzcln, zzcgi);
        }
        zzawx.zzg(krVar);
    }

    public final byte[] zza(zzcha zzcha, String str) {
        ap.zzgm(str);
        ap.checkNotNull(zzcha);
        a(str, true);
        this.f3279a.zzawy().zzazi().zzj("Log and bundle. event", this.f3279a.zzawt().a(zzcha.name));
        long nanoTime = this.f3279a.zzws().nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) this.f3279a.zzawx().zzd(new kp(this, zzcha, str)).get();
            if (bArr == null) {
                this.f3279a.zzawy().zzazd().zzj("Log and bundle returned null. appId", iz.a(str));
                bArr = new byte[0];
            }
            this.f3279a.zzawy().zzazi().zzd("Log and bundle processed. event, size, time_ms", this.f3279a.zzawt().a(zzcha.name), Integer.valueOf(bArr.length), Long.valueOf((this.f3279a.zzws().nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException | ExecutionException e) {
            this.f3279a.zzawy().zzazd().zzd("Failed to log and bundle. appId, event, error", iz.a(str), this.f3279a.zzawt().a(zzcha.name), e);
            return null;
        }
    }

    public final void zzb(zzcgi zzcgi) {
        a(zzcgi);
        this.f3279a.zzawx().zzg(new kd(this, zzcgi));
    }

    public final void zzb(zzcgl zzcgl) {
        js zzawx;
        Runnable khVar;
        ap.checkNotNull(zzcgl);
        ap.checkNotNull(zzcgl.zziyg);
        a(zzcgl.packageName, true);
        zzcgl zzcgl2 = new zzcgl(zzcgl);
        if (zzcgl.zziyg.getValue() == null) {
            zzawx = this.f3279a.zzawx();
            khVar = new kg(this, zzcgl2);
        } else {
            zzawx = this.f3279a.zzawx();
            khVar = new kh(this, zzcgl2);
        }
        zzawx.zzg(khVar);
    }

    public final String zzc(zzcgi zzcgi) {
        a(zzcgi);
        return this.f3279a.zzjx(zzcgi.packageName);
    }

    public final void zzd(zzcgi zzcgi) {
        a(zzcgi.packageName, false);
        this.f3279a.zzawx().zzg(new km(this, zzcgi));
    }

    public final List<zzcgl> zzj(String str, String str2, String str3) {
        a(str, true);
        try {
            return (List) this.f3279a.zzawx().zzc(new kl(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f3279a.zzawy().zzazd().zzj("Failed to get conditional user properties", e);
            return Collections.emptyList();
        }
    }
}
