package com.yandex.metrica;

import com.yandex.metrica.impl.ob.ow;
import com.yandex.metrica.impl.ob.pa;
import com.yandex.metrica.impl.ob.pb;

public class ReporterConfig {
    public final String apiKey;
    public final Boolean logs;
    public final Integer sessionTimeout;
    public final Boolean statisticsSending;

    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private static final pa<String> f5630a = new ow(new pb());
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public final String f5631b;
        /* access modifiers changed from: private */
        public Integer c;
        /* access modifiers changed from: private */
        public Boolean d;
        /* access modifiers changed from: private */
        public Boolean e;

        Builder(String str) {
            f5630a.a(str);
            this.f5631b = str;
        }

        public Builder withSessionTimeout(int i) {
            this.c = Integer.valueOf(i);
            return this;
        }

        public Builder withLogs() {
            this.d = Boolean.TRUE;
            return this;
        }

        public Builder withStatisticsSending(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }

        public ReporterConfig build() {
            return new ReporterConfig(this);
        }
    }

    ReporterConfig(Builder builder) {
        this.apiKey = builder.f5631b;
        this.sessionTimeout = builder.c;
        this.logs = builder.d;
        this.statisticsSending = builder.e;
    }

    ReporterConfig(ReporterConfig reporterConfig) {
        this.apiKey = reporterConfig.apiKey;
        this.sessionTimeout = reporterConfig.sessionTimeout;
        this.logs = reporterConfig.logs;
        this.statisticsSending = reporterConfig.statisticsSending;
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str);
    }
}
