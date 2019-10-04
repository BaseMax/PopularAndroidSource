package com.raizlabs.android.dbflow.config;

import java.util.Comparator;

public final class f implements Comparator<Object> {
    public final int compare(Object obj, Object obj2) {
        String obj3 = obj.toString();
        String obj4 = obj2.toString();
        int i = 0;
        int i2 = 0;
        while (true) {
            char a2 = a(obj3, i);
            char a3 = a(obj4, i2);
            int i3 = i;
            int i4 = 0;
            while (true) {
                if (!Character.isSpaceChar(a2) && a2 != '0') {
                    break;
                }
                i4 = a2 == '0' ? i4 + 1 : 0;
                i3++;
                a2 = a(obj3, i3);
            }
            int i5 = i2;
            int i6 = 0;
            while (true) {
                if (!Character.isSpaceChar(a3) && a3 != '0') {
                    break;
                }
                i6 = a3 == '0' ? i6 + 1 : 0;
                i5++;
                a3 = a(obj4, i5);
            }
            if (Character.isDigit(a2) && Character.isDigit(a3)) {
                String substring = obj3.substring(i3);
                String substring2 = obj4.substring(i5);
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                while (true) {
                    char a4 = a(substring, i7);
                    char a5 = a(substring2, i8);
                    if (!Character.isDigit(a4) && !Character.isDigit(a5)) {
                        break;
                    } else if (!Character.isDigit(a4)) {
                        i9 = -1;
                        break;
                    } else if (!Character.isDigit(a5)) {
                        i9 = 1;
                        break;
                    } else {
                        if (a4 >= a5) {
                            if (a4 <= a5) {
                                if (a4 == 0 && a5 == 0) {
                                    break;
                                }
                            } else if (i9 == 0) {
                                i9 = 1;
                            }
                        } else if (i9 == 0) {
                            i9 = -1;
                        }
                        i7++;
                        i8++;
                    }
                }
                if (i9 != 0) {
                    return i9;
                }
            }
            if (a2 == 0 && a3 == 0) {
                return i4 - i6;
            }
            if (a2 < a3) {
                return -1;
            }
            if (a2 > a3) {
                return 1;
            }
            i = i3 + 1;
            i2 = i5 + 1;
        }
    }

    private static char a(String str, int i) {
        if (i >= str.length()) {
            return 0;
        }
        return str.charAt(i);
    }
}
