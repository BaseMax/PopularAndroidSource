package io.fabric.sdk.android.services.network;

import java.util.Map;

public interface d {
    c buildHttpRequest(HttpMethod httpMethod, String str);

    c buildHttpRequest(HttpMethod httpMethod, String str, Map<String, String> map);

    f getPinningInfoProvider();

    void setPinningInfoProvider(f fVar);
}
