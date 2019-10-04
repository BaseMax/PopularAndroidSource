package cab.snapp.passenger.b;

import android.content.Context;
import cab.snapp.authenticator.c;
import cab.snapp.passenger.BaseApplication;
import cab.snapp.passenger.data_access_layer.network.requests.oauth.OAuthRefreshTokenBody;
import cab.snapp.snappnetwork.e;
import cab.snapp.snappnetwork.h;

public final class b implements h {

    /* renamed from: a  reason: collision with root package name */
    private final Context f448a;

    /* renamed from: b  reason: collision with root package name */
    private cab.snapp.passenger.data_access_layer.network.b f449b;
    private c c;

    public b(Context context, c cVar) {
        this.f448a = context;
        this.c = cVar;
    }

    public final void setNetworkModules(cab.snapp.passenger.data_access_layer.network.b bVar) {
        this.f449b = bVar;
    }

    public final e<cab.snapp.snappnetwork.model.c> getRefreshTokenRequest() {
        cab.snapp.passenger.data_access_layer.network.b bVar = this.f449b;
        if (bVar == null) {
            return null;
        }
        return bVar.getAuthInstance().POST(cab.snapp.snappnetwork.model.c.class).addBodyParameter(new OAuthRefreshTokenBody(this.c).getBody()).setDontNeedAuthentication().build();
    }

    public final boolean isAuthenticated() {
        return this.c.isUserAuthorized();
    }

    public final String getAccessToken() {
        return this.c.getAuthToken();
    }

    public final void onTokenRefreshed(cab.snapp.snappnetwork.model.c cVar) {
        this.c.setRefreshToken(cVar.getRefreshToken());
        this.c.invalidateAuthToken(cVar.getAccessToken());
        c cVar2 = this.c;
        cVar2.setExpiredAt(cVar.getExpiresIn());
    }

    public final void onRefreshTokenError(int i) {
        Context context = this.f448a;
        if (context != null) {
            this.c.removeAccount(context);
            BaseApplication.doRestart();
        }
    }
}
