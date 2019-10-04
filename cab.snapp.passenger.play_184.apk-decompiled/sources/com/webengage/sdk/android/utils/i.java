package com.webengage.sdk.android.utils;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.paho.a.a.w;

public class i {

    /* renamed from: a  reason: collision with root package name */
    private static Pattern f5599a = Pattern.compile("P(?:([-+]?[0-9]+)Y)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)W)?(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)S)?)?");

    /* renamed from: b  reason: collision with root package name */
    private String f5600b;
    private long c;

    public i(long j, String str) {
        this.c = j;
        this.f5600b = str;
    }

    private int a(String str) {
        if (str == null) {
            return 0;
        }
        try {
            if (str.startsWith(w.SINGLE_LEVEL_WILDCARD)) {
                str = str.substring(1);
            }
            return Integer.valueOf(str).intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public Date a() {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.setTimeInMillis(this.c);
        String str = this.f5600b;
        if (str != null) {
            Matcher matcher = f5599a.matcher(str);
            if (matcher.matches()) {
                gregorianCalendar.add(1, a(matcher.group(1)));
                gregorianCalendar.add(2, a(matcher.group(2)));
                gregorianCalendar.add(4, a(matcher.group(3)));
                gregorianCalendar.add(5, a(matcher.group(4)));
                gregorianCalendar.add(10, a(matcher.group(6)));
                gregorianCalendar.add(12, a(matcher.group(7)));
                gregorianCalendar.add(13, a(matcher.group(8)));
                return gregorianCalendar.getTime();
            }
        }
        return gregorianCalendar.getTime();
    }
}
