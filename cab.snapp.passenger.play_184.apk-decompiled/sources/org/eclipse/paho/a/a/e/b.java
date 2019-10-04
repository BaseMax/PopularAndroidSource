package org.eclipse.paho.a.a.e;

public final class b {
    public static boolean equalsAny(CharSequence charSequence, CharSequence[] charSequenceArr) {
        boolean z = charSequence == null && charSequenceArr == null;
        if (charSequenceArr == null) {
            return z;
        }
        boolean z2 = z;
        for (int i = 0; i < charSequenceArr.length; i++) {
            z2 = z2 || charSequenceArr[i].equals(charSequence);
        }
        return z2;
    }

    public static boolean containsAny(CharSequence charSequence, char[] cArr) {
        if (!isEmpty(charSequence)) {
            if (!(cArr == null || cArr.length == 0)) {
                int length = charSequence.length();
                int length2 = cArr.length;
                int i = length - 1;
                int i2 = length2 - 1;
                for (int i3 = 0; i3 < length; i3++) {
                    char charAt = charSequence.charAt(i3);
                    for (int i4 = 0; i4 < length2; i4++) {
                        if (cArr[i4] == charAt) {
                            if (!Character.isHighSurrogate(charAt) || i4 == i2) {
                                return true;
                            }
                            if (i3 < i && cArr[i4 + 1] == charSequence.charAt(i3 + 1)) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
        }
        return false;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        return charSequence == null || charSequence.length() == 0;
    }

    public static int countMatches(CharSequence charSequence, CharSequence charSequence2) {
        int i = 0;
        if (isEmpty(charSequence) || isEmpty(charSequence2)) {
            return 0;
        }
        int i2 = 0;
        while (true) {
            int indexOf = charSequence.toString().indexOf(charSequence2.toString(), i);
            if (indexOf == -1) {
                return i2;
            }
            i2++;
            i = indexOf + charSequence2.length();
        }
    }

    private b() {
    }

    public static boolean containsAny(CharSequence charSequence, CharSequence charSequence2) {
        char[] cArr;
        if (charSequence2 == null) {
            return false;
        }
        if (charSequence2 instanceof String) {
            cArr = ((String) charSequence2).toCharArray();
        } else {
            int length = charSequence2.length();
            char[] cArr2 = new char[charSequence2.length()];
            for (int i = 0; i < length; i++) {
                cArr2[i] = charSequence2.charAt(i);
            }
            cArr = cArr2;
        }
        return containsAny(charSequence, cArr);
    }
}
