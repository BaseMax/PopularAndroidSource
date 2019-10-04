package com.bumptech.glide.manager;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.c;

public final class f implements d {
    public final c build(Context context, c.a aVar) {
        return ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0 ? new e(context, aVar) : new j();
    }
}
