package com.a.a.b;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

final class d {
    public final String buildId;
    public final String packageName;
    public final String versionCode;
    public final String versionName;

    private d(String str, String str2, String str3, String str4) {
        this.versionCode = str;
        this.versionName = str2;
        this.buildId = str3;
        this.packageName = str4;
    }

    public static d fromProperties(Properties properties) {
        return new d(properties.getProperty("version_code"), properties.getProperty("version_name"), properties.getProperty("build_id"), properties.getProperty("package_name"));
    }

    public static d fromPropertiesStream(InputStream inputStream) throws IOException {
        Properties properties = new Properties();
        properties.load(inputStream);
        return fromProperties(properties);
    }
}
