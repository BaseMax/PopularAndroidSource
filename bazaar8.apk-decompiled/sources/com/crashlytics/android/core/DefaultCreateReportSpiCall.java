package com.crashlytics.android.core;

import e.a.a.a.a.b.A;
import e.a.a.a.a.b.C1046a;
import e.a.a.a.a.e.f;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;
import java.util.Map;

public class DefaultCreateReportSpiCall extends C1046a implements CreateReportSpiCall {
    public static final String FILE_CONTENT_TYPE = "application/octet-stream";
    public static final String FILE_PARAM = "report[file]";
    public static final String IDENTIFIER_PARAM = "report[identifier]";
    public static final String MULTI_FILE_PARAM = "report[file";

    public DefaultCreateReportSpiCall(l lVar, String str, String str2, f fVar) {
        super(lVar, str, str2, fVar, HttpMethod.POST);
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, CreateReportRequest createReportRequest) {
        httpRequest.c(C1046a.HEADER_API_KEY, createReportRequest.apiKey);
        httpRequest.c(C1046a.HEADER_CLIENT_TYPE, C1046a.ANDROID_CLIENT_TYPE);
        httpRequest.c(C1046a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        for (Map.Entry<String, String> a2 : createReportRequest.report.getCustomHeaders().entrySet()) {
            httpRequest.a(a2);
        }
        return httpRequest;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        httpRequest.e(IDENTIFIER_PARAM, report.getIdentifier());
        if (report.getFiles().length == 1) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Adding single file " + report.getFileName() + " to report " + report.getIdentifier());
            httpRequest.a(FILE_PARAM, report.getFileName(), "application/octet-stream", report.getFile());
            return httpRequest;
        }
        int i2 = 0;
        for (File file : report.getFiles()) {
            e.a.a.a.f.e().d(CrashlyticsCore.TAG, "Adding file " + file.getName() + " to report " + report.getIdentifier());
            StringBuilder sb = new StringBuilder();
            sb.append(MULTI_FILE_PARAM);
            sb.append(i2);
            sb.append("]");
            httpRequest.a(sb.toString(), file.getName(), "application/octet-stream", file);
            i2++;
        }
        return httpRequest;
    }

    public boolean invoke(CreateReportRequest createReportRequest) {
        HttpRequest httpRequest = getHttpRequest();
        applyHeadersTo(httpRequest, createReportRequest);
        applyMultipartDataTo(httpRequest, createReportRequest.report);
        o e2 = e.a.a.a.f.e();
        e2.d(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int g2 = httpRequest.g();
        o e3 = e.a.a.a.f.e();
        e3.d(CrashlyticsCore.TAG, "Create report request ID: " + httpRequest.e(C1046a.HEADER_REQUEST_ID));
        o e4 = e.a.a.a.f.e();
        e4.d(CrashlyticsCore.TAG, "Result was: " + g2);
        return A.a(g2) == 0;
    }

    public DefaultCreateReportSpiCall(l lVar, String str, String str2, f fVar, HttpMethod httpMethod) {
        super(lVar, str, str2, fVar, httpMethod);
    }
}
