package com.koushikdutta.async.http.b;

enum g {
    CACHE,
    CONDITIONAL_CACHE,
    NETWORK;

    public final boolean requiresConnection() {
        return this == CONDITIONAL_CACHE || this == NETWORK;
    }
}
