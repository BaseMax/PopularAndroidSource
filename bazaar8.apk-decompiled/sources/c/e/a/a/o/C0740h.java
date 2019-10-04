package c.e.a.a.o;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* renamed from: c.e.a.a.o.h  reason: case insensitive filesystem */
/* compiled from: ColorParser */
public final class C0740h {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f9586a = Pattern.compile("^rgb\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f9587b = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)$");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f9588c = Pattern.compile("^rgba\\((\\d{1,3}),(\\d{1,3}),(\\d{1,3}),(\\d*\\.?\\d*?)\\)$");

    /* renamed from: d  reason: collision with root package name */
    public static final Map<String, Integer> f9589d = new HashMap();

    static {
        f9589d.put("aliceblue", -984833);
        f9589d.put("antiquewhite", -332841);
        f9589d.put("aqua", -16711681);
        f9589d.put("aquamarine", -8388652);
        f9589d.put("azure", -983041);
        f9589d.put("beige", -657956);
        f9589d.put("bisque", -6972);
        f9589d.put("black", -16777216);
        f9589d.put("blanchedalmond", -5171);
        f9589d.put("blue", -16776961);
        f9589d.put("blueviolet", -7722014);
        f9589d.put("brown", -5952982);
        f9589d.put("burlywood", -2180985);
        f9589d.put("cadetblue", -10510688);
        f9589d.put("chartreuse", -8388864);
        f9589d.put("chocolate", -2987746);
        f9589d.put("coral", -32944);
        f9589d.put("cornflowerblue", -10185235);
        f9589d.put("cornsilk", -1828);
        f9589d.put("crimson", -2354116);
        f9589d.put("cyan", -16711681);
        f9589d.put("darkblue", -16777077);
        f9589d.put("darkcyan", -16741493);
        f9589d.put("darkgoldenrod", -4684277);
        f9589d.put("darkgray", -5658199);
        f9589d.put("darkgreen", -16751616);
        f9589d.put("darkgrey", -5658199);
        f9589d.put("darkkhaki", -4343957);
        f9589d.put("darkmagenta", -7667573);
        f9589d.put("darkolivegreen", -11179217);
        f9589d.put("darkorange", -29696);
        f9589d.put("darkorchid", -6737204);
        f9589d.put("darkred", -7667712);
        f9589d.put("darksalmon", -1468806);
        f9589d.put("darkseagreen", -7357297);
        f9589d.put("darkslateblue", -12042869);
        f9589d.put("darkslategray", -13676721);
        f9589d.put("darkslategrey", -13676721);
        f9589d.put("darkturquoise", -16724271);
        f9589d.put("darkviolet", -7077677);
        f9589d.put("deeppink", -60269);
        f9589d.put("deepskyblue", -16728065);
        f9589d.put("dimgray", -9868951);
        f9589d.put("dimgrey", -9868951);
        f9589d.put("dodgerblue", -14774017);
        f9589d.put("firebrick", -5103070);
        f9589d.put("floralwhite", -1296);
        f9589d.put("forestgreen", -14513374);
        f9589d.put("fuchsia", -65281);
        f9589d.put("gainsboro", -2302756);
        f9589d.put("ghostwhite", -460545);
        f9589d.put("gold", -10496);
        f9589d.put("goldenrod", -2448096);
        f9589d.put("gray", -8355712);
        f9589d.put("green", -16744448);
        f9589d.put("greenyellow", -5374161);
        f9589d.put("grey", -8355712);
        f9589d.put("honeydew", -983056);
        f9589d.put("hotpink", -38476);
        f9589d.put("indianred", -3318692);
        f9589d.put("indigo", -11861886);
        f9589d.put("ivory", -16);
        f9589d.put("khaki", -989556);
        f9589d.put("lavender", -1644806);
        f9589d.put("lavenderblush", -3851);
        f9589d.put("lawngreen", -8586240);
        f9589d.put("lemonchiffon", -1331);
        f9589d.put("lightblue", -5383962);
        f9589d.put("lightcoral", -1015680);
        f9589d.put("lightcyan", -2031617);
        f9589d.put("lightgoldenrodyellow", -329006);
        f9589d.put("lightgray", -2894893);
        f9589d.put("lightgreen", -7278960);
        f9589d.put("lightgrey", -2894893);
        f9589d.put("lightpink", -18751);
        f9589d.put("lightsalmon", -24454);
        f9589d.put("lightseagreen", -14634326);
        f9589d.put("lightskyblue", -7876870);
        f9589d.put("lightslategray", -8943463);
        f9589d.put("lightslategrey", -8943463);
        f9589d.put("lightsteelblue", -5192482);
        f9589d.put("lightyellow", -32);
        f9589d.put("lime", -16711936);
        f9589d.put("limegreen", -13447886);
        f9589d.put("linen", -331546);
        f9589d.put("magenta", -65281);
        f9589d.put("maroon", -8388608);
        f9589d.put("mediumaquamarine", -10039894);
        f9589d.put("mediumblue", -16777011);
        f9589d.put("mediumorchid", -4565549);
        f9589d.put("mediumpurple", -7114533);
        f9589d.put("mediumseagreen", -12799119);
        f9589d.put("mediumslateblue", -8689426);
        f9589d.put("mediumspringgreen", -16713062);
        f9589d.put("mediumturquoise", -12004916);
        f9589d.put("mediumvioletred", -3730043);
        f9589d.put("midnightblue", -15132304);
        f9589d.put("mintcream", -655366);
        f9589d.put("mistyrose", -6943);
        f9589d.put("moccasin", -6987);
        f9589d.put("navajowhite", -8531);
        f9589d.put("navy", -16777088);
        f9589d.put("oldlace", -133658);
        f9589d.put("olive", -8355840);
        f9589d.put("olivedrab", -9728477);
        f9589d.put("orange", -23296);
        f9589d.put("orangered", -47872);
        f9589d.put("orchid", -2461482);
        f9589d.put("palegoldenrod", -1120086);
        f9589d.put("palegreen", -6751336);
        f9589d.put("paleturquoise", -5247250);
        f9589d.put("palevioletred", -2396013);
        f9589d.put("papayawhip", -4139);
        f9589d.put("peachpuff", -9543);
        f9589d.put("peru", -3308225);
        f9589d.put("pink", -16181);
        f9589d.put("plum", -2252579);
        f9589d.put("powderblue", -5185306);
        f9589d.put("purple", -8388480);
        f9589d.put("rebeccapurple", -10079335);
        f9589d.put("red", -65536);
        f9589d.put("rosybrown", -4419697);
        f9589d.put("royalblue", -12490271);
        f9589d.put("saddlebrown", -7650029);
        f9589d.put("salmon", -360334);
        f9589d.put("sandybrown", -744352);
        f9589d.put("seagreen", -13726889);
        f9589d.put("seashell", -2578);
        f9589d.put("sienna", -6270419);
        f9589d.put("silver", -4144960);
        f9589d.put("skyblue", -7876885);
        f9589d.put("slateblue", -9807155);
        f9589d.put("slategray", -9404272);
        f9589d.put("slategrey", -9404272);
        f9589d.put("snow", -1286);
        f9589d.put("springgreen", -16711809);
        f9589d.put("steelblue", -12156236);
        f9589d.put("tan", -2968436);
        f9589d.put("teal", -16744320);
        f9589d.put("thistle", -2572328);
        f9589d.put("tomato", -40121);
        f9589d.put("transparent", 0);
        f9589d.put("turquoise", -12525360);
        f9589d.put("violet", -1146130);
        f9589d.put("wheat", -663885);
        f9589d.put("white", -1);
        f9589d.put("whitesmoke", -657931);
        f9589d.put("yellow", -256);
        f9589d.put("yellowgreen", -6632142);
    }

