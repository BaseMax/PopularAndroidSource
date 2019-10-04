package com.farsitel.bazaar.data.feature.app;

import com.farsitel.bazaar.data.dto.responsedto.UpgradableAppsResponseDto;
import com.farsitel.bazaar.data.entity.UpgradableApps;
import h.f.a.b;
import h.f.b.j;
import kotlin.jvm.internal.Lambda;

/* compiled from: UpgradableAppsRemoteDataSource.kt */
final class UpgradableAppsRemoteDataSource$getUpgradableApps$2 extends Lambda implements b<UpgradableAppsResponseDto, UpgradableApps> {

    /* renamed from: a  reason: collision with root package name */
    public static final UpgradableAppsRemoteDataSource$getUpgradableApps$2 f12213a = new UpgradableAppsRemoteDataSource$getUpgradableApps$2();

    public UpgradableAppsRemoteDataSource$getUpgradableApps$2() {
        super(1);
    }

    public final UpgradableApps a(UpgradableAppsResponseDto upgradableAppsResponseDto) {
        j.b(upgradableAppsResponseDto, "dto");
        return upgradableAppsResponseDto.toUpgradableApps();
    }
}
