package c.c.a.e.d.h.e.a.c.a;

import c.e.d.a.c;
import com.farsitel.bazaar.data.entity.SubmitVideoDownload;
import h.f.b.j;

/* compiled from: SubmitVideoDownloadResponseDto.kt */
public final class e {
    @c("keepDownloadedFile")
    public final boolean keepDownloadedFile;
    @c("message")
    public final String message;

    public final SubmitVideoDownload a() {
        return new SubmitVideoDownload(this.keepDownloadedFile, this.message);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                if (!(this.keepDownloadedFile == eVar.keepDownloadedFile) || !j.a((Object) this.message, (Object) eVar.message)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        boolean z = this.keepDownloadedFile;
        if (z) {
            z = true;
        }
        int i2 = (z ? 1 : 0) * true;
        String str = this.message;
        return i2 + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        return "SubmitVideoDownloadResponseDto(keepDownloadedFile=" + this.keepDownloadedFile + ", message=" + this.message + ")";
    }
}
