package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;

public final class ix extends kw {

    /* renamed from: a  reason: collision with root package name */
    private static String[] f3226a = new String[AppMeasurement.a.zziwg.length];

    /* renamed from: b  reason: collision with root package name */
    private static String[] f3227b = new String[AppMeasurement.d.zziwi.length];
    private static String[] c = new String[AppMeasurement.e.zziwn.length];

    ix(jx jxVar) {
        super(jxVar);
    }

    private final String a(zzcgx zzcgx) {
        if (zzcgx == null) {
            return null;
        }
        return !c() ? zzcgx.toString() : a(zzcgx.zzayx());
    }

    private static String a(String str, String[] strArr, String[] strArr2, String[] strArr3) {
        String str2;
        ap.checkNotNull(strArr);
        ap.checkNotNull(strArr2);
        ap.checkNotNull(strArr3);
        boolean z = true;
        ap.checkArgument(strArr.length == strArr2.length);
        if (strArr.length != strArr3.length) {
            z = false;
        }
        ap.checkArgument(z);
        for (int i = 0; i < strArr.length; i++) {
            if (na.zzas(str, strArr[i])) {
                synchronized (strArr3) {
                    if (strArr3[i] == null) {
                        strArr3[i] = strArr2[i] + "(" + strArr[i] + ")";
                    }
                    str2 = strArr3[i];
                }
                return str2;
            }
        }
        return str;
    }

