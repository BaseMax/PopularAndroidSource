package com.github.ybq.android.spinkit.c;

import com.github.ybq.android.spinkit.b.f;
import com.github.ybq.android.spinkit.b.g;

public final class h extends g {
    public final f[] onCreateChild() {
        return new f[]{new j(), new j(), new j()};
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
