package com.a.a.c;

import io.fabric.sdk.android.i;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.common.p;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.c;
import io.fabric.sdk.android.services.network.d;
import java.io.File;
import java.util.Map;

final class q extends a implements p {
    public q(i iVar, String str, String str2, d dVar) {
        super(iVar, str, str2, dVar, HttpMethod.POST);
    }

    public final boolean invoke(o oVar) {
        c header = a().header(a.HEADER_API_KEY, oVar.apiKey).header(a.HEADER_CLIENT_TYPE, a.ANDROID_CLIENT_TYPE).header(a.HEADER_CLIENT_VERSION, this.f6583b.getVersion());
        for (Map.Entry<String, String> header2 : oVar.report.getCustomHeaders().entrySet()) {
            header = header.header(header2);
        }
        af afVar = oVar.report;
        header.part("report[identifier]", afVar.getIdentifier());
        if (afVar.getFiles().length == 1) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Adding single file " + afVar.getFileName() + " to report " + afVar.getIdentifier());
            header = header.part("report[file]", afVar.getFileName(), "application/octet-stream", afVar.getFile());
        } else {
            int i = 0;
            for (File file : afVar.getFiles()) {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Adding file " + file.getName() + " to report " + afVar.getIdentifier());
                StringBuilder sb = new StringBuilder("report[file");
                sb.append(i);
                sb.append("]");
                header.part(sb.toString(), file.getName(), "application/octet-stream", file);
                i++;
            }
        }
        io.fabric.sdk.android.c.getLogger().d(j.TAG, "Sending report to: " + this.f6582a);
        int code = header.code();
        io.fabric.sdk.android.c.getLogger().d(j.TAG, "Create report request ID: " + header.header(a.HEADER_REQUEST_ID));
        io.fabric.sdk.android.c.getLogger().d(j.TAG, "Result was: ".concat(String.valueOf(code)));
        return p.parse(code) == 0;
    }
}
