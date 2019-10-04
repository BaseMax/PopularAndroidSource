package com.farsitel.bazaar.data.device;

import h.f.a.a;
import h.f.b.k;
import h.i.e;
import java.util.UUID;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: DeviceInfoDataSource.kt */
final /* synthetic */ class DeviceInfoDataSource$getClientId$1 extends FunctionReference implements a<UUID> {

    /* renamed from: c  reason: collision with root package name */
    public static final DeviceInfoDataSource$getClientId$1 f12200c = new DeviceInfoDataSource$getClientId$1();

    public DeviceInfoDataSource$getClientId$1() {
        super(0);
    }

    public final e e() {
        return k.a(UUID.class);
    }

    public final String g() {
        return "randomUUID()Ljava/util/UUID;";
    }

    public final String getName() {
        return "randomUUID";
    }

    public final UUID invoke() {
        return UUID.randomUUID();
    }
}
