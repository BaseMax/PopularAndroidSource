package com.google.android.gms.internal;

import com.google.android.gms.internal.or;
import com.google.android.gms.internal.os;
import java.io.IOException;
import java.io.OutputStream;

public abstract class or<MessageType extends or<MessageType, BuilderType>, BuilderType extends os<MessageType, BuilderType>> implements qr {

    /* renamed from: b  reason: collision with root package name */
    private static boolean f3424b = false;

    /* renamed from: a  reason: collision with root package name */
    protected int f3425a = 0;

    public final byte[] toByteArray() {
        try {
            byte[] bArr = new byte[zzho()];
            ph zzbc = ph.zzbc(bArr);
            zza(zzbc);
            zzbc.zzcwt();
            return bArr;
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "byte array".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("byte array");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final ou toByteString() {
        try {
            oz a2 = ou.a(zzho());
            zza(a2.zzcvs());
            return a2.zzcvr();
        } catch (IOException e) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 62 + "ByteString".length());
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ");
            sb.append("ByteString");
            sb.append(" threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e);
        }
    }

    public final void writeTo(OutputStream outputStream) throws IOException {
        ph zzb = ph.zzb(outputStream, ph.a(zzho()));
        zza(zzb);
        zzb.flush();
    }
}
