package com.a.a.a;

import android.content.Context;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.i;
import java.util.Map;
import java.util.UUID;

final class aj {

    /* renamed from: a  reason: collision with root package name */
    private final Context f1664a;

    /* renamed from: b  reason: collision with root package name */
    private final IdManager f1665b;
    private final String c;
    private final String d;

    public aj(Context context, IdManager idManager, String str, String str2) {
        this.f1664a = context;
        this.f1665b = idManager;
        this.c = str;
        this.d = str2;
    }

    public final ah getMetadata() {
        Map<IdManager.DeviceIdentifierType, String> deviceIdentifiers = this.f1665b.getDeviceIdentifiers();
        String resolveBuildId = i.resolveBuildId(this.f1664a);
        String osVersionString = this.f1665b.getOsVersionString();
        String modelName = this.f1665b.getModelName();
        ah ahVar = new ah(this.f1665b.getAppIdentifier(), UUID.randomUUID().toString(), this.f1665b.getAppInstallIdentifier(), deviceIdentifiers.get(IdManager.DeviceIdentifierType.ANDROID_ID), deviceIdentifiers.get(IdManager.DeviceIdentifierType.ANDROID_ADVERTISING_ID), this.f1665b.isLimitAdTrackingEnabled(), deviceIdentifiers.get(IdManager.DeviceIdentifierType.FONT_TOKEN), resolveBuildId, osVersionString, modelName, this.c, this.d);
        return ahVar;
    }
}
