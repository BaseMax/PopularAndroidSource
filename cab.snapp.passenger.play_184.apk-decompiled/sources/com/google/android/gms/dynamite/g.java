package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

final class g implements DynamiteModule.d {
    g() {
    }

    public final j zza(Context context, String str, i iVar) throws DynamiteModule.c {
        j jVar = new j();
        jVar.zzgxg = iVar.zzab(context, str);
        jVar.zzgxh = jVar.zzgxg != 0 ? iVar.zzc(context, str, false) : iVar.zzc(context, str, true);
        if (jVar.zzgxg == 0 && jVar.zzgxh == 0) {
            jVar.zzgxi = 0;
        } else if (jVar.zzgxh >= jVar.zzgxg) {
            jVar.zzgxi = 1;
        } else {
            jVar.zzgxi = -1;
        }
        return jVar;
    }
}
