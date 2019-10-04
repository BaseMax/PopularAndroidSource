package f.a.a.c.b;

import android.os.Handler;
import android.os.Looper;
import com.crashlytics.android.Crashlytics;
import com.farsitel.bazaar.common.model.inline.InlineRelayService;
import f.a.a.c.b;
import f.a.a.c.e;
import ir.cafebazaar.inline.platform.InlineApplication;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: SyncAPICallHandler */
public class o {

    /* renamed from: a  reason: collision with root package name */
    public InlineRelayService f13978a;

    /* renamed from: b  reason: collision with root package name */
    public InlineApplication f13979b;

    /* renamed from: c  reason: collision with root package name */
    public f.a.a.c.a f13980c;

    /* compiled from: SyncAPICallHandler */
    public interface a extends e<String> {
    }

    public o(InlineApplication inlineApplication, String str, Map<String, Object> map) {
        this(inlineApplication, str, map, null);
    }

    public static void b(String str) {
    }

    public o(InlineApplication inlineApplication, String str, Map<String, Object> map, String str2) {
        Map<String, Object> map2 = map;
        this.f13980c = f.a.a.b.a.f13937a;
        this.f13979b = inlineApplication;
        try {
            JSONObject jSONObject = new JSONObject();
            if (map2 != null) {
                for (String next : map.keySet()) {
                    jSONObject.put(next, map2.get(next));
                }
            }
            InlineRelayService inlineRelayService = new InlineRelayService(inlineApplication.d(), inlineApplication.j().c(), "", "", inlineApplication.g().getVersion(), "", "", str, str2, jSONObject);
            this.f13978a = inlineRelayService;
        } catch (JSONException e2) {
            Crashlytics.logException(e2);
        }
    }

    public void a(a aVar) {
        new Handler(Looper.getMainLooper()).post(new h(this, aVar));
        long currentTimeMillis = System.currentTimeMillis();
        b("start");
        try {
            this.f13978a.getPayload().put("permittedData", new JSONObject(this.f13979b.j().b().a().a()));
            if (this.f13979b.b() != null) {
                this.f13978a.getPayload().put("purchases", this.f13979b.b().b());
            }
            this.f13980c.a(this.f13978a, (b<String>) new k(this, currentTimeMillis, aVar));
        } catch (JSONException e2) {
            Crashlytics.logException(e2);
            new Handler(Looper.getMainLooper()).post(new l(this, aVar, e2));
        } catch (InterruptedException e3) {
            Crashlytics.logException(e3);
            new Handler(Looper.getMainLooper()).post(new m(this, aVar, e3));
        } catch (Exception e4) {
            Crashlytics.logException(e4);
            new Handler(Looper.getMainLooper()).post(new n(this, aVar, e4));
        }
    }
}
