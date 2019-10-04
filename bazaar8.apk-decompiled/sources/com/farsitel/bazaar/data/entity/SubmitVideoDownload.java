package com.farsitel.bazaar.data.entity;

import h.f.b.j;

/* compiled from: SubmitVideoDownload.kt */
public final class SubmitVideoDownload {
    public final boolean keepDownloadedFile;
    public final String message;

    public SubmitVideoDownload(boolean z, String str) {
        this.keepDownloadedFile = z;
        this.message = str;
    }

    public static /* synthetic */ SubmitVideoDownload copy$default(SubmitVideoDownload submitVideoDownload, boolean z, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = submitVideoDownload.keepDownloadedFile;
        }
        if ((i2 & 2) != 0) {
            str = submitVideoDownload.message;
        }
        return submitVideoDownload.copy(z, str);
    }

    public final boolean component1() {
        return this.keepDownloadedFile;
    }

    public final String component2() {
        return this.message;
    }

    public final SubmitVideoDownload copy(boolean z, String str) {
        return new SubmitVideoDownload(z, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SubmitVideoDownload) {
                SubmitVideoDownload submitVideoDownload = (SubmitVideoDownload) obj;
                if (!(this.keepDownloadedFile == submitVideoDownload.keepDownloadedFile) || !j.a((Object) this.message, (Object) submitVideoDownload.message)) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean getKeepDownloadedFile() {
        return this.keepDownloadedFile;
    }

    public final String getMessage() {
        return this.message;
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
        return "SubmitVideoDownload(keepDownloadedFile=" + this.keepDownloadedFile + ", message=" + this.message + ")";
    }
}
