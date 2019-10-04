package e.a.a.a.a.g;

import e.a.a.a.a.b.C1046a;
import e.a.a.a.a.e.f;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* compiled from: DefaultSettingsSpiCall */
public class m extends C1046a implements y {
    public m(l lVar, String str, String str2, f fVar) {
        this(lVar, str, str2, fVar, HttpMethod.GET);
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0087  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.json.JSONObject a(e.a.a.a.a.g.x r9) {
        /*
            r8 = this;
            java.lang.String r0 = "X-REQUEST-ID"
            java.lang.String r1 = "Settings request ID: "
            java.lang.String r2 = "Fabric"
            r3 = 0
            java.util.Map r4 = r8.b(r9)     // Catch:{ HttpRequestException -> 0x006c, all -> 0x0069 }
            io.fabric.sdk.android.services.network.HttpRequest r5 = r8.getHttpRequest(r4)     // Catch:{ HttpRequestException -> 0x006c, all -> 0x0069 }
            r8.a(r5, r9)     // Catch:{ HttpRequestException -> 0x0067 }
            e.a.a.a.o r9 = e.a.a.a.f.e()     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ HttpRequestException -> 0x0067 }
            r6.<init>()     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.String r7 = "Requesting settings from "
            r6.append(r7)     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.String r7 = r8.getUrl()     // Catch:{ HttpRequestException -> 0x0067 }
            r6.append(r7)     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.String r6 = r6.toString()     // Catch:{ HttpRequestException -> 0x0067 }
            r9.d(r2, r6)     // Catch:{ HttpRequestException -> 0x0067 }
            e.a.a.a.o r9 = e.a.a.a.f.e()     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ HttpRequestException -> 0x0067 }
            r6.<init>()     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.String r7 = "Settings query params were: "
            r6.append(r7)     // Catch:{ HttpRequestException -> 0x0067 }
            r6.append(r4)     // Catch:{ HttpRequestException -> 0x0067 }
            java.lang.String r4 = r6.toString()     // Catch:{ HttpRequestException -> 0x0067 }
            r9.d(r2, r4)     // Catch:{ HttpRequestException -> 0x0067 }
            org.json.JSONObject r3 = r8.a((io.fabric.sdk.android.services.network.HttpRequest) r5)     // Catch:{ HttpRequestException -> 0x0067 }
            if (r5 == 0) goto L_0x0083
            e.a.a.a.o r9 = e.a.a.a.f.e()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
        L_0x0055:
            r4.append(r1)
            java.lang.String r0 = r5.e((java.lang.String) r0)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r9.d(r2, r0)
            goto L_0x0083
        L_0x0067:
            r9 = move-exception
            goto L_0x006e
        L_0x0069:
            r9 = move-exception
            r5 = r3
            goto L_0x0085
        L_0x006c:
            r9 = move-exception
            r5 = r3
        L_0x006e:
            e.a.a.a.o r4 = e.a.a.a.f.e()     // Catch:{ all -> 0x0084 }
            java.lang.String r6 = "Settings request failed."
            r4.b(r2, r6, r9)     // Catch:{ all -> 0x0084 }
            if (r5 == 0) goto L_0x0083
            e.a.a.a.o r9 = e.a.a.a.f.e()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            goto L_0x0055
        L_0x0083:
            return r3
        L_0x0084:
            r9 = move-exception
        L_0x0085:
            if (r5 == 0) goto L_0x00a1
            e.a.a.a.o r3 = e.a.a.a.f.e()
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            r4.append(r1)
            java.lang.String r0 = r5.e((java.lang.String) r0)
            r4.append(r0)
            java.lang.String r0 = r4.toString()
            r3.d(r2, r0)
        L_0x00a1:
            goto L_0x00a3
        L_0x00a2:
            throw r9
        L_0x00a3:
            goto L_0x00a2
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.a.a.a.g.m.a(e.a.a.a.a.g.x):org.json.JSONObject");
    }

    public boolean a(int i2) {
        return i2 == 200 || i2 == 201 || i2 == 202 || i2 == 203;
    }

    public final Map<String, String> b(x xVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", xVar.f13862h);
        hashMap.put("display_version", xVar.f13861g);
        hashMap.put("source", Integer.toString(xVar.f13863i));
        String str = xVar.f13864j;
        if (str != null) {
            hashMap.put("icon_hash", str);
        }
        String str2 = xVar.f13860f;
        if (!CommonUtils.b(str2)) {
            hashMap.put("instance", str2);
        }
        return hashMap;
    }

    public m(l lVar, String str, String str2, f fVar, HttpMethod httpMethod) {
        super(lVar, str, str2, fVar, httpMethod);
    }

    public JSONObject a(HttpRequest httpRequest) {
        int g2 = httpRequest.g();
        o e2 = e.a.a.a.f.e();
        e2.d("Fabric", "Settings result was: " + g2);
        if (a(g2)) {
            return a(httpRequest.a());
        }
        o e3 = e.a.a.a.f.e();
        e3.b("Fabric", "Failed to retrieve settings from " + getUrl());
        return null;
    }

    public final JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e2) {
            o e3 = e.a.a.a.f.e();
            e3.c("Fabric", "Failed to parse settings JSON from " + getUrl(), e2);
            o e4 = e.a.a.a.f.e();
            e4.d("Fabric", "Settings response " + str);
            return null;
        }
    }

    public final HttpRequest a(HttpRequest httpRequest, x xVar) {
        a(httpRequest, C1046a.HEADER_API_KEY, xVar.f13855a);
        a(httpRequest, C1046a.HEADER_CLIENT_TYPE, C1046a.ANDROID_CLIENT_TYPE);
        a(httpRequest, C1046a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        a(httpRequest, C1046a.HEADER_ACCEPT, C1046a.ACCEPT_JSON_VALUE);
        a(httpRequest, "X-CRASHLYTICS-DEVICE-MODEL", xVar.f13856b);
        a(httpRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", xVar.f13857c);
        a(httpRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", xVar.f13858d);
        a(httpRequest, "X-CRASHLYTICS-INSTALLATION-ID", xVar.f13859e);
        return httpRequest;
    }

    public final void a(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.c(str, str2);
        }
    }
}
