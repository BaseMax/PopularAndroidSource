package com.koushikdutta.async.a;

import com.koushikdutta.async.l;
import com.koushikdutta.async.n;

public interface d {

    public static class a implements d {
        public void onDataAvailable(n nVar, l lVar) {
            lVar.recycle();
        }
    }

    void onDataAvailable(n nVar, l lVar);
}
