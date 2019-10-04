package com.google.android.gms.analytics;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.ce;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class e {

    public static class a extends c<a> {
        public a() {
            set("&t", NotificationCompat.CATEGORY_EVENT);
        }

        public a(String str, String str2) {
            this();
            setCategory(str);
            setAction(str2);
        }

        public final a setAction(String str) {
            set("&ea", str);
            return this;
        }

        public final a setCategory(String str) {
            set("&ec", str);
            return this;
        }

        public final a setLabel(String str) {
            set("&el", str);
            return this;
        }

        public final a setValue(long j) {
            set("&ev", Long.toString(j));
            return this;
        }
    }

    public static class b extends c<b> {
        public b() {
            set("&t", "exception");
        }

        public final b setDescription(String str) {
            set("&exd", str);
            return this;
        }

        public final b setFatal(boolean z) {
            set("&exf", ce.zzak(z));
            return this;
        }
    }

    public static class c<T extends c> {

        /* renamed from: a  reason: collision with root package name */
        private Map<String, String> f2574a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.gms.analytics.a.b f2575b;
        private Map<String, List<com.google.android.gms.analytics.a.a>> c = new HashMap();
        private List<com.google.android.gms.analytics.a.c> d = new ArrayList();
        private List<com.google.android.gms.analytics.a.a> e = new ArrayList();

        protected c() {
        }

        private final T a(String str, String str2) {
            if (str2 != null) {
                this.f2574a.put(str, str2);
            }
            return this;
        }

        public T addImpression(com.google.android.gms.analytics.a.a aVar, String str) {
            if (aVar == null) {
                bo.zzcu("product should be non-null");
                return this;
            }
            if (str == null) {
                str = "";
            }
            if (!this.c.containsKey(str)) {
                this.c.put(str, new ArrayList());
            }
            this.c.get(str).add(aVar);
            return this;
        }

        public T addProduct(com.google.android.gms.analytics.a.a aVar) {
            if (aVar == null) {
                bo.zzcu("product should be non-null");
                return this;
            }
            this.e.add(aVar);
            return this;
        }

        public T addPromotion(com.google.android.gms.analytics.a.c cVar) {
            if (cVar == null) {
                bo.zzcu("promotion should be non-null");
                return this;
            }
            this.d.add(cVar);
            return this;
        }

        public Map<String, String> build() {
            HashMap hashMap = new HashMap(this.f2574a);
            com.google.android.gms.analytics.a.b bVar = this.f2575b;
            if (bVar != null) {
                hashMap.putAll(bVar.build());
            }
            int i = 1;
            for (com.google.android.gms.analytics.a.c zzdr : this.d) {
                hashMap.putAll(zzdr.zzdr(l.zzao(i)));
                i++;
            }
            int i2 = 1;
            for (com.google.android.gms.analytics.a.a zzdr2 : this.e) {
                hashMap.putAll(zzdr2.zzdr(l.zzam(i2)));
                i2++;
            }
            int i3 = 1;
            for (Map.Entry next : this.c.entrySet()) {
                String zzar = l.zzar(i3);
                int i4 = 1;
                for (com.google.android.gms.analytics.a.a aVar : (List) next.getValue()) {
                    String valueOf = String.valueOf(zzar);
                    String valueOf2 = String.valueOf(l.zzaq(i4));
                    hashMap.putAll(aVar.zzdr(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)));
                    i4++;
                }
                if (!TextUtils.isEmpty((CharSequence) next.getKey())) {
                    String valueOf3 = String.valueOf(zzar);
                    hashMap.put("nm".length() != 0 ? valueOf3.concat("nm") : new String(valueOf3), (String) next.getKey());
                }
                i3++;
            }
            return hashMap;
        }

        public final T set(String str, String str2) {
            if (str != null) {
                this.f2574a.put(str, str2);
            } else {
                bo.zzcu("HitBuilder.set() called with a null paramName.");
            }
            return this;
        }

        public final T setAll(Map<String, String> map) {
            if (map == null) {
                return this;
            }
            this.f2574a.putAll(new HashMap(map));
            return this;
        }

        public T setCampaignParamsFromUrl(String str) {
            String zzej = ce.zzej(str);
            if (TextUtils.isEmpty(zzej)) {
                return this;
            }
            Map<String, String> zzeh = ce.zzeh(zzej);
            a("&cc", zzeh.get("utm_content"));
            a("&cm", zzeh.get("utm_medium"));
            a("&cn", zzeh.get("utm_campaign"));
            a("&cs", zzeh.get("utm_source"));
            a("&ck", zzeh.get("utm_term"));
            a("&ci", zzeh.get("utm_id"));
            a("&anid", zzeh.get("anid"));
            a("&gclid", zzeh.get("gclid"));
            a("&dclid", zzeh.get("dclid"));
            a("&aclid", zzeh.get(FirebaseAnalytics.b.ACLID));
            a("&gmob_t", zzeh.get("gmob_t"));
            return this;
        }

        public T setCustomDimension(int i, String str) {
            set(l.zzai(i), str);
            return this;
        }

        public T setCustomMetric(int i, float f) {
            set(l.zzak(i), Float.toString(f));
            return this;
        }

        public T setNewSession() {
            set("&sc", "start");
            return this;
        }

        public T setNonInteraction(boolean z) {
            set("&ni", ce.zzak(z));
            return this;
        }

        public T setProductAction(com.google.android.gms.analytics.a.b bVar) {
            this.f2575b = bVar;
            return this;
        }

        public T setPromotionAction(String str) {
            this.f2574a.put("&promoa", str);
            return this;
        }
    }

    public static class d extends c<d> {
        public d() {
            set("&t", "screenview");
        }
    }
}
