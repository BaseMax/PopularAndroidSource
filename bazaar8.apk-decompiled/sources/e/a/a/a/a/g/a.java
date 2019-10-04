package e.a.a.a.a.g;

import android.content.res.Resources;
import e.a.a.a.a.b.A;
import e.a.a.a.a.b.C1046a;
import e.a.a.a.a.e.f;
import e.a.a.a.l;
import e.a.a.a.n;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.Closeable;
import java.io.InputStream;
import java.util.Collection;
import java.util.Locale;

/* compiled from: AbstractAppSpiCall */
public abstract class a extends C1046a implements f {
    public a(l lVar, String str, String str2, f fVar, HttpMethod httpMethod) {
        super(lVar, str, str2, fVar, httpMethod);
    }

    public boolean a(d dVar) {
        HttpRequest httpRequest = getHttpRequest();
        a(httpRequest, dVar);
        b(httpRequest, dVar);
        o e2 = e.a.a.a.f.e();
        e2.d("Fabric", "Sending app info to " + getUrl());
        if (dVar.f13797j != null) {
            o e3 = e.a.a.a.f.e();
            e3.d("Fabric", "App icon hash is " + dVar.f13797j.f13822a);
            o e4 = e.a.a.a.f.e();
            e4.d("Fabric", "App icon size is " + dVar.f13797j.f13824c + "x" + dVar.f13797j.f13825d);
        }
        int g2 = httpRequest.g();
        String str = "POST".equals(httpRequest.m()) ? "Create" : "Update";
        o e5 = e.a.a.a.f.e();
        e5.d("Fabric", str + " app request ID: " + httpRequest.e(C1046a.HEADER_REQUEST_ID));
        o e6 = e.a.a.a.f.e();
        e6.d("Fabric", "Result was " + g2);
        return A.a(g2) == 0;
    }

    public final HttpRequest b(HttpRequest httpRequest, d dVar) {
        httpRequest.e("app[identifier]", dVar.f13789b);
        httpRequest.e("app[name]", dVar.f13793f);
        httpRequest.e("app[display_version]", dVar.f13790c);
        httpRequest.e("app[build_version]", dVar.f13791d);
        httpRequest.a("app[source]", (Number) Integer.valueOf(dVar.f13794g));
        httpRequest.e("app[minimum_sdk_version]", dVar.f13795h);
        httpRequest.e("app[built_sdk_version]", dVar.f13796i);
        if (!CommonUtils.b(dVar.f13792e)) {
            httpRequest.e("app[instance_identifier]", dVar.f13792e);
        }
        if (dVar.f13797j != null) {
            InputStream inputStream = null;
            try {
                inputStream = this.kit.getContext().getResources().openRawResource(dVar.f13797j.f13823b);
                httpRequest.e("app[icon][hash]", dVar.f13797j.f13822a);
                httpRequest.a("app[icon][data]", "icon.png", "application/octet-stream", inputStream);
                httpRequest.a("app[icon][width]", (Number) Integer.valueOf(dVar.f13797j.f13824c));
                httpRequest.a("app[icon][height]", (Number) Integer.valueOf(dVar.f13797j.f13825d));
            } catch (Resources.NotFoundException e2) {
                o e3 = e.a.a.a.f.e();
                e3.b("Fabric", "Failed to find app icon with resource ID: " + dVar.f13797j.f13823b, e2);
            } catch (Throwable th) {
                CommonUtils.a((Closeable) inputStream, "Failed to close app icon InputStream.");
                throw th;
            }
            CommonUtils.a((Closeable) inputStream, "Failed to close app icon InputStream.");
        }
        Collection<n> collection = dVar.f13798k;
        if (collection != null) {
            for (n next : collection) {
                httpRequest.e(b(next), next.c());
                httpRequest.e(a(next), next.a());
            }
        }
        return httpRequest;
    }

    public final HttpRequest a(HttpRequest httpRequest, d dVar) {
        httpRequest.c(C1046a.HEADER_API_KEY, dVar.f13788a);
        httpRequest.c(C1046a.HEADER_CLIENT_TYPE, C1046a.ANDROID_CLIENT_TYPE);
        httpRequest.c(C1046a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        return httpRequest;
    }

    public String a(n nVar) {
        return String.format(Locale.US, "app[build][libraries][%s][type]", new Object[]{nVar.b()});
    }

    public String b(n nVar) {
        return String.format(Locale.US, "app[build][libraries][%s][version]", new Object[]{nVar.b()});
    }
}
