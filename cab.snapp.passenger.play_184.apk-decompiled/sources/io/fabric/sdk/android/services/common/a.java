package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.network.d;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;

public abstract class a {
    public static final String ACCEPT_JSON_VALUE = "application/json";
    public static final String ANDROID_CLIENT_TYPE = "android";
    public static final String CLS_ANDROID_SDK_DEVELOPER_TOKEN = "470fa2b4ae81cd56ecbcda9735803434cec591fa";
    public static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    public static final int DEFAULT_TIMEOUT = 10000;
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_API_KEY = "X-CRASHLYTICS-API-KEY";
    public static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    public static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    public static final String HEADER_DEVELOPER_TOKEN = "X-CRASHLYTICS-DEVELOPER-TOKEN";
    public static final String HEADER_REQUEST_ID = "X-REQUEST-ID";
    public static final String HEADER_USER_AGENT = "User-Agent";
    private static final Pattern c = Pattern.compile("http(s?)://[^\\/]+", 2);

    /* renamed from: a  reason: collision with root package name */
    protected final String f6582a;

    /* renamed from: b  reason: collision with root package name */
    protected final i f6583b;
    private final d d;
    private final HttpMethod e;
    private final String f;

    public a(i iVar, String str, String str2, d dVar, HttpMethod httpMethod) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        } else if (dVar != null) {
            this.f6583b = iVar;
            this.f = str;
            this.f6582a = !i.isNullOrEmpty(this.f) ? c.matcher(str2).replaceFirst(this.f) : str2;
            this.d = dVar;
            this.e = httpMethod;
        } else {
            throw new IllegalArgumentException("requestFactory must not be null.");
        }
    }

    /* access modifiers changed from: protected */
    public final c a() {
        return a(Collections.emptyMap());
    }

    /* access modifiers changed from: protected */
    public final c a(Map<String, String> map) {
        c connectTimeout = this.d.buildHttpRequest(this.e, this.f6582a, map).useCaches(false).connectTimeout(DEFAULT_TIMEOUT);
        return connectTimeout.header("User-Agent", CRASHLYTICS_USER_AGENT + this.f6583b.getVersion()).header(HEADER_DEVELOPER_TOKEN, CLS_ANDROID_SDK_DEVELOPER_TOKEN);
    }
}
