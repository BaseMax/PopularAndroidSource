package com.farsitel.bazaar.data.entity;

import h.f.b.j;
import java.math.BigInteger;
import java.util.Iterator;
import java.util.List;

/* compiled from: DownloadInfo.kt */
public final class DownloadInfo {
    public final List<String> cdnUrls;
    public final List<DownloadInfoDiff> downloadInfoDiffs;
    public final BigInteger hash;
    public final String ipAddress;
    public final boolean multiConnection;
    public final Long size;
    public final String token;
    public final Long versionCode;

    public DownloadInfo(String str, List<String> list, BigInteger bigInteger, Long l2, List<DownloadInfoDiff> list2, String str2, boolean z, Long l3) {
        j.b(str, "token");
        j.b(bigInteger, "hash");
        this.token = str;
        this.cdnUrls = list;
        this.hash = bigInteger;
        this.size = l2;
        this.downloadInfoDiffs = list2;
        this.ipAddress = str2;
        this.multiConnection = z;
        this.versionCode = l3;
    }

    public final List<String> getCdnUrls() {
        return this.cdnUrls;
    }

    public final DownloadInfoDiff getDownloadInfoDiff(long j2, long j3) {
        boolean z;
        List<DownloadInfoDiff> list = this.downloadInfoDiffs;
        T t = null;
        if (list == null) {
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            T next = it.next();
            DownloadInfoDiff downloadInfoDiff = (DownloadInfoDiff) next;
            if (j2 == downloadInfoDiff.getOldVersionCode() && j3 == downloadInfoDiff.getUpgradeVersionCode()) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                t = next;
                break;
            }
        }
        return (DownloadInfoDiff) t;
    }

    public final BigInteger getHash() {
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

    public final long getVersionCode(Long l2) {
        Long l3 = this.versionCode;
        if (l3 != null) {
            l2 = l3;
        }
        if (l2 != null) {
            return l2.longValue();
        }
        return 0;
    }
}
