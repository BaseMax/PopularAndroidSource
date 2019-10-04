package com.mapbox.android.b;

import android.util.Pair;

public final class i extends Pair<Integer, Integer> {
    public i(Integer num, Integer num2) {
        super(num, num2);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            i iVar = (i) obj;
            if ((((Integer) this.first).equals(iVar.first) && ((Integer) this.second).equals(iVar.second)) || (((Integer) this.first).equals(iVar.second) && ((Integer) this.second).equals(iVar.first))) {
                return true;
            }
        }
        return false;
    }
}
