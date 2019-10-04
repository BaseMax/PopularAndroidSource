package cab.snapp.passenger.data_access_layer.network.a;

import android.text.TextUtils;
import cab.snapp.passenger.f.b.b.b;
import cab.snapp.passenger.f.b.b.c;
import okhttp3.Interceptor;

public final class a implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    private c f479a;

    /* renamed from: b  reason: collision with root package name */
    private cab.snapp.authenticator.c f480b;

    public a(c cVar, cab.snapp.authenticator.c cVar2) {
        this.f479a = cVar;
        this.f480b = cVar2;
    }

    /* JADX WARNING: Removed duplicated region for block: B:17:0x0058  */
    /* JADX WARNING: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final okhttp3.Response intercept(okhttp3.Interceptor.Chain r5) throws java.io.IOException {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            okhttp3.Request r1 = r5.request()
            okhttp3.HttpUrl r1 = r1.url()
            java.util.List r1 = r1.pathSegments()
            java.util.Iterator r1 = r1.iterator()
        L_0x0015:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L_0x0032
            java.lang.Object r2 = r1.next()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.String r3 = "[a-z]*"
            boolean r3 = r2.matches(r3)
            if (r3 == 0) goto L_0x0015
            r0.append(r2)
            java.lang.String r2 = "/"
            r0.append(r2)
            goto L_0x0015
        L_0x0032:
            okhttp3.Request r1 = r5.request()     // Catch:{ IOException -> 0x004c }
            okhttp3.Response r1 = r5.proceed(r1)     // Catch:{ IOException -> 0x004c }
            int r2 = r1.code()     // Catch:{ IOException -> 0x004d }
            r3 = 503(0x1f7, float:7.05E-43)
            if (r2 != r3) goto L_0x0056
            java.lang.String r2 = r0.toString()     // Catch:{ IOException -> 0x004d }
            java.lang.String r3 = "ReadTimeout"
            r4.a(r2, r3)     // Catch:{ IOException -> 0x004d }
            goto L_0x0056
        L_0x004c:
            r1 = 0
        L_0x004d:
            java.lang.String r0 = r0.toString()
            java.lang.String r2 = "ConnectionTimeout"
            r4.a(r0, r2)
        L_0x0056:
            if (r1 != 0) goto L_0x0060
            okhttp3.Request r0 = r5.request()
            okhttp3.Response r1 = r5.proceed(r0)
        L_0x0060:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: cab.snapp.passenger.data_access_layer.network.a.a.intercept(okhttp3.Interceptor$Chain):okhttp3.Response");
    }

    private void a(String str, String str2) {
        String userId = this.f480b.isUserAuthorized() ? this.f480b.getUserId() : null;
        b.a aVar = new b.a();
        if (!TextUtils.isEmpty(userId)) {
            aVar.addKeyValue(str2, userId).addOuterKeyToCurrentAsValue(str);
        } else {
            aVar.addKeyValue(str, str2);
        }
        this.f479a.sendNestedEventViaAppmetrica("ConnectionIssue", aVar.build());
    }
}
