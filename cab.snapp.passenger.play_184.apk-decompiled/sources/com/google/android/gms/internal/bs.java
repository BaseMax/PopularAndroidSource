package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ap;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

final class bs {

    /* renamed from: a  reason: collision with root package name */
    private int f3100a;

    /* renamed from: b  reason: collision with root package name */
    private ByteArrayOutputStream f3101b = new ByteArrayOutputStream();
    private /* synthetic */ br c;

    public bs(br brVar) {
        this.c = brVar;
    }

    public final byte[] getPayload() {
        return this.f3101b.toByteArray();
    }

    public final int zzzv() {
        return this.f3100a;
    }

    public final boolean zze(bk bkVar) {
        ap.checkNotNull(bkVar);
        if (this.f3100a + 1 > ax.zzyv()) {
            return false;
        }
        String a2 = this.c.a(bkVar, false);
        if (a2 == null) {
            this.c.zzdta.zzwt().zza(bkVar, "Error formatting hit");
            return true;
        }
        byte[] bytes = a2.getBytes();
        int length = bytes.length;
        if (length > ax.zzyr()) {
            this.c.zzdta.zzwt().zza(bkVar, "Hit size exceeds the maximum size limit");
            return true;
        }
        if (this.f3101b.size() > 0) {
            length++;
        }
        if (this.f3101b.size() + length > bf.zzdww.get().intValue()) {
            return false;
        }
        try {
            if (this.f3101b.size() > 0) {
                this.f3101b.write(br.c);
            }
            this.f3101b.write(bytes);
            this.f3100a++;
            return true;
        } catch (IOException e) {
            this.c.zze("Failed to write payload when batching hits", e);
            return true;
        }
    }
}
