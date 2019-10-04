package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

final class f implements DynamiteModule.d {
    f() {
    }

    public final j zza(Context context, String str, i iVar) throws DynamiteModule.c {
        int i;
        j jVar = new j();
        jVar.zzgxg = iVar.zzab(context, str);
        jVar.zzgxh = iVar.zzc(context, str, true);
        if (jVar.zzgxg == 0 && jVar.zzgxh == 0) {
            i = 0;
        } else if (jVar.zzgxh >= jVar.zzgxg) {
            jVar.zzgxi = 1;
            return jVar;
        } else {
            i = -1;
        }
        jVar.zzgxi = i;
        return jVar;
    }
}
