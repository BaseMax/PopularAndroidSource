package com.farsitel.bazaar.common.model;

/* compiled from: PlayedVideoModel.kt */
public enum PlayedVideoType {
    VIDEO("video"),
    EPISODE("episode");
    
    public final String value;

    /* access modifiers changed from: public */
    PlayedVideoType(String str) {
        this.value = str;
    }

    public final String getValue() {
        return this.value;
    }
}
