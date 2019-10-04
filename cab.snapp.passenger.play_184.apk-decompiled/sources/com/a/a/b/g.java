package com.a.a.b;

import io.fabric.sdk.android.services.settings.t;
import java.io.IOException;
import org.a.c;

final class g {
    g() {
    }

    public final f fromJson(c cVar) throws IOException {
        if (cVar == null) {
            return null;
        }
        f fVar = new f(cVar.optString("url", null), cVar.optString("version_string", null), cVar.optString("display_version", null), cVar.optString("build_version", null), cVar.optString(t.APP_IDENTIFIER_KEY, null), cVar.optString("instance_identifier", null));
        return fVar;
    }
}
