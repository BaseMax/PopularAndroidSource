package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

final class b implements DynamiteModule.d {
    b() {
    }

    public final j zza(Context context, String str, i iVar) throws DynamiteModule.c {
        j jVar = new j();
        jVar.zzgxh = iVar.zzc(context, str, true);
        if (jVar.zzgxh != 0) {
            jVar.zzgxi = 1;
        } else {
            jVar.zzgxg = iVar.zzab(context, str);
            if (jVar.zzgxg != 0) {
                jVar.zzgxi = -1;
            }
        }
        return jVar;
    }
}
