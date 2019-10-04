package com.farsitel.bazaar.data.model;

import com.crashlytics.android.answers.SearchEvent;

/* compiled from: RemoteCommunicationConfig.kt */
public enum RemoteCommunicationConfig {
    CAFE("cafe", null, 2, null),
    APP_DETAIL("appDetails", null, 2, null),
    REVIEW("sandogh", null, 2, null),
    SEARCH(SearchEvent.TYPE, null, 2, null),
    SEARCH_PREDICTION("searchPrediction", null, 2, null),
    FEHREST("fehrest", null, 2, null),
    ANALYTICS("log", null, 2, null),
    ACCOUNT("account", null, 2, null),
    UPGRADABLE_APPS("upgradableApps", null, 2, null),
    PAYMENT("payment", null, 2, null),
    CINEMA("cinema", null, 2, null),
    GISHEH("gisheh", null, 2, null),
    INLINE("inline", null, 2, null),
    GHOLAK("gholak", null, 2, null),
    MOCK("default", "https://cafebazaar.mockable.io/");
    
    public final String baseUrl;
    public final String serviceName;

    /* access modifiers changed from: public */
    RemoteCommunicationConfig(String str, String str2) {
        this.serviceName = str;
        this.baseUrl = str2;
    }

    public final String f() {
        return this.baseUrl;
    }

    public final String g() {
        return this.serviceName;
    }
}
