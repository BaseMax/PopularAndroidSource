package com.farsitel.bazaar.data.entity;

import h.f.b.j;
import java.math.BigInteger;

/* compiled from: DownloadInfo.kt */
public final class DownloadInfoDiff {
    public final BigInteger hash;
    public final long oldVersionCode;
    public final long size;
    public final String token;
    public final long upgradeVersionCode;

    public DownloadInfoDiff(long j2, String str, BigInteger bigInteger, long j3, long j4) {
        j.b(str, "token");
        j.b(bigInteger, "hash");
        this.size = j2;
        this.token = str;
        this.hash = bigInteger;
        this.oldVersionCode = j3;
        this.upgradeVersionCode = j4;
    }

    public final BigInteger getHash() {
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
