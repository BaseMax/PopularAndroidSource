package com.webengage.sdk.android;

import android.content.Context;
import com.webengage.sdk.android.actions.exception.ImageLoadException;
import com.webengage.sdk.android.utils.a.c;
import com.webengage.sdk.android.utils.a.g;
import com.webengage.sdk.android.utils.f;
import com.webengage.sdk.android.utils.k;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

class t implements c {
    t() {
    }

    public g a(g gVar, Context context) {
        g.a a2;
        if (gVar.g() != null) {
            try {
                if ("landscape".equalsIgnoreCase(gVar.g())) {
                    return gVar.o().a((InputStream) new ByteArrayInputStream(k.a((Object) f.a(gVar, 192.0f, context.getApplicationContext())))).a();
                } else if ("portrait".equalsIgnoreCase(gVar.g())) {
                    return gVar.o().a((InputStream) new ByteArrayInputStream(k.a((Object) f.a(gVar, 192.0f, 192.0f, context.getApplicationContext())))).a();
                }
            } catch (Exception e) {
                a2 = gVar.o().a((Exception) new ImageLoadException(e.getMessage()));
                return a2.a((InputStream) null).a();
            } catch (OutOfMemoryError unused) {
                a2 = gVar.o().a((Exception) new ImageLoadException("OutOfMemoryError"));
                return a2.a((InputStream) null).a();
            }
        }
        return gVar;
    }

    public boolean a(com.webengage.sdk.android.utils.a.f fVar, Context context) {
        return true;
    }
}
