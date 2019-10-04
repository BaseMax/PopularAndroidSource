package com.ihsanbal.logging;

import java.util.logging.Level;
import java.util.logging.Logger;

final class b {

    /* renamed from: a  reason: collision with root package name */
    private static String[] f4425a = {". ", " ."};

    /* renamed from: b  reason: collision with root package name */
    private static int f4426b;

    protected b() {
        throw new UnsupportedOperationException();
    }

    static void a(int i, String str, String str2, boolean z) {
        String str3;
        if (z) {
            f4426b ^= 1;
            str3 = f4425a[f4426b] + str;
        } else {
            str3 = str;
        }
        if (z) {
            str = str3;
        }
        Logger logger = Logger.getLogger(str);
        if (i != 4) {
            logger.log(Level.WARNING, str2);
        } else {
            logger.log(Level.INFO, str2);
        }
    }
}
