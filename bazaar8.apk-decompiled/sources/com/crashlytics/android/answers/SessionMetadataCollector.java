package com.crashlytics.android.answers;

import android.content.Context;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.IdManager;
import java.util.Map;
import java.util.UUID;

public class SessionMetadataCollector {
    public final Context context;
    public final IdManager idManager;
    public final String versionCode;
    public final String versionName;

    public SessionMetadataCollector(Context context2, IdManager idManager2, String str, String str2) {
        this.context = context2;
        this.idManager = idManager2;
        this.versionCode = str;
        this.versionName = str2;
    }

    public SessionEventMetadata getMetadata() {
        Map<IdManager.DeviceIdentifierType, String> f2 = this.idManager.f();
        String n = CommonUtils.n(this.context);
        String k2 = this.idManager.k();
        String h2 = this.idManager.h();
        SessionEventMetadata sessionEventMetadata = new SessionEventMetadata(this.idManager.d(), UUID.randomUUID().toString(), this.idManager.e(), this.idManager.l(), f2.get(IdManager.DeviceIdentifierType.FONT_TOKEN), n, k2, h2, this.versionCode, this.versionName);
        return sessionEventMetadata;
    }
}
