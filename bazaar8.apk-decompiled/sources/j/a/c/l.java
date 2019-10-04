package j.a.c;

import java.net.ProtocolException;
import okhttp3.Protocol;

/* compiled from: StatusLine */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final Protocol f15379a;

    /* renamed from: b  reason: collision with root package name */
    public final int f15380b;

    /* renamed from: c  reason: collision with root package name */
    public final String f15381c;

    public l(Protocol protocol, int i2, String str) {
        this.f15379a = protocol;
        this.f15380b = i2;
        this.f15381c = str;
    }

    public static l a(String str) {
        Protocol protocol;
        String str2;
        int i2 = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                protocol = Protocol.HTTP_1_0;
            } else if (charAt == 1) {
                protocol = Protocol.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            protocol = Protocol.HTTP_1_0;
            i2 = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i3 = i2 + 3;
        if (str.length() >= i3) {
            try {
                int parseInt = Integer.parseInt(str.substring(i2, i3));
                if (str.length() <= i3) {
                    str2 = "";
                } else if (str.charAt(i3) == ' ') {
                    str2 = str.substring(i2 + 4);
                } else {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                return new l(protocol, parseInt, str2);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f15379a == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f15380b);
        if (this.f15381c != null) {
            sb.append(' ');
            sb.append(this.f15381c);
        }
        return sb.toString();
    }
}
