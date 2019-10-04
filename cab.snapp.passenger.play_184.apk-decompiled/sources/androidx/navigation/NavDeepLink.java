package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class NavDeepLink {
    private static final Pattern SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    private final ArrayList<String> mArguments = new ArrayList<>();
    private final boolean mExactDeepLink;
    private final Pattern mPattern;

    /* JADX WARNING: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0076  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    NavDeepLink(java.lang.String r10) {
        /*
            r9 = this;
            r9.<init>()
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            r9.mArguments = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "^"
            r0.<init>(r1)
            java.util.regex.Pattern r1 = SCHEME_PATTERN
            java.util.regex.Matcher r1 = r1.matcher(r10)
            boolean r1 = r1.find()
            if (r1 != 0) goto L_0x0022
            java.lang.String r1 = "http[s]?://"
            r0.append(r1)
        L_0x0022:
            java.lang.String r1 = "\\{(.+?)\\}"
            java.util.regex.Pattern r1 = java.util.regex.Pattern.compile(r1)
            java.util.regex.Matcher r1 = r1.matcher(r10)
            java.lang.String r2 = ".*"
            boolean r3 = r10.contains(r2)
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L_0x003c
            r6 = r9
            r3 = r10
            r7 = r0
            r10 = 1
            r0 = 0
            goto L_0x0045
        L_0x003c:
            r3 = r9
            r6 = r0
            r0 = r10
            r10 = 0
        L_0x0040:
            r7 = r6
            r6 = r3
            r3 = r0
            r0 = r10
            r10 = 0
        L_0x0045:
            boolean r8 = r1.find()
            if (r8 == 0) goto L_0x0070
            java.lang.String r10 = r1.group(r4)
            java.util.ArrayList<java.lang.String> r8 = r6.mArguments
            r8.add(r10)
            int r10 = r1.start()
            java.lang.String r10 = r3.substring(r0, r10)
            java.lang.String r10 = java.util.regex.Pattern.quote(r10)
            r7.append(r10)
            java.lang.String r10 = "(.+?)"
            r7.append(r10)
            int r10 = r1.end()
            r0 = r3
            r3 = r6
            r6 = r7
            goto L_0x0040
        L_0x0070:
            int r1 = r3.length()
            if (r0 >= r1) goto L_0x0081
            java.lang.String r0 = r3.substring(r0)
            java.lang.String r0 = java.util.regex.Pattern.quote(r0)
            r7.append(r0)
        L_0x0081:
            java.lang.String r0 = r7.toString()
            java.lang.String r1 = "\\E.*\\Q"
            java.lang.String r0 = r0.replace(r2, r1)
            java.util.regex.Pattern r0 = java.util.regex.Pattern.compile(r0)
            r6.mPattern = r0
            r6.mExactDeepLink = r10
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDeepLink.<init>(java.lang.String):void");
    }

    /* access modifiers changed from: package-private */
    public boolean matches(Uri uri) {
        return this.mPattern.matcher(uri.toString()).matches();
    }

    /* access modifiers changed from: package-private */
    public boolean isExactDeepLink() {
        return this.mExactDeepLink;
    }

    /* access modifiers changed from: package-private */
    public Bundle getMatchingArguments(Uri uri, Map<String, NavArgument> map) {
        Matcher matcher = this.mPattern.matcher(uri.toString());
        if (!matcher.matches()) {
            return null;
        }
        Bundle bundle = new Bundle();
        int size = this.mArguments.size();
        int i = 0;
        while (i < size) {
            String str = this.mArguments.get(i);
            i++;
            String decode = Uri.decode(matcher.group(i));
            NavArgument navArgument = map.get(str);
            if (navArgument != null) {
                try {
                    navArgument.getType().parseAndPut(bundle, str, decode);
                } catch (IllegalArgumentException unused) {
                    return null;
                }
            } else {
                bundle.putString(str, decode);
            }
        }
        return bundle;
    }
}
