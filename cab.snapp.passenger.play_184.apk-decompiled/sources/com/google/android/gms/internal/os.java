package com.google.android.gms.internal;

import com.google.android.gms.internal.or;
import com.google.android.gms.internal.os;
import java.io.IOException;

public abstract class os<MessageType extends or<MessageType, BuilderType>, BuilderType extends os<MessageType, BuilderType>> implements qs {
    /* access modifiers changed from: protected */
    public abstract BuilderType a(MessageType messagetype);

    /* renamed from: zza */
    public abstract BuilderType zzb(pd pdVar, pk pkVar) throws IOException;

    /* renamed from: zzcvh */
    public abstract BuilderType clone();

    public final /* synthetic */ qs zzd(qr qrVar) {
        if (zzcxq().getClass().isInstance(qrVar)) {
            return a((or) qrVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }
}
