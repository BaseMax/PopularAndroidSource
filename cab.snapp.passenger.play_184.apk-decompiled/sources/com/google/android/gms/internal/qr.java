package com.google.android.gms.internal;

import java.io.IOException;
import java.io.OutputStream;

public interface qr extends qt {
    byte[] toByteArray();

    ou toByteString();

    void writeTo(OutputStream outputStream) throws IOException;

    void zza(ph phVar) throws IOException;

    qx<? extends qr> zzcxm();

    qs zzcxp();

    int zzho();
}
