package com.crashlytics.android.core;

import e.a.a.a.a.b.A;
import e.a.a.a.a.b.C1046a;
import e.a.a.a.a.e.f;
import e.a.a.a.l;
import e.a.a.a.o;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.File;

public class NativeCreateReportSpiCall extends C1046a implements CreateReportSpiCall {
    public static final String APP_META_FILE_MULTIPART_PARAM = "app_meta_file";
    public static final String BINARY_IMAGES_FILE_MULTIPART_PARAM = "binary_images_file";
    public static final String DEVICE_META_FILE_MULTIPART_PARAM = "device_meta_file";
    public static final String GZIP_FILE_CONTENT_TYPE = "application/octet-stream";
    public static final String KEYS_FILE_MULTIPART_PARAM = "keys_file";
    public static final String LOGS_FILE_MULTIPART_PARAM = "logs_file";
    public static final String METADATA_FILE_MULTIPART_PARAM = "crash_meta_file";
    public static final String MINIDUMP_FILE_MULTIPART_PARAM = "minidump_file";
    public static final String OS_META_FILE_MULTIPART_PARAM = "os_meta_file";
    public static final String REPORT_IDENTIFIER_PARAM = "report_id";
    public static final String SESSION_META_FILE_MULTIPART_PARAM = "session_meta_file";
    public static final String USER_META_FILE_MULTIPART_PARAM = "user_meta_file";

    public NativeCreateReportSpiCall(l lVar, String str, String str2, f fVar) {
        super(lVar, str, str2, fVar, HttpMethod.POST);
    }

    private HttpRequest applyHeadersTo(HttpRequest httpRequest, String str) {
        httpRequest.c(C1046a.HEADER_USER_AGENT, C1046a.CRASHLYTICS_USER_AGENT + this.kit.getVersion());
        httpRequest.c(C1046a.HEADER_CLIENT_TYPE, C1046a.ANDROID_CLIENT_TYPE);
        httpRequest.c(C1046a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        httpRequest.c(C1046a.HEADER_API_KEY, str);
        return httpRequest;
    }

    private HttpRequest applyMultipartDataTo(HttpRequest httpRequest, Report report) {
        httpRequest.e(REPORT_IDENTIFIER_PARAM, report.getIdentifier());
        for (File file : report.getFiles()) {
            if (file.getName().equals("minidump")) {
                httpRequest.a(MINIDUMP_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("metadata")) {
                httpRequest.a(METADATA_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("binaryImages")) {
                httpRequest.a(BINARY_IMAGES_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("session")) {
                httpRequest.a(SESSION_META_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("app")) {
                httpRequest.a(APP_META_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("device")) {
                httpRequest.a(DEVICE_META_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("os")) {
                httpRequest.a(OS_META_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals(MetaDataStore.USERDATA_SUFFIX)) {
                httpRequest.a(USER_META_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals("logs")) {
                httpRequest.a(LOGS_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            } else if (file.getName().equals(MetaDataStore.KEYDATA_SUFFIX)) {
                httpRequest.a(KEYS_FILE_MULTIPART_PARAM, file.getName(), "application/octet-stream", file);
            }
        }
        return httpRequest;
    }

    public boolean invoke(CreateReportRequest createReportRequest) {
        HttpRequest httpRequest = getHttpRequest();
        applyHeadersTo(httpRequest, createReportRequest.apiKey);
        applyMultipartDataTo(httpRequest, createReportRequest.report);
        o e2 = e.a.a.a.f.e();
        e2.d(CrashlyticsCore.TAG, "Sending report to: " + getUrl());
        int g2 = httpRequest.g();
        o e3 = e.a.a.a.f.e();
        e3.d(CrashlyticsCore.TAG, "Result was: " + g2);
        return A.a(g2) == 0;
    }
}