    public static int a(int i2, int i3, int i4, int i5) {
        return (i2 << 24) | (i3 << 16) | (i4 << 8) | i5;
    }

    public static int a(String str) {
        return a(str, true);
    }

    public static int b(String str) {
        return a(str, false);
    }

    public static int a(String str, boolean z) {
        int i2;
        int i3;
        C0737e.a(!TextUtils.isEmpty(str));
        String replace = str.replace(" ", "");
        if (replace.charAt(0) == '#') {
            int parseLong = (int) Long.parseLong(replace.substring(1), 16);
            if (replace.length() == 7) {
                i3 = -16777216 | parseLong;
            } else if (replace.length() == 9) {
                i3 = ((parseLong & 255) << 24) | (parseLong >>> 8);
            } else {
                throw new IllegalArgumentException();
            }
            return i3;
        }
        if (replace.startsWith("rgba")) {
            Matcher matcher = (z ? f9588c : f9587b).matcher(replace);
            if (matcher.matches()) {
                if (z) {
                    i2 = (int) (Float.parseFloat(matcher.group(4)) * 255.0f);
                } else {
                    i2 = Integer.parseInt(matcher.group(4), 10);
                }
                return a(i2, Integer.parseInt(matcher.group(1), 10), Integer.parseInt(matcher.group(2), 10), Integer.parseInt(matcher.group(3), 10));
            }
        } else if (replace.startsWith("rgb")) {
            Matcher matcher2 = f9586a.matcher(replace);
            if (matcher2.matches()) {
                return a(Integer.parseInt(matcher2.group(1), 10), Integer.parseInt(matcher2.group(2), 10), Integer.parseInt(matcher2.group(3), 10));
            }
        } else {
            Integer num = f9589d.get(I.l(replace));
            if (num != null) {
                return num.intValue();
            }
        }
        throw new IllegalArgumentException();
    }

    public static int a(int i2, int i3, int i4) {
        return a(255, i2, i3, i4);
    }
}
