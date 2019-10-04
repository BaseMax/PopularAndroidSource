package c.c.a.e.d.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.PackageDiff;
import h.f.b.j;

/* compiled from: AppDetailResponseDto.kt */
public final class m {
    @c("newVersionCode")
    public final int newVersionCode;
    @c("oldVersionCode")
    public final int oldVersionCode;
    @c("sha1hash")
    public final String sha1hash;
    @c("size")
    public final long size;
    @c("token")
    public final String token;
    @c("verboseSize")
    public final String verboseSize;
    @c("verboseSizeLabel")
    public final String verboseSizeLabel;

    public final PackageDiff a() {
        PackageDiff packageDiff = new PackageDiff(this.size, this.oldVersionCode, this.newVersionCode, this.sha1hash, this.token, this.verboseSize, this.verboseSizeLabel);
        return packageDiff;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof m) {
                m mVar = (m) obj;
                if (this.size == mVar.size) {
                    if (this.oldVersionCode == mVar.oldVersionCode) {
                        if (!(this.newVersionCode == mVar.newVersionCode) || !j.a((Object) this.sha1hash, (Object) mVar.sha1hash) || !j.a((Object) this.token, (Object) mVar.token) || !j.a((Object) this.verboseSize, (Object) mVar.verboseSize) || !j.a((Object) this.verboseSizeLabel, (Object) mVar.verboseSizeLabel)) {
                            return false;
                        }
                    }
                }
            }
            return false;
        }
        return true;
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
        return "PackageDiffDto(size=" + this.size + ", oldVersionCode=" + this.oldVersionCode + ", newVersionCode=" + this.newVersionCode + ", sha1hash=" + this.sha1hash + ", token=" + this.token + ", verboseSize=" + this.verboseSize + ", verboseSizeLabel=" + this.verboseSizeLabel + ")";
    }
}
