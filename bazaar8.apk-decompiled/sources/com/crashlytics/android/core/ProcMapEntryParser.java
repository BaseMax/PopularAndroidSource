package com.crashlytics.android.core;

import e.a.a.a.f;
import e.a.a.a.o;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ProcMapEntryParser {
    public static final Pattern MAP_REGEX = Pattern.compile("\\s*(\\p{XDigit}+)-\\s*(\\p{XDigit}+)\\s+(.{4})\\s+\\p{XDigit}+\\s+.+\\s+\\d+\\s+(.*)");

    public static ProcMapEntry parse(String str) {
        Matcher matcher = MAP_REGEX.matcher(str);
        if (!matcher.matches()) {
            return null;
        }
        try {
            long longValue = Long.valueOf(matcher.group(1), 16).longValue();
            ProcMapEntry procMapEntry = new ProcMapEntry(longValue, Long.valueOf(matcher.group(2), 16).longValue() - longValue, matcher.group(3), matcher.group(4));
            return procMapEntry;
        } catch (Exception unused) {
            o e2 = f.e();
            e2.d(CrashlyticsCore.TAG, "Could not parse map entry: " + str);
            return null;
        }
    }
}
