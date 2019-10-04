package com.crashlytics.android.answers;

import e.a.a.a.a.b.A;
import e.a.a.a.a.b.C1046a;
import e.a.a.a.a.d.g;
import e.a.a.a.a.e.f;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.util.List;

public class SessionAnalyticsFilesSender extends C1046a implements g {
    public static final String FILE_CONTENT_TYPE = "application/vnd.crashlytics.android.events";
    public static final String FILE_PARAM_NAME = "session_analytics_file_";
    public final String apiKey;

    public SessionAnalyticsFilesSender(l lVar, String str, String str2, f fVar, String str3) {
        super(lVar, str, str2, fVar, HttpMethod.POST);
        this.apiKey = str3;
    }

    public boolean send(List<File> list) {
        HttpRequest httpRequest = getHttpRequest();
        httpRequest.c(C1046a.HEADER_CLIENT_TYPE, C1046a.ANDROID_CLIENT_TYPE);
        httpRequest.c(C1046a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        httpRequest.c(C1046a.HEADER_API_KEY, this.apiKey);
        int i2 = 0;
        for (File next : list) {
            httpRequest.a(FILE_PARAM_NAME + i2, next.getName(), FILE_CONTENT_TYPE, next);
            i2++;
        }
        o e2 = e.a.a.a.f.e();
        e2.d(Answers.TAG, "Sending " + list.size() + " analytics files to " + getUrl());
        int g2 = httpRequest.g();
        o e3 = e.a.a.a.f.e();
        e3.d(Answers.TAG, "Response code for analytics file send is " + g2);
        if (A.a(g2) == 0) {
            return true;
        }
        return false;
    }
}
