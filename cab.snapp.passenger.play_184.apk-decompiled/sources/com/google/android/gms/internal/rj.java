package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Map;

final class rj extends ri<FieldDescriptorType, Object> {
    rj(int i) {
        super(i, (byte) 0);
    }

    public final void zzbiy() {
        if (!isImmutable()) {
            for (int i = 0; i < zzczj(); i++) {
                Map.Entry zzmb = zzmb(i);
                if (((pq) zzmb.getKey()).zzcxj()) {
                    zzmb.setValue(Collections.unmodifiableList((List) zzmb.getValue()));
                }
            }
            for (Map.Entry entry : zzczk()) {
                if (((pq) entry.getKey()).zzcxj()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zzbiy();
    }
}
