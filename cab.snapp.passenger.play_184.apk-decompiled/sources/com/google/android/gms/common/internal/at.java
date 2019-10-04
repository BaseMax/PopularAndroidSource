package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.a.m;
import com.google.android.gms.a.o;
import com.google.android.gms.a.p;

public final class at extends o<ad> {

    /* renamed from: a  reason: collision with root package name */
    private static final at f2931a = new at();

    private at() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    private final View a(Context context, int i, int i2) throws p {
        try {
            zzbv zzbv = new zzbv(i, i2, null);
            return (View) m.zzx(((ad) a(context)).zza(m.zzz(context), zzbv));
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i);
            sb.append(" and color ");
            sb.append(i2);
            throw new p(sb.toString(), e);
        }
    }

    public static View zzc(Context context, int i, int i2) throws p {
        return f2931a.a(context, i, i2);
    }

    public final /* synthetic */ Object zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof ad ? (ad) queryLocalInterface : new ae(iBinder);
    }
}
