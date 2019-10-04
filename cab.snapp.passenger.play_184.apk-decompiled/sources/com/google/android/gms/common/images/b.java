package com.google.android.gms.common.images;

import android.net.Uri;
import com.google.android.gms.common.internal.ag;
import java.util.Arrays;

final class b {
    public final Uri uri;

    public b(Uri uri2) {
        this.uri = uri2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return ag.equal(((b) obj).uri, this.uri);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.uri});
    }
}
