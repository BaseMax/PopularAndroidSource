package e.a.a.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.crashlytics.android.core.SessionProtobufHelper;
import e.a.a.a.a.b.n;
import e.a.a.a.a.e.c;
import e.a.a.a.a.e.f;
import e.a.a.a.a.g.d;
import e.a.a.a.a.g.e;
import e.a.a.a.a.g.i;
import e.a.a.a.a.g.o;
import e.a.a.a.a.g.s;
import e.a.a.a.a.g.u;
import e.a.a.a.a.g.z;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.DeliveryMechanism;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* compiled from: Onboarding */
public class p extends l<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final f f13902a = new c();

    /* renamed from: b  reason: collision with root package name */
    public PackageManager f13903b;

    /* renamed from: c  reason: collision with root package name */
    public String f13904c;

    /* renamed from: d  reason: collision with root package name */
    public PackageInfo f13905d;

    /* renamed from: e  reason: collision with root package name */
    public String f13906e;

    /* renamed from: f  reason: collision with root package name */
    public String f13907f;

    /* renamed from: g  reason: collision with root package name */
    public String f13908g;

    /* renamed from: h  reason: collision with root package name */
    public String f13909h;

    /* renamed from: i  reason: collision with root package name */
    public String f13910i;

    /* renamed from: j  reason: collision with root package name */
    public final Future<Map<String, n>> f13911j;

    /* renamed from: k  reason: collision with root package name */
    public final Collection<l> f13912k;

    public p(Future<Map<String, n>> future, Collection<l> collection) {
        this.f13911j = future;
        this.f13912k = collection;
    }

    public Map<String, n> a(Map<String, n> map, Collection<l> collection) {
        for (l next : collection) {
            if (!map.containsKey(next.getIdentifier())) {
                map.put(next.getIdentifier(), new n(next.getIdentifier(), next.getVersion(), "binary"));
            }
        }
        return map;
    }

    public final boolean b(String str, e eVar, Collection<n> collection) {
        return new i(this, getOverridenSpiEndpoint(), eVar.f13801c, this.f13902a).a(a(o.a(getContext(), str), collection));
    }

    public final boolean c(String str, e eVar, Collection<n> collection) {
        return a(eVar, o.a(getContext(), str), collection);
    }

    public final u f() {
        try {
            s b2 = s.b();
            b2.a(this, this.idManager, this.f13902a, this.f13906e, this.f13907f, getOverridenSpiEndpoint(), n.a(getContext()));
            b2.c();
            return s.b().a();
        } catch (Exception e2) {
            f.e().b("Fabric", "Error dealing with settings", e2);
            return null;
        }
    }

    public String getIdentifier() {
        return "io.fabric.sdk.android:fabric";
    }

    public String getOverridenSpiEndpoint() {
        return CommonUtils.b(getContext(), "com.crashlytics.ApiEndpoint");
    }

    public String getVersion() {
        return "1.4.8.32";
    }

    public boolean onPreExecute() {
        try {
            this.f13908g = getIdManager().g();
            this.f13903b = getContext().getPackageManager();
            this.f13904c = getContext().getPackageName();
            this.f13905d = this.f13903b.getPackageInfo(this.f13904c, 0);
            this.f13906e = Integer.toString(this.f13905d.versionCode);
            this.f13907f = this.f13905d.versionName == null ? "0.0" : this.f13905d.versionName;
            this.f13909h = this.f13903b.getApplicationLabel(getContext().getApplicationInfo()).toString();
            this.f13910i = Integer.toString(getContext().getApplicationInfo().targetSdkVersion);
            return true;
        } catch (PackageManager.NameNotFoundException e2) {
            f.e().b("Fabric", "Failed init", e2);
            return false;
        }
    }

    public Boolean doInBackground() {
        boolean z;
        Map map;
        String c2 = CommonUtils.c(getContext());
        u f2 = f();
        if (f2 != null) {
            try {
                if (this.f13911j != null) {
                    map = this.f13911j.get();
                } else {
                    map = new HashMap();
                }
                a((Map<String, n>) map, this.f13912k);
                z = a(c2, f2.f13845a, (Collection<n>) map.values());
            } catch (Exception e2) {
                f.e().b("Fabric", "Error performing auto configuration.", e2);
            }
            return Boolean.valueOf(z);
        }
        z = false;
        return Boolean.valueOf(z);
    }

    public final boolean a(String str, e eVar, Collection<n> collection) {
        if ("new".equals(eVar.f13800b)) {
            if (b(str, eVar, collection)) {
                return s.b().d();
            }
            f.e().b("Fabric", "Failed to create app with Crashlytics service.", null);
            return false;
        } else if ("configured".equals(eVar.f13800b)) {
            return s.b().d();
        } else {
            if (eVar.f13804f) {
                f.e().d("Fabric", "Server says an update is required - forcing a full App update.");
                c(str, eVar, collection);
            }
            return true;
        }
    }

    public final boolean a(e eVar, o oVar, Collection<n> collection) {
        return new z(this, getOverridenSpiEndpoint(), eVar.f13801c, this.f13902a).a(a(oVar, collection));
    }

    public final d a(o oVar, Collection<n> collection) {
        Context context = getContext();
        d dVar = new d(new e.a.a.a.a.b.i().d(context), getIdManager().d(), this.f13907f, this.f13906e, CommonUtils.a(CommonUtils.n(context)), this.f13909h, DeliveryMechanism.a(this.f13908g).getId(), this.f13910i, SessionProtobufHelper.SIGNAL_DEFAULT, oVar, collection);
        return dVar;
    }
}
