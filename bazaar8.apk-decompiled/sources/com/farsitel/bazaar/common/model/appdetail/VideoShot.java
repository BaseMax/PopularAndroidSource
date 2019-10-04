package com.farsitel.bazaar.common.model.appdetail;

/* compiled from: AppDetail.kt */
public final class VideoShot {
    public final String poster;
    public final String sourceType;
    public final String token;

    public VideoShot(String str, String str2, String str3) {
        this.token = str;
        this.poster = str2;
        this.sourceType = str3;
    }

    public final String getPoster() {
        return this.poster;
    }

    public final String getSourceType() {
        return this.sourceType;
    }

    public final String getToken() {
        return this.token;
    }
}
