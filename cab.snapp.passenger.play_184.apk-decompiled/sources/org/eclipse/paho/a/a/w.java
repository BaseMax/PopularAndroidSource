package org.eclipse.paho.a.a;

import java.io.UnsupportedEncodingException;
import org.eclipse.paho.a.a.a.a;
import org.eclipse.paho.a.a.a.a.o;
import org.eclipse.paho.a.a.e.b;

public final class w {
    public static final String MULTI_LEVEL_WILDCARD = "#";
    public static final String MULTI_LEVEL_WILDCARD_PATTERN = "/#";
    public static final String SINGLE_LEVEL_WILDCARD = "+";
    public static final String TOPIC_LEVEL_SEPARATOR = "/";
    public static final String TOPIC_WILDCARDS = "#+";

    /* renamed from: a  reason: collision with root package name */
    private a f8801a;

    /* renamed from: b  reason: collision with root package name */
    private String f8802b;

    public w(String str, a aVar) {
        this.f8801a = aVar;
        this.f8802b = str;
    }

    public final o publish(byte[] bArr, int i, boolean z) throws p, s {
        q qVar = new q(bArr);
        qVar.setQos(i);
        qVar.setRetained(z);
        return publish(qVar);
    }

    public final o publish(q qVar) throws p, s {
        o oVar = new o(this.f8801a.getClient().getClientId());
        oVar.a(qVar);
        this.f8801a.sendNoWait(new o(getName(), qVar), oVar);
        oVar.internalTok.waitUntilSent();
        return oVar;
    }

    public final String getName() {
        return this.f8802b;
    }

    public final String toString() {
        return getName();
    }

    public static void validate(String str, boolean z) throws IllegalArgumentException {
        try {
            int length = str.getBytes("UTF-8").length;
            if (length <= 0 || length > 65535) {
                throw new IllegalArgumentException(String.format("Invalid topic length, should be in range[%d, %d]!", new Object[]{1, 65535}));
            } else if (z) {
                if (!b.equalsAny(str, new String[]{MULTI_LEVEL_WILDCARD, SINGLE_LEVEL_WILDCARD})) {
                    if (b.countMatches(str, MULTI_LEVEL_WILDCARD) > 1 || (str.contains(MULTI_LEVEL_WILDCARD) && !str.endsWith(MULTI_LEVEL_WILDCARD_PATTERN))) {
                        throw new IllegalArgumentException("Invalid usage of multi-level wildcard in topic string: ".concat(String.valueOf(str)));
                    }
                    a(str);
                }
            } else if (b.containsAny((CharSequence) str, (CharSequence) TOPIC_WILDCARDS)) {
                throw new IllegalArgumentException("The topic name MUST NOT contain any wildcard characters (#+)");
            }
        } catch (UnsupportedEncodingException e) {
            throw new IllegalStateException(e.getMessage());
        }
    }

    private static void a(String str) {
        char charAt = SINGLE_LEVEL_WILDCARD.charAt(0);
        char charAt2 = TOPIC_LEVEL_SEPARATOR.charAt(0);
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        int i = 0;
        while (i < length) {
            int i2 = i - 1;
            char c = i2 >= 0 ? charArray[i2] : 0;
            int i3 = i + 1;
            char c2 = i3 < length ? charArray[i3] : 0;
            if (charArray[i] != charAt || ((c == charAt2 || c == 0) && (c2 == charAt2 || c2 == 0))) {
                i = i3;
            } else {
                throw new IllegalArgumentException(String.format("Invalid usage of single-level wildcard in topic string '%s'!", new Object[]{str}));
            }
        }
    }

    public static boolean isMatched(String str, String str2) throws IllegalArgumentException {
        int length = str2.length();
        int length2 = str.length();
        validate(str, true);
        validate(str2, false);
        if (str.equals(str2)) {
            return true;
        }
        int i = 0;
        int i2 = 0;
        while (i < length2 && i2 < length && ((str2.charAt(i2) != '/' || str.charAt(i) == '/') && (str.charAt(i) == '+' || str.charAt(i) == '#' || str.charAt(i) == str2.charAt(i2)))) {
            if (str.charAt(i) == '+') {
                while (true) {
                    int i3 = i2 + 1;
                    if (i3 >= length || str2.charAt(i3) == '/') {
                        break;
                    }
                    i2++;
                }
            } else if (str.charAt(i) == '#') {
                i2 = length - 1;
            }
            i++;
            i2++;
        }
        if (i2 == length && i == length2) {
            return true;
        }
        if (str.length() - str2.length() == 2 && str.substring(str.length() - 2, str.length()).equals(MULTI_LEVEL_WILDCARD_PATTERN)) {
            if (str.substring(0, str.length() - 2).equals(str2)) {
                System.err.println("filterSub equals topicName: " + r11 + " == " + str2);
                return true;
            }
        }
        return false;
    }
}
