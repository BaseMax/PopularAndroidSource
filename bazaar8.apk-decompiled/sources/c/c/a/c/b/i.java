package c.c.a.c.b;

import android.content.Context;
import android.text.Html;
import android.text.Spanned;
import c.c.a.c.c.a;
import c.c.a.c.h.d;
import c.e.d.m;
import c.e.d.p;
import c.e.d.s;
import com.crashlytics.android.core.SessionProtobufHelper;
import h.f.b.j;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.TypeCastException;
import kotlin.text.Regex;

/* compiled from: StringExt.kt */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f4697a = Pattern.compile("(?:^|[\\W])((ht|f)tp(s?):\\/\\/|www\\.)(([\\w\\-]+\\.){1,}?([\\w\\-.~]+\\/?)*[\\p{Alnum}.,%_=?&#\\-+()\\[\\]\\*$~@!:/{};']*)", 42);

    public static final Spanned a(String str) {
        j.b(str, "$this$fromHtml");
        if (d.a(24)) {
            Spanned fromHtml = Html.fromHtml(str, 0);
            j.a((Object) fromHtml, "Html.fromHtml(this, Html.FROM_HTML_MODE_LEGACY)");
            return fromHtml;
        }
        Spanned fromHtml2 = Html.fromHtml(str);
        j.a((Object) fromHtml2, "Html.fromHtml(this)");
        return fromHtml2;
    }

    public static final String b(String str) {
        j.b(str, "$this$getUrl");
        Matcher matcher = f4697a.matcher(str);
        String str2 = null;
        while (matcher.find()) {
            str2 = str.substring(matcher.start(1), matcher.end());
            j.a((Object) str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str2;
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x000b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static final boolean c(java.lang.String r1) {
        /*
            java.lang.String r0 = "$this$isJSONValid"
            h.f.b.j.b(r1, r0)
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch:{ JSONException -> 0x000b }
            r0.<init>(r1)     // Catch:{ JSONException -> 0x000b }
            goto L_0x0010
        L_0x000b:
            org.json.JSONArray r0 = new org.json.JSONArray     // Catch:{ JSONException -> 0x0012 }
            r0.<init>(r1)     // Catch:{ JSONException -> 0x0012 }
        L_0x0010:
            r1 = 1
            return r1
        L_0x0012:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.c.b.i.c(java.lang.String):boolean");
    }

    public static final boolean d(String str) {
        j.b(str, "$this$isValidEmail");
        return (str.length() > 0) && new Regex(a.f4696c.a()).a(str);
    }

    public static final boolean e(String str) {
        j.b(str, "$this$isValidPhoneNumber");
        return (str.length() > 0) && new Regex(a.f4696c.b()).a(str);
    }

    public static final String f(String str) {
        String str2 = "";
        int i2 = 0;
        while (i2 < str.length()) {
            if (str != null) {
                char[] charArray = str.toCharArray();
                j.a((Object) charArray, "(this as java.lang.String).toCharArray()");
                char c2 = charArray[i2];
                if ('0' <= c2 && '9' >= c2) {
                    str2 = str2 + String.valueOf((char) (c2 + 1728));
                } else if (c2 == ',') {
                    str2 = str2 + "٬";
                } else {
                    str2 = str2 + c2;
                }
                i2++;
            } else {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
        }
        return str2;
    }

    public static final m g(String str) {
        j.b(str, "$this$toJsonArray");
        try {
            p a2 = new s().a(str);
            j.a((Object) a2, "jsonElement");
            if (!a2.f()) {
                return new m();
            }
            m b2 = a2.b();
            j.a((Object) b2, "jsonElement.asJsonArray");
            return b2;
        } catch (Exception e2) {
            a.f4699b.a((Throwable) e2);
            return new m();
        }
    }

    public static final String a(String str, int i2) {
        j.b(str, "$this$getLastNChars");
        if (str.length() == i2) {
            return str;
        }
        if (str.length() > i2) {
            String substring = str.substring(str.length() - i2);
            j.a((Object) substring, "(this as java.lang.String).substring(startIndex)");
            return substring;
        }
        throw new IllegalArgumentException("word has less than " + i2 + " characters!");
    }

    public static final String a(String str, Context context) {
        j.b(str, "$this$localizeNumber");
        j.b(context, "context");
        try {
            StringBuilder sb = new StringBuilder();
            String str2 = str;
            while (h.k.m.b(str2, SessionProtobufHelper.SIGNAL_DEFAULT, false, 2, null)) {
                sb.append(context.getString(c.c.a.c.a.number_placeholder, new Object[]{0}));
                if (str2 != null) {
                    str2 = str2.substring(1);
                    j.a((Object) str2, "(this as java.lang.String).substring(startIndex)");
                } else {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
            }
            sb.append(context.getString(c.c.a.c.a.number_placeholder, new Object[]{Long.valueOf(Long.parseLong(str))}));
            String sb2 = sb.toString();
            j.a((Object) sb2, "result.toString()");
            return sb2;
        } catch (Exception unused) {
            return str;
        }
    }

    public static final String a(String str, Locale locale) {
        j.b(str, "$this$persianDigitsIfPersian");
        j.b(locale, "locale");
        return (!j.a((Object) "fa", (Object) locale.getLanguage()) || !(j.a((Object) "TJ", (Object) locale.getCountry()) ^ true)) ? str : f(str);
    }
}
