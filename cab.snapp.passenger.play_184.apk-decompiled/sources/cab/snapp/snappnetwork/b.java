package cab.snapp.snappnetwork;

import io.fabric.sdk.android.services.network.c;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.Route;

final class b implements Authenticator {

    /* renamed from: a  reason: collision with root package name */
    private final h f1518a;

    public b(h hVar) {
        this.f1518a = hVar;
    }

    public final Request authenticate(Route route, Response response) throws IOException {
        new StringBuilder("isRequestNeedAuth: ").append(response.request().header(c.HEADER_AUTHORIZATION));
        if (!a(response)) {
            return null;
        }
        h hVar = this.f1518a;
        if (hVar != null && hVar.isAuthenticated()) {
            retrofit2.Response<ResponseBody> execute = this.f1518a.getRefreshTokenRequest().execute();
            if (execute.isSuccessful() && execute.body() != null) {
                cab.snapp.snappnetwork.model.c cVar = (cab.snapp.snappnetwork.model.c) g.provideGson().fromJson(execute.body().string(), cab.snapp.snappnetwork.model.c.class);
                this.f1518a.onTokenRefreshed(cVar);
                Request.Builder removeHeader = response.request().newBuilder().removeHeader(c.HEADER_AUTHORIZATION);
                return removeHeader.addHeader(c.HEADER_AUTHORIZATION, "Bearer " + cVar.getAccessToken()).build();
            }
        }
        h hVar2 = this.f1518a;
        if (hVar2 != null) {
            hVar2.onRefreshTokenError(response.code());
        }
        return null;
    }

    private static boolean a(Response response) {
        if (response != null) {
            try {
                if (response.request() == null || response.request().header(c.HEADER_AUTHORIZATION) == null || response.request().header(c.HEADER_AUTHORIZATION).isEmpty()) {
                    return false;
                }
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return false;
    }
}
