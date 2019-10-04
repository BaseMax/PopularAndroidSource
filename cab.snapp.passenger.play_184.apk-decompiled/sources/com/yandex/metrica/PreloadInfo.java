package com.yandex.metrica;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public class PreloadInfo {

    /* renamed from: a  reason: collision with root package name */
    private String f5626a;

    /* renamed from: b  reason: collision with root package name */
    private Map<String, String> f5627b;

    public static class Builder {
        /* access modifiers changed from: private */

        /* renamed from: a  reason: collision with root package name */
        public String f5628a;
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public Map<String, String> f5629b;

        /* synthetic */ Builder(String str, byte b2) {
            this(str);
        }

        private Builder(String str) {
            this.f5628a = str;
            this.f5629b = new HashMap();
        }

        public Builder setAdditionalParams(String str, String str2) {
            if (!(str == null || str2 == null)) {
                this.f5629b.put(str, str2);
            }
            return this;
        }

        public PreloadInfo build() {
            return new PreloadInfo(this, (byte) 0);
        }
    }

    /* synthetic */ PreloadInfo(Builder builder, byte b2) {
        this(builder);
    }

    private PreloadInfo(Builder builder) {
        this.f5626a = builder.f5628a;
        this.f5627b = Collections.unmodifiableMap(builder.f5629b);
    }

    public static Builder newBuilder(String str) {
        return new Builder(str, (byte) 0);
    }

    public String getTrackingId() {
        return this.f5626a;
    }

    public Map<String, String> getAdditionalParams() {
        return this.f5627b;
    }
}
