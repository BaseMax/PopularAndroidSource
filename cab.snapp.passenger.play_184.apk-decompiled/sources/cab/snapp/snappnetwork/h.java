package cab.snapp.snappnetwork;

import cab.snapp.snappnetwork.model.c;

public interface h {
    String getAccessToken();

    e<c> getRefreshTokenRequest();

    boolean isAuthenticated();

    void onRefreshTokenError(int i);

    void onTokenRefreshed(c cVar);
}
