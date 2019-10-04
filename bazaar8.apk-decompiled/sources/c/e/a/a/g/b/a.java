package c.e.a.a.g.b;

import c.e.a.a.g.b;
import c.e.a.a.g.e;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.icy.IcyInfo;
import java.nio.ByteBuffer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: IcyDecoder */
public final class a implements b {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8345a = Pattern.compile("(.+?)='(.+?)';");

    public Metadata a(e eVar) {
        ByteBuffer byteBuffer = eVar.f7545c;
        return a(I.a(byteBuffer.array(), 0, byteBuffer.limit()));
    }

    public Metadata a(String str) {
        Matcher matcher = f8345a.matcher(str);
        String str2 = null;
        String str3 = null;
        for (int i2 = 0; matcher.find(i2); i2 = matcher.end()) {
            String l2 = I.l(matcher.group(1));
            String group = matcher.group(2);
            char c2 = 65535;
            int hashCode = l2.hashCode();
            if (hashCode != -315603473) {
                if (hashCode == 1646559960 && l2.equals("streamtitle")) {
                    c2 = 0;
                }
            } else if (l2.equals("streamurl")) {
                c2 = 1;
            }
            if (c2 == 0) {
                str2 = group;
            } else if (c2 != 1) {
                p.d("IcyDecoder", "Unrecognized ICY tag: " + str2);
            } else {
                str3 = group;
            }
        }
        if (str2 == null && str3 == null) {
            return null;
        }
        return new Metadata(new IcyInfo(str2, str3));
    }
}
