package com.a.a.a;

import io.fabric.sdk.android.i;
import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.b.f;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.p;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.network.d;
import java.io.File;
import java.util.List;

final class ad extends a implements f {
    private final String c;

    public ad(i iVar, String str, String str2, d dVar, String str3) {
        super(iVar, str, str2, dVar, HttpMethod.POST);
        this.c = str3;
    }

    public final boolean send(List<File> list) {
        c header = a().header(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).header(a.HEADER_CLIENT_VERSION, this.f6583b.getVersion()).header(a.HEADER_API_KEY, this.c);
        int i = 0;
        for (File next : list) {
            header.part("session_analytics_file_".concat(String.valueOf(i)), next.getName(), "application/vnd.crashlytics.android.events", next);
            i++;
        }
        l logger = io.fabric.sdk.android.c.getLogger();
        logger.d(b.TAG, "Sending " + list.size() + " analytics files to " + this.f6582a);
        int code = header.code();
        io.fabric.sdk.android.c.getLogger().d(b.TAG, "Response code for analytics file send is ".concat(String.valueOf(code)));
        return p.parse(code) == 0;
    }
}
