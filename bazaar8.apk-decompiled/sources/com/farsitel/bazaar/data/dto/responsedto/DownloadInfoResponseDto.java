package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: DownloadInfoResponseDto.kt */
public final class DownloadInfoResponseDto {
    @c("cdnPrefix")
    public final List<String> cdnUrls;
    @c("compatibleDevices")
    public final List<String> compatibleDevices;
    @c("packageDiffs")
    public final List<DownloadInfoDiffDto> downloadInfoDiffs;
    @c("hashCode")
    public final String hash;
    @c("ipAddress")
    public final String ipAddress;
    @c("multiConnection")
    public final boolean multiConnection;
    @c("packageSize")
    public final Long size;
    @c("token")
    public final String token;
    @c("versionCode")
    public final Long versionCode;

    public DownloadInfoResponseDto(String str, List<String> list, String str2, Long l2, List<DownloadInfoDiffDto> list2, String str3, List<String> list3, boolean z, Long l3) {
        j.b(str, "token");
        j.b(str2, "hash");
        this.token = str;
        this.cdnUrls = list;
        this.hash = str2;
        this.size = l2;
        this.downloadInfoDiffs = list2;
        this.ipAddress = str3;
        this.compatibleDevices = list3;
        this.multiConnection = z;
        this.versionCode = l3;
    }

    public final List<String> getCdnUrls() {
        return this.cdnUrls;
    }

    public final List<String> getCompatibleDevices() {
        return this.compatibleDevices;
    }

    public final List<DownloadInfoDiffDto> getDownloadInfoDiffs() {
        return this.downloadInfoDiffs;
    }

    public final String getHash() {
        return this.hash;
    }

    public final String getIpAddress() {
        return this.ipAddress;
    }

    public final boolean getMultiConnection() {
        return this.multiConnection;
    }

    public final Long getSize() {
        return this.size;
    }

    public final String getToken() {
        return this.token;
    }

    public final Long getVersionCode() {
        return this.versionCode;
    }
}
