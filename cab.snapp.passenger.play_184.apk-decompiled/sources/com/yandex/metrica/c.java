package com.yandex.metrica;

import com.yandex.metrica.ReporterConfig;
import java.util.Collections;
import java.util.LinkedHashMap;

public class c extends ReporterConfig {

    /* renamed from: a  reason: collision with root package name */
    public final Integer f5642a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f5643b;

    public static class a {

        /* renamed from: a  reason: collision with root package name */
        ReporterConfig.Builder f5644a;

        /* renamed from: b  reason: collision with root package name */
        Integer f5645b;
        Integer c;
        LinkedHashMap<String, String> d = new LinkedHashMap<>();

        public a(String str) {
            this.f5644a = ReporterConfig.newConfigBuilder(str);
        }

        public a a(int i) {
            this.f5645b = Integer.valueOf(i);
            return this;
        }

        public c a() {
            return new c(this);
        }
    }

    c(a aVar) {
        super(aVar.f5644a);
        this.f5643b = aVar.f5645b;
        this.f5642a = aVar.c;
        if (aVar.d != null) {
            Collections.unmodifiableMap(aVar.d);
        }
    }

    private c(ReporterConfig reporterConfig) {
        super(reporterConfig);
        this.f5642a = null;
        this.f5643b = null;
    }

    public static c a(ReporterConfig reporterConfig) {
        return new c(reporterConfig);
    }

    public static a a(String str) {
        return new a(str);
    }
}
