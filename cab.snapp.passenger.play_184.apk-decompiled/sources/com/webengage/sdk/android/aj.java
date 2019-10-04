package com.webengage.sdk.android;

import android.content.Context;
import java.util.Queue;

class aj {

    /* renamed from: a  reason: collision with root package name */
    static User f5500a;

    /* renamed from: b  reason: collision with root package name */
    static User f5501b;
    static User c;

    protected static User a() {
        if (f5501b == null) {
            f5501b = new al();
        }
        return f5501b;
    }

    public static User a(Context context, Analytics analytics) {
        if (f5500a == null) {
            f5500a = new ak(context.getApplicationContext(), analytics);
        }
        return f5500a;
    }

    protected static User a(Queue<ae> queue) {
        if (c == null) {
            c = new x(queue);
        }
        return c;
    }
}