    private static void a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            sb.append("  ");
        }
    }

    private final void a(StringBuilder sb, int i, nd ndVar) {
        String str;
        if (ndVar != null) {
            a(sb, i);
            sb.append("filter {\n");
            a(sb, i, "complement", (Object) ndVar.zzjke);
            a(sb, i, "param_name", (Object) b(ndVar.zzjkf));
            int i2 = i + 1;
            ng ngVar = ndVar.zzjkc;
            if (ngVar != null) {
                a(sb, i2);
                sb.append("string_filter");
                sb.append(" {\n");
                if (ngVar.zzjko != null) {
                    switch (ngVar.zzjko.intValue()) {
                        case 1:
                            str = "REGEXP";
                            break;
                        case 2:
                            str = "BEGINS_WITH";
                            break;
                        case 3:
                            str = "ENDS_WITH";
                            break;
                        case 4:
                            str = "PARTIAL";
                            break;
                        case 5:
                            str = "EXACT";
                            break;
                        case 6:
                            str = "IN_LIST";
                            break;
                        default:
                            str = "UNKNOWN_MATCH_TYPE";
                            break;
                    }
                    a(sb, i2, "match_type", (Object) str);
                }
                a(sb, i2, "expression", (Object) ngVar.zzjkp);
                a(sb, i2, "case_sensitive", (Object) ngVar.zzjkq);
                if (ngVar.zzjkr.length > 0) {
                    a(sb, i2 + 1);
                    sb.append("expression_list {\n");
                    for (String append : ngVar.zzjkr) {
                        a(sb, i2 + 2);
                        sb.append(append);
                        sb.append("\n");
                    }
                    sb.append("}\n");
                }
                a(sb, i2);
                sb.append("}\n");
            }
            a(sb, i2, "number_filter", ndVar.zzjkd);
            a(sb, i);
            sb.append("}\n");
        }
    }

    private static void a(StringBuilder sb, int i, String str, ne neVar) {
        if (neVar != null) {
            a(sb, i);
            sb.append(str);
            sb.append(" {\n");
            if (neVar.zzjkg != null) {
                int intValue = neVar.zzjkg.intValue();
                a(sb, i, "comparison_type", (Object) intValue != 1 ? intValue != 2 ? intValue != 3 ? intValue != 4 ? "UNKNOWN_COMPARISON_TYPE" : "BETWEEN" : "EQUAL" : "GREATER_THAN" : "LESS_THAN");
            }
            a(sb, i, "match_as_float", (Object) neVar.zzjkh);
            a(sb, i, "comparison_value", (Object) neVar.zzjki);
            a(sb, i, "min_comparison_value", (Object) neVar.zzjkj);
            a(sb, i, "max_comparison_value", (Object) neVar.zzjkk);
            a(sb, i);
            sb.append("}\n");
        }
    }

    private static void a(StringBuilder sb, int i, String str, Object obj) {
        if (obj != null) {
            a(sb, i + 1);
            sb.append(str);
            sb.append(": ");
            sb.append(obj);
            sb.append(10);
        }
    }

    private static void a(StringBuilder sb, String str, np npVar) {
        if (npVar != null) {
            a(sb, 3);
            sb.append(str);
            sb.append(" {\n");
            int i = 0;
            if (npVar.zzjmq != null) {
                a(sb, 4);
                sb.append("results: ");
                long[] jArr = npVar.zzjmq;
                int length = jArr.length;
                int i2 = 0;
                int i3 = 0;
                while (i2 < length) {
                    Long valueOf = Long.valueOf(jArr[i2]);
                    int i4 = i3 + 1;
                    if (i3 != 0) {
                        sb.append(", ");
                    }
                    sb.append(valueOf);
                    i2++;
                    i3 = i4;
                }
                sb.append(10);
            }
            if (npVar.zzjmp != null) {
                a(sb, 4);
                sb.append("status: ");
                long[] jArr2 = npVar.zzjmp;
                int length2 = jArr2.length;
                int i5 = 0;
                while (i < length2) {
                    Long valueOf2 = Long.valueOf(jArr2[i]);
                    int i6 = i5 + 1;
                    if (i5 != 0) {
                        sb.append(", ");
                    }
                    sb.append(valueOf2);
                    i++;
                    i5 = i6;
                }
                sb.append(10);
            }
            a(sb, 3);
            sb.append("}\n");
        }
    }

    private static void a(StringBuilder sb, nk[] nkVarArr) {
        if (nkVarArr != null) {
            for (nk nkVar : nkVarArr) {
                if (nkVar != null) {
                    a(sb, 2);
                    sb.append("audience_membership {\n");
                    a(sb, 2, "audience_id", (Object) nkVar.zzjjs);
                    a(sb, 2, "new_audience", (Object) nkVar.zzjlf);
                    a(sb, "current_data", nkVar.zzjld);
                    a(sb, "previous_data", nkVar.zzjle);
                    a(sb, 2);
                    sb.append("}\n");
                }
            }
        }
    }

    private final void a(StringBuilder sb, nl[] nlVarArr) {
        if (nlVarArr != null) {
            for (nl nlVar : nlVarArr) {
                if (nlVar != null) {
                    a(sb, 2);
                    sb.append("event {\n");
                    a(sb, 2, "name", (Object) a(nlVar.name));
                    a(sb, 2, "timestamp_millis", (Object) nlVar.zzjli);
                    a(sb, 2, "previous_timestamp_millis", (Object) nlVar.zzjlj);
                    a(sb, 2, "count", (Object) nlVar.count);
                    nm[] nmVarArr = nlVar.zzjlh;
                    if (nmVarArr != null) {
                        for (nm nmVar : nmVarArr) {
                            if (nmVar != null) {
                                a(sb, 3);
                                sb.append("param {\n");
                                a(sb, 3, "name", (Object) b(nmVar.name));
                                a(sb, 3, "string_value", (Object) nmVar.zzgcc);
                                a(sb, 3, "int_value", (Object) nmVar.zzjll);
                                a(sb, 3, "double_value", (Object) nmVar.zzjjl);
                                a(sb, 3);
                                sb.append("}\n");
                            }
                        }
                    }
                    a(sb, 2);
                    sb.append("}\n");
                }
            }
        }
    }

    private final void a(StringBuilder sb, nq[] nqVarArr) {
        if (nqVarArr != null) {
            for (nq nqVar : nqVarArr) {
                if (nqVar != null) {
                    a(sb, 2);
                    sb.append("user_property {\n");
                    a(sb, 2, "set_timestamp_millis", (Object) nqVar.zzjms);
                    a(sb, 2, "name", (Object) c(nqVar.name));
                    a(sb, 2, "string_value", (Object) nqVar.zzgcc);
                    a(sb, 2, "int_value", (Object) nqVar.zzjll);
                    a(sb, 2, "double_value", (Object) nqVar.zzjjl);
                    a(sb, 2);
                    sb.append("}\n");
                }
            }
        }
    }

    private final boolean c() {
        return this.e.zzawy().a(3);
    }

    /* access modifiers changed from: protected */
    public final String a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        if (!c()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        for (String str : bundle.keySet()) {
            sb.append(sb.length() != 0 ? ", " : "Bundle[{");
            sb.append(b(str));
            sb.append("=");
            sb.append(bundle.get(str));
        }
        sb.append("}]");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public final String a(ik ikVar) {
        if (ikVar == null) {
            return null;
        }
        if (!c()) {
            return ikVar.toString();
        }
        return "Event{appId='" + ikVar.f3211a + "', name='" + a(ikVar.f3212b) + "', params=" + a(ikVar.e) + "}";
    }

    /* access modifiers changed from: protected */
    public final String a(nc ncVar) {
        if (ncVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nevent_filter {\n");
        a(sb, 0, "filter_id", (Object) ncVar.zzjjw);
        a(sb, 0, "event_name", (Object) a(ncVar.zzjjx));
        a(sb, 1, "event_count_filter", ncVar.zzjka);
        sb.append("  filters {\n");
        for (nd a2 : ncVar.zzjjy) {
            a(sb, 2, a2);
        }
        a(sb, 1);
        sb.append("}\n}\n");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public final String a(nf nfVar) {
        if (nfVar == null) {
            return "null";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\nproperty_filter {\n");
        a(sb, 0, "filter_id", (Object) nfVar.zzjjw);
        a(sb, 0, "property_name", (Object) c(nfVar.zzjkm));
        a(sb, 1, nfVar.zzjkn);
        sb.append("}\n");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public final String a(nn nnVar) {
        StringBuilder sb = new StringBuilder();
        sb.append("\nbatch {\n");
        if (nnVar.zzjlm != null) {
            for (no noVar : nnVar.zzjlm) {
                if (!(noVar == null || noVar == null)) {
                    a(sb, 1);
                    sb.append("bundle {\n");
                    a(sb, 1, "protocol_version", (Object) noVar.zzjlo);
                    a(sb, 1, "platform", (Object) noVar.zzjlw);
                    a(sb, 1, "gmp_version", (Object) noVar.zzjma);
                    a(sb, 1, "uploading_gmp_version", (Object) noVar.zzjmb);
                    a(sb, 1, "config_version", (Object) noVar.zzjmn);
                    a(sb, 1, "gmp_app_id", (Object) noVar.zzixs);
                    a(sb, 1, "app_id", (Object) noVar.zzcn);
                    a(sb, 1, "app_version", (Object) noVar.zzifm);
                    a(sb, 1, "app_version_major", (Object) noVar.zzjmj);
                    a(sb, 1, "firebase_instance_id", (Object) noVar.zziya);
                    a(sb, 1, "dev_cert_hash", (Object) noVar.zzjmf);
                    a(sb, 1, "app_store", (Object) noVar.zzixt);
                    a(sb, 1, "upload_timestamp_millis", (Object) noVar.zzjlr);
                    a(sb, 1, "start_timestamp_millis", (Object) noVar.zzjls);
                    a(sb, 1, "end_timestamp_millis", (Object) noVar.zzjlt);
                    a(sb, 1, "previous_bundle_start_timestamp_millis", (Object) noVar.zzjlu);
                    a(sb, 1, "previous_bundle_end_timestamp_millis", (Object) noVar.zzjlv);
                    a(sb, 1, "app_instance_id", (Object) noVar.zzjme);
                    a(sb, 1, "resettable_device_id", (Object) noVar.zzjmc);
                    a(sb, 1, "device_id", (Object) noVar.zzjmm);
                    a(sb, 1, "limited_ad_tracking", (Object) noVar.zzjmd);
                    a(sb, 1, "os_version", (Object) noVar.zzdb);
                    a(sb, 1, "device_model", (Object) noVar.zzjlx);
                    a(sb, 1, "user_default_language", (Object) noVar.zzjly);
                    a(sb, 1, "time_zone_offset_minutes", (Object) noVar.zzjlz);
                    a(sb, 1, "bundle_sequential_index", (Object) noVar.zzjmg);
                    a(sb, 1, "service_upload", (Object) noVar.zzjmh);
                    a(sb, 1, "health_monitor", (Object) noVar.zzixw);
                    if (noVar.zzfkk.longValue() != 0) {
                        a(sb, 1, "android_id", (Object) noVar.zzfkk);
                    }
                    a(sb, noVar.zzjlq);
                    a(sb, noVar.zzjmi);
                    a(sb, noVar.zzjlp);
                    a(sb, 1);
                    sb.append("}\n");
                }
            }
        }
        sb.append("}\n");
        return sb.toString();
    }

    /* access modifiers changed from: protected */
    public final String a(zzcha zzcha) {
        if (zzcha == null) {
            return null;
        }
        if (!c()) {
            return zzcha.toString();
        }
        return "origin=" + zzcha.zziyf + ",name=" + a(zzcha.name) + ",params=" + a(zzcha.zzizt);
    }

    /* access modifiers changed from: protected */
    public final String a(String str) {
        if (str == null) {
            return null;
        }
        return !c() ? str : a(str, AppMeasurement.a.zziwh, AppMeasurement.a.zziwg, f3226a);
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final String b(String str) {
        if (str == null) {
            return null;
        }
        return !c() ? str : a(str, AppMeasurement.d.zziwj, AppMeasurement.d.zziwi, f3227b);
    }

    /* access modifiers changed from: protected */
    public final String c(String str) {
        if (str == null) {
            return null;
        }
        if (!c()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return a(str, AppMeasurement.e.zziwo, AppMeasurement.e.zziwn, c);
        }
        return "experiment_id" + "(" + str + ")";
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
