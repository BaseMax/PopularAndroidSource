package com.google.android.gms.common.util;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.a.a;
import org.a.b;
import org.a.c;

public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f3013a = Pattern.compile("\\\\.");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f3014b = Pattern.compile("[\\\\\"/\b\f\n\r\t]");

    public static boolean zzc(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        if ((obj instanceof c) && (obj2 instanceof c)) {
            c cVar = (c) obj;
            c cVar2 = (c) obj2;
            if (cVar.length() != cVar2.length()) {
                return false;
            }
            Iterator<String> keys = cVar.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!cVar2.has(next)) {
                    return false;
                }
                try {
                    if (!zzc(cVar.get(next), cVar2.get(next))) {
                        return false;
                    }
                } catch (b unused) {
                }
            }
            return true;
        } else if (!(obj instanceof a) || !(obj2 instanceof a)) {
            return obj.equals(obj2);
        } else {
            a aVar = (a) obj;
            a aVar2 = (a) obj2;
            if (aVar.length() != aVar2.length()) {
                return false;
            }
            int i = 0;
            while (i < aVar.length()) {
                try {
                    if (!zzc(aVar.get(i), aVar2.get(i))) {
                        return false;
                    }
                    i++;
                } catch (b unused2) {
                    return false;
                }
            }
            return true;
        }
    }

    public static String zzgr(String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            Matcher matcher = f3014b.matcher(str);
            StringBuffer stringBuffer = null;
            while (matcher.find()) {
                if (stringBuffer == null) {
                    stringBuffer = new StringBuffer();
                }
                char charAt = matcher.group().charAt(0);
                if (charAt == 12) {
                    str2 = "\\\\f";
                } else if (charAt == 13) {
                    str2 = "\\\\r";
                } else if (charAt == '\"') {
                    str2 = "\\\\\\\"";
                } else if (charAt == '/') {
                    str2 = "\\\\/";
                } else if (charAt != '\\') {
                    switch (charAt) {
                        case 8:
                            str2 = "\\\\b";
                            break;
                        case 9:
                            str2 = "\\\\t";
                            break;
                        case 10:
                            str2 = "\\\\n";
                            break;
                    }
                } else {
                    str2 = "\\\\\\\\";
                }
                matcher.appendReplacement(stringBuffer, str2);
            }
            if (stringBuffer == null) {
                return str;
            }
            matcher.appendTail(stringBuffer);
            str = stringBuffer.toString();
        }
        return str;
    }
}
