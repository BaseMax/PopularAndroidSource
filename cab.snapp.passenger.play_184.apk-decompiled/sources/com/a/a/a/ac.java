package com.a.a.a;

import android.content.Context;
import io.fabric.sdk.android.services.b.b;
import io.fabric.sdk.android.services.b.c;
import io.fabric.sdk.android.services.common.k;
import java.io.IOException;
import java.util.UUID;

final class ac extends b<ag> {

    /* renamed from: a  reason: collision with root package name */
    io.fabric.sdk.android.services.settings.b f1656a;

    ac(Context context, ai aiVar, k kVar, c cVar) throws IOException {
        super(context, aiVar, kVar, cVar, 100);
    }

    public final String generateUniqueRollOverFileName() {
        UUID randomUUID = UUID.randomUUID();
        return "sa_" + randomUUID.toString() + b.ROLL_OVER_FILE_NAME_SEPARATOR + this.d.getCurrentTimeMillis() + ".tap";
    }

    public final int getMaxFilesToKeep() {
        io.fabric.sdk.android.services.settings.b bVar = this.f1656a;
        return bVar == null ? super.getMaxFilesToKeep() : bVar.maxPendingSendFileCount;
    }

    public final int getMaxByteSizePerFile() {
        io.fabric.sdk.android.services.settings.b bVar = this.f1656a;
        return bVar == null ? super.getMaxByteSizePerFile() : bVar.maxByteSizePerFile;
    }
}
