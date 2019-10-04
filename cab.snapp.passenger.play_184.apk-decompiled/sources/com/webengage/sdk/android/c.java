package com.webengage.sdk.android;

import android.content.Context;
import java.util.Queue;

public class c {

    /* renamed from: a  reason: collision with root package name */
    static Analytics f5525a;

    /* renamed from: b  reason: collision with root package name */
    static Analytics f5526b;
    static Analytics c;

    protected static Analytics a() {
        if (f5526b == null) {
            f5526b = new e();
        }
        return f5526b;
    }

    public static Analytics a(Context context) {
        if (f5525a == null) {
            f fVar = new f(context.getApplicationContext());
            f5525a = new d(context, fVar, new aa(fVar, context.getApplicationContext()), new z(context.getApplicationContext()));
        }
        return f5525a;
    }

    protected static Analytics a(Queue<ae> queue) {
        if (c == null) {
            c = new w(queue);
        }
        return c;
    }
}
