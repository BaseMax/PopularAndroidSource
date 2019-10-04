package com.google.zxing.common;

import com.google.zxing.d;
import java.util.HashMap;
import java.util.Map;

public enum CharacterSetECI {
    Cp437((String) new int[]{0, 2}, (int) new String[0]),
    ISO8859_1((String) new int[]{1, 3}, (int) new String[]{"ISO-8859-1"}),
    ISO8859_2((String) 4, (int) new String[]{"ISO-8859-2"}),
    ISO8859_3((String) 5, (int) new String[]{"ISO-8859-3"}),
    ISO8859_4((String) 6, (int) new String[]{"ISO-8859-4"}),
    ISO8859_5((String) 7, (int) new String[]{"ISO-8859-5"}),
    ISO8859_6((String) 8, (int) new String[]{"ISO-8859-6"}),
    ISO8859_7((String) 9, (int) new String[]{"ISO-8859-7"}),
    ISO8859_8((String) 10, (int) new String[]{"ISO-8859-8"}),
    ISO8859_9((String) 11, (int) new String[]{"ISO-8859-9"}),
    ISO8859_10((String) 12, (int) new String[]{"ISO-8859-10"}),
    ISO8859_11((String) 13, (int) new String[]{"ISO-8859-11"}),
    ISO8859_13((String) 15, (int) new String[]{"ISO-8859-13"}),
    ISO8859_14((String) 16, (int) new String[]{"ISO-8859-14"}),
    ISO8859_15((String) 17, (int) new String[]{"ISO-8859-15"}),
    ISO8859_16((String) 18, (int) new String[]{"ISO-8859-16"}),
    SJIS((String) 20, (int) new String[]{"Shift_JIS"}),
    Cp1250((String) 21, (int) new String[]{"windows-1250"}),
    Cp1251((String) 22, (int) new String[]{"windows-1251"}),
    Cp1252((String) 23, (int) new String[]{"windows-1252"}),
    Cp1256((String) 24, (int) new String[]{"windows-1256"}),
    UnicodeBigUnmarked((String) 25, (int) new String[]{"UTF-16BE", "UnicodeBig"}),
    UTF8((String) 26, (int) new String[]{"UTF-8"}),
    ASCII((String) new int[]{27, 170}, (int) new String[]{"US-ASCII"}),
    GB18030((String) 29, (int) new String[]{k.GB2312, "EUC_CN", "GBK"}),
    EUC_KR((String) 30, (int) new String[]{"EUC-KR"});
    

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, CharacterSetECI> f4298a = null;

    /* renamed from: b  reason: collision with root package name */
    private static final Map<String, CharacterSetECI> f4299b = null;
    private final int[] c;
    private final String[] d;

    static {
        f4298a = new HashMap();
        f4299b = new HashMap();
        for (CharacterSetECI characterSetECI : values()) {
            for (int valueOf : characterSetECI.c) {
                f4298a.put(Integer.valueOf(valueOf), characterSetECI);
            }
            f4299b.put(characterSetECI.name(), characterSetECI);
            for (String put : characterSetECI.d) {
                f4299b.put(put, characterSetECI);
            }
        }
    }

    /* JADX WARNING: type inference failed for: r4v0, types: [int, java.lang.String] */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private CharacterSetECI(int r4) {
        /*
            r3 = this;
            r0 = 1
            int[] r0 = new int[r0]
            r1 = 0
            r2 = 28
            r0[r1] = r2
            java.lang.String[] r1 = new java.lang.String[r1]
            r2 = 24
            r3.<init>((java.lang.String) r4, (int) r2, (int[]) r0, (java.lang.String[]) r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.CharacterSetECI.<init>(java.lang.String):void");
    }

    private CharacterSetECI(int i, String... strArr) {
        this.c = new int[]{i};
        this.d = strArr;
    }

    private CharacterSetECI(int[] iArr, String... strArr) {
        this.c = iArr;
        this.d = strArr;
    }

    public final int getValue() {
        return this.c[0];
    }

    public static CharacterSetECI getCharacterSetECIByValue(int i) throws d {
        if (i >= 0 && i < 900) {
            return f4298a.get(Integer.valueOf(i));
        }
        throw d.getFormatInstance();
    }

    public static CharacterSetECI getCharacterSetECIByName(String str) {
        return f4299b.get(str);
    }
}
