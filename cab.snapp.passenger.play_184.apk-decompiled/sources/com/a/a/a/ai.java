package com.a.a.a;

import android.os.Build;
import com.google.android.gms.measurement.AppMeasurement;
import io.fabric.sdk.android.services.b.a;
import java.io.IOException;
import java.util.Map;
import org.a.b;
import org.a.c;

final class ai implements a<ag> {
    ai() {
    }

    public final byte[] toBytes(ag agVar) throws IOException {
        return buildJsonForEvent(agVar).toString().getBytes("UTF-8");
    }

    public final c buildJsonForEvent(ag agVar) throws IOException {
        try {
            c cVar = new c();
            ah ahVar = agVar.sessionEventMetadata;
            cVar.put("appBundleId", (Object) ahVar.appBundleId);
            cVar.put("executionId", (Object) ahVar.executionId);
            cVar.put("installationId", (Object) ahVar.installationId);
            cVar.put("androidId", (Object) ahVar.androidId);
            cVar.put("advertisingId", (Object) ahVar.advertisingId);
            cVar.put("limitAdTrackingEnabled", (Object) ahVar.limitAdTrackingEnabled);
            cVar.put("betaDeviceToken", (Object) ahVar.betaDeviceToken);
            cVar.put("buildId", (Object) ahVar.buildId);
            cVar.put("osVersion", (Object) ahVar.osVersion);
            cVar.put("deviceModel", (Object) ahVar.deviceModel);
            cVar.put("appVersionCode", (Object) ahVar.appVersionCode);
            cVar.put("appVersionName", (Object) ahVar.appVersionName);
            cVar.put(AppMeasurement.d.TIMESTAMP, agVar.timestamp);
            cVar.put("type", (Object) agVar.type.toString());
            if (agVar.details != null) {
                cVar.put("details", (Object) new c((Map<?, ?>) agVar.details));
            }
            cVar.put("customType", (Object) agVar.customType);
            if (agVar.customAttributes != null) {
                cVar.put("customAttributes", (Object) new c((Map<?, ?>) agVar.customAttributes));
            }
            cVar.put("predefinedType", (Object) agVar.predefinedType);
            if (agVar.predefinedAttributes != null) {
                cVar.put("predefinedAttributes", (Object) new c((Map<?, ?>) agVar.predefinedAttributes));
            }
            return cVar;
        } catch (b e) {
            if (Build.VERSION.SDK_INT >= 9) {
                throw new IOException(e.getMessage(), e);
            }
            throw new IOException(e.getMessage());
        }
    }
}
