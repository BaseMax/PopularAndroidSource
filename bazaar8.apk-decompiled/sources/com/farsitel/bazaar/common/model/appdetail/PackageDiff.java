package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;

/* compiled from: AppDetail.kt */
public final class PackageDiff {
    public final int newVersionCode;
    public final int oldVersionCode;
    public final String sha1hash;
    public final long size;
    public final String token;
    public final String verboseSize;
    public final String verboseSizeLabel;

    public PackageDiff(long j2, int i2, int i3, String str, String str2, String str3, String str4) {
        this.size = j2;
        this.oldVersionCode = i2;
        this.newVersionCode = i3;
        this.sha1hash = str;
        this.token = str2;
        this.verboseSize = str3;
        this.verboseSizeLabel = str4;
    }

    public static /* synthetic */ PackageDiff copy$default(PackageDiff packageDiff, long j2, int i2, int i3, String str, String str2, String str3, String str4, int i4, Object obj) {
        PackageDiff packageDiff2 = packageDiff;
        return packageDiff.copy((i4 & 1) != 0 ? packageDiff2.size : j2, (i4 & 2) != 0 ? packageDiff2.oldVersionCode : i2, (i4 & 4) != 0 ? packageDiff2.newVersionCode : i3, (i4 & 8) != 0 ? packageDiff2.sha1hash : str, (i4 & 16) != 0 ? packageDiff2.token : str2, (i4 & 32) != 0 ? packageDiff2.verboseSize : str3, (i4 & 64) != 0 ? packageDiff2.verboseSizeLabel : str4);
    }

    public final long component1() {
        return this.size;
    }

    public final int component2() {
        return this.oldVersionCode;
    }

    public final int component3() {
        return this.newVersionCode;
    }

    public final String component4() {
        return this.sha1hash;
    }

    public final String component5() {
        return this.token;
    }

    public final String component6() {
        return this.verboseSize;
    }

    public final String component7() {
        return this.verboseSizeLabel;
    }

    public final PackageDiff copy(long j2, int i2, int i3, String str, String str2, String str3, String str4) {
        PackageDiff packageDiff = new PackageDiff(j2, i2, i3, str, str2, str3, str4);
        return packageDiff;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof PackageDiff) {
                PackageDiff packageDiff = (PackageDiff) obj;
                if (this.size == packageDiff.size) {
                    if (this.oldVersionCode == packageDiff.oldVersionCode) {
                        if (!(this.newVersionCode == packageDiff.newVersionCode) || !j.a((Object) this.sha1hash, (Object) packageDiff.sha1hash) || !j.a((Object) this.token, (Object) packageDiff.token) || !j.a((Object) this.verboseSize, (Object) packageDiff.verboseSize) || !j.a((Object) this.verboseSizeLabel, (Object) packageDiff.verboseSizeLabel)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int getNewVersionCode() {
        return this.newVersionCode;
    }

    public final int getOldVersionCode() {
        return this.oldVersionCode;
    }

    public final String getSha1hash() {
        return this.sha1hash;
    }

    public final long getSize() {
        return this.size;
    }

    public final String getToken() {
        return this.token;
    }

    public final String getVerboseSize() {
        return this.verboseSize;
    }

    public final String getVerboseSizeLabel() {
        return this.verboseSizeLabel;
    }

    public int hashCode() {
        long j2 = this.size;
        int i2 = ((((((int) (j2 ^ (j2 >>> 32))) * 31) + this.oldVersionCode) * 31) + this.newVersionCode) * 31;
        String str = this.sha1hash;
        int i3 = 0;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.token;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.verboseSize;
        int hashCode3 = (hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.verboseSizeLabel;
        if (str4 != null) {
            i3 = str4.hashCode();
        }
        return hashCode3 + i3;
    }

    public String toString() {
        return "PackageDiff(size=" + this.size + ", oldVersionCode=" + this.oldVersionCode + ", newVersionCode=" + this.newVersionCode + ", sha1hash=" + this.sha1hash + ", token=" + this.token + ", verboseSize=" + this.verboseSize + ", verboseSizeLabel=" + this.verboseSizeLabel + ")";
    }
}
