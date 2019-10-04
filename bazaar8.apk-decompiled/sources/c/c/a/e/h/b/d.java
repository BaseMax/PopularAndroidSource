package c.c.a.e.h.b;

import c.c.a.c.b.i;
import c.c.a.c.c.a;
import com.crashlytics.android.answers.SessionEventTransform;
import com.crashlytics.android.core.MetaDataStore;
import com.farsitel.bazaar.data.dto.responsedto.ReferrerDtoKt;
import h.f.b.j;
import h.j.k;
import h.j.o;
import h.k.c;
import j.E;
import j.F;
import j.P;
import j.S;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import org.json.JSONArray;
import org.json.JSONObject;

/* compiled from: ReferrerInterceptor.kt */
public final class d implements E {
    public P a(E.a aVar) {
        byte[] bArr;
        j.b(aVar, "chain");
        P a2 = aVar.a(aVar.e());
        S s = a2.s();
        String x = s != null ? s.x() : null;
        try {
            JSONObject jSONObject = new JSONObject(x);
            a(this, jSONObject, null, 2, null);
            P.a B = a2.B();
            F v = s != null ? s.v() : null;
            String jSONObject2 = jSONObject.toString();
            j.a((Object) jSONObject2, "jsonObject.toString()");
            Charset charset = c.f14613a;
            if (jSONObject2 != null) {
                byte[] bytes = jSONObject2.getBytes(charset);
                j.a((Object) bytes, "(this as java.lang.String).getBytes(charset)");
                B.a(S.a(v, bytes));
                P a3 = B.a();
                j.a((Object) a3, "response.newBuilder().bo…).toByteArray())).build()");
                return a3;
            }
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        } catch (Exception e2) {
            a.f4699b.b(new Throwable("Referrer error in url: " + r2.g() + " with response: " + x, e2));
            P.a B2 = a2.B();
            F v2 = s != null ? s.v() : null;
            if (x != null) {
                Charset charset2 = c.f14613a;
                if (x != null) {
                    bArr = x.getBytes(charset2);
                    j.a((Object) bArr, "(this as java.lang.String).getBytes(charset)");
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
            } else {
                bArr = null;
            }
            if (bArr != null) {
                B2.a(S.a(v2, bArr));
                P a4 = B2.a();
                j.a((Object) a4, "response.newBuilder().bo…toByteArray()!!)).build()");
                return a4;
            }
            j.a();
            throw null;
        }
    }

    public static /* synthetic */ void a(d dVar, JSONObject jSONObject, List list, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list = new ArrayList();
        }
        dVar.a(jSONObject, list);
    }

    public final void a(JSONObject jSONObject, List<JSONObject> list) {
        if (jSONObject != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(list);
            if (jSONObject.has("baseReferrers")) {
                String string = jSONObject.getString("baseReferrers");
                j.a((Object) string, "json.getString(\"baseReferrers\")");
                if (i.c(string)) {
                    JSONArray jSONArray = jSONObject.getJSONArray("baseReferrers");
                    j.a((Object) jSONArray, "baseReferrers");
                    Iterator<JSONObject> a2 = e.a(jSONArray);
                    while (a2.hasNext()) {
                        JSONObject next = a2.next();
                        if (next.has(SessionEventTransform.TYPE_KEY) && next.getInt(SessionEventTransform.TYPE_KEY) != 0) {
                            arrayList.add(next);
                        }
                    }
                }
                jSONObject.put(ReferrerDtoKt.REFERRER_KEY, arrayList);
            } else if (jSONObject.has("referrer")) {
                String string2 = jSONObject.getString("referrer");
                if (!(string2 == null || string2.length() == 0)) {
                    String string3 = jSONObject.getString("referrer");
                    j.a((Object) string3, "json.getString(\"referrer\")");
                    if (i.c(string3)) {
                        JSONObject jSONObject2 = jSONObject.getJSONObject("referrer");
                        if (jSONObject2.has(SessionEventTransform.TYPE_KEY) && jSONObject2.getInt(SessionEventTransform.TYPE_KEY) != 0) {
                            j.a((Object) jSONObject2, "referrer");
                            arrayList.add(jSONObject2);
                        }
                        jSONObject.put(ReferrerDtoKt.REFERRER_KEY, arrayList);
                    }
                }
                arrayList.add(new JSONObject());
                a.f4699b.b(new Throwable("Invalid value for referrer"));
                jSONObject.put(ReferrerDtoKt.REFERRER_KEY, arrayList);
            }
            Iterator<String> keys = jSONObject.keys();
            j.a((Object) keys, MetaDataStore.KEYDATA_SUFFIX);
            List<T> c2 = o.c(k.a(keys));
            int size = c2.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = jSONObject.get((String) c2.get(i2));
                if (obj instanceof JSONObject) {
                    a((JSONObject) obj, arrayList);
                } else if (obj instanceof JSONArray) {
                    Iterator<JSONObject> a3 = e.a((JSONArray) obj);
                    while (a3.hasNext()) {
                        a(a3.next(), arrayList);
                    }
                }
            }
        }
    }
}
