package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: DownloadInfoResponseDto.kt */
public final class DownloadInfoDiffDto {
    @c("sha1hash")
    public final String hash;
    @c("oldVersionCode")
    public final long oldVersionCode;
    @c("size")
    public final long size;
    @c("token")
    public final String token;
    @c("newVersionCode")
    public final long upgradeVersionCode;

    public DownloadInfoDiffDto(long j2, String str, String str2, long j3, long j4) {
        j.b(str, "token");
        j.b(str2, "hash");
        this.size = j2;
        this.token = str;
        this.hash = str2;
        this.oldVersionCode = j3;
        this.upgradeVersionCode = j4;
    }

    public final String getHash() {
        return this.hash;
    }

    public final long getOldVersionCode() {
        return this.oldVersionCode;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getToken() {
        return this.token;
    }

    public final long getUpgradeVersionCode() {
        return this.upgradeVersionCode;
    }
}
