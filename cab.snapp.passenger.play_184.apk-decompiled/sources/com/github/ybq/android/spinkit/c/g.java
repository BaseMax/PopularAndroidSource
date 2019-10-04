package com.github.ybq.android.spinkit.c;

import com.github.ybq.android.spinkit.b.f;

public final class g extends com.github.ybq.android.spinkit.b.g {
    public final f[] onCreateChild() {
        return new f[]{new i(), new i(), new i()};
    }

    public final void onChildCreated(f... fVarArr) {
        int i = 0;
        while (i < fVarArr.length) {
            f fVar = fVarArr[i];
            i++;
            fVar.setAnimationDelay(i * 200);
        }
    }
}
