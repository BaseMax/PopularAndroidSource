package c.e.a.a.k.f;

import c.e.a.a.o.I;
import c.e.a.a.o.J;
import c.e.a.a.o.p;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: TtmlDecoder */
public final class a extends c.e.a.a.k.c {
    public static final Pattern o = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final Pattern p = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern q = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern r = Pattern.compile("^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$");
    public static final Pattern s = Pattern.compile("^(\\d+\\.?\\d*?)px (\\d+\\.?\\d*?)px$");
    public static final Pattern t = Pattern.compile("^(\\d+) (\\d+)$");
    public static final b u = new b(30.0f, 1, 1);
    public static final C0118a v = new C0118a(32, 15);
    public final XmlPullParserFactory w;

    /* renamed from: c.e.a.a.k.f.a$a  reason: collision with other inner class name */
    /* compiled from: TtmlDecoder */
    private static final class C0118a {

        /* renamed from: a  reason: collision with root package name */
        public final int f9198a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9199b;

        public C0118a(int i2, int i3) {
            this.f9198a = i2;
            this.f9199b = i3;
        }
    }

    /* compiled from: TtmlDecoder */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final float f9200a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9201b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9202c;

        public b(float f2, int i2, int i3) {
            this.f9200a = f2;
            this.f9201b = i2;
            this.f9202c = i3;
        }
    }

    /* compiled from: TtmlDecoder */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f9203a;

        /* renamed from: b  reason: collision with root package name */
        public final int f9204b;

        public c(int i2, int i3) {
            this.f9203a = i2;
            this.f9204b = i3;
        }
    }

    public a() {
        super("TtmlDecoder");
        try {
            this.w = XmlPullParserFactory.newInstance();
            this.w.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    public final c b(XmlPullParser xmlPullParser) {
        String a2 = J.a(xmlPullParser, "extent");
        if (a2 == null) {
            return null;
        }
        Matcher matcher = s.matcher(a2);
        if (!matcher.matches()) {
            p.d("TtmlDecoder", "Ignoring non-pixel tts extent: " + a2);
            return null;
        }
        try {
            return new c(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)));
        } catch (NumberFormatException unused) {
            p.d("TtmlDecoder", "Ignoring malformed tts extent: " + a2);
            return null;
        }
    }

    public f a(byte[] bArr, int i2, boolean z) {
        c cVar;
        C0118a aVar;
        b bVar;
        f fVar;
        b bVar2;
        try {
            XmlPullParser newPullParser = this.w.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            c cVar2 = null;
            hashMap2.put("", new c(null));
            newPullParser.setInput(new ByteArrayInputStream(bArr, 0, i2), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            b bVar3 = u;
            C0118a aVar2 = v;
            f fVar2 = null;
            int i3 = 0;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                b bVar4 = (b) arrayDeque.peek();
                if (i3 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            b a2 = a(newPullParser);
                            aVar = a(newPullParser, v);
                            cVar = b(newPullParser);
                            bVar = a2;
                        } else {
                            cVar = cVar2;
                            bVar = bVar3;
                            aVar = aVar2;
                        }
                        if (!a(name)) {
                            p.c("TtmlDecoder", "Ignoring unsupported tag: " + newPullParser.getName());
                            i3++;
                            bVar3 = bVar;
                        } else {
                            if ("head".equals(name)) {
                                fVar = fVar2;
                                bVar2 = bVar;
                                a(newPullParser, hashMap, aVar, cVar, hashMap2, hashMap3);
                            } else {
                                fVar = fVar2;
                                bVar2 = bVar;
                                try {
                                    b a3 = a(newPullParser, bVar4, hashMap2, bVar2);
                                    arrayDeque.push(a3);
                                    if (bVar4 != null) {
                                        bVar4.a(a3);
                                    }
                                } catch (SubtitleDecoderException e2) {
                                    p.b("TtmlDecoder", "Suppressing parser error", e2);
                                    i3++;
                                }
                            }
                            bVar3 = bVar2;
                            fVar2 = fVar;
                        }
                    } else {
                        f fVar3 = fVar2;
                        if (eventType == 4) {
                            bVar4.a(b.a(newPullParser.getText()));
                        } else if (eventType == 3) {
                            fVar2 = newPullParser.getName().equals("tt") ? new f((b) arrayDeque.peek(), hashMap, hashMap2, hashMap3) : fVar3;
                            arrayDeque.pop();
                            cVar = cVar2;
                            aVar = aVar2;
                        }
                        fVar2 = fVar3;
                        cVar = cVar2;
                        aVar = aVar2;
                    }
                    aVar2 = aVar;
                    cVar2 = cVar;
                } else {
                    f fVar4 = fVar2;
                    if (eventType == 2) {
                        i3++;
                    } else if (eventType == 3) {
                        i3--;
                    }
                    fVar2 = fVar4;
                }
                newPullParser.next();
            }
            return fVar2;
        } catch (XmlPullParserException e3) {
            throw new SubtitleDecoderException("Unable to decode source", e3);
        } catch (IOException e4) {
            throw new IllegalStateException("Unexpected error when reading input.", e4);
        }
    }

    public final String[] b(String str) {
        String trim = str.trim();
        return trim.isEmpty() ? new String[0] : I.a(trim, "\\s+");
    }

    public final b a(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        int parseInt = attributeValue != null ? Integer.parseInt(attributeValue) : 30;
        float f2 = 1.0f;
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String[] a2 = I.a(attributeValue2, " ");
            if (a2.length == 2) {
                f2 = ((float) Integer.parseInt(a2[0])) / ((float) Integer.parseInt(a2[1]));
            } else {
                throw new SubtitleDecoderException("frameRateMultiplier doesn't have 2 parts");
            }
        }
        int i2 = u.f9201b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i2 = Integer.parseInt(attributeValue3);
        }
        int i3 = u.f9202c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i3 = Integer.parseInt(attributeValue4);
        }
        return new b(((float) parseInt) * f2, i2, i3);
    }

    public final C0118a a(XmlPullParser xmlPullParser, C0118a aVar) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return aVar;
        }
        Matcher matcher = t.matcher(attributeValue);
        if (!matcher.matches()) {
            p.d("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
        try {
            int parseInt = Integer.parseInt(matcher.group(1));
            int parseInt2 = Integer.parseInt(matcher.group(2));
            if (parseInt != 0 && parseInt2 != 0) {
                return new C0118a(parseInt, parseInt2);
            }
            throw new SubtitleDecoderException("Invalid cell resolution " + parseInt + " " + parseInt2);
        } catch (NumberFormatException unused) {
            p.d("TtmlDecoder", "Ignoring malformed cell resolution: " + attributeValue);
            return aVar;
        }
    }

    public final Map<String, e> a(XmlPullParser xmlPullParser, Map<String, e> map, C0118a aVar, c cVar, Map<String, c> map2, Map<String, String> map3) {
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser, "style")) {
                String a2 = J.a(xmlPullParser, "style");
                e a3 = a(xmlPullParser, new e());
                if (a2 != null) {
                    for (String str : b(a2)) {
                        a3.a(map.get(str));
                    }
                }
                if (a3.f() != null) {
                    map.put(a3.f(), a3);
                }
            } else if (J.d(xmlPullParser, "region")) {
                c a4 = a(xmlPullParser, aVar, cVar);
                if (a4 != null) {
                    map2.put(a4.f9217a, a4);
                }
            } else if (J.d(xmlPullParser, "metadata")) {
                a(xmlPullParser, map3);
            }
        } while (!J.c(xmlPullParser, "head"));
        return map;
    }

    public final void a(XmlPullParser xmlPullParser, Map<String, String> map) {
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser, "image")) {
                String a2 = J.a(xmlPullParser, "id");
                if (a2 != null) {
                    map.put(a2, xmlPullParser.nextText());
                }
            }
        } while (!J.c(xmlPullParser, "metadata"));
    }

    public final c a(XmlPullParser xmlPullParser, C0118a aVar, c cVar) {
        float f2;
        float f3;
        float f4;
        float f5;
        int i2;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        c cVar2 = cVar;
        String a2 = J.a(xmlPullParser2, "id");
        if (a2 == null) {
            return null;
        }
        String a3 = J.a(xmlPullParser2, "origin");
        if (a3 != null) {
            Matcher matcher = r.matcher(a3);
            Matcher matcher2 = s.matcher(a3);
            if (matcher.matches()) {
                try {
                    float parseFloat = Float.parseFloat(matcher.group(1)) / 100.0f;
                    f2 = Float.parseFloat(matcher.group(2)) / 100.0f;
                    f3 = parseFloat;
                } catch (NumberFormatException unused) {
                    p.d("TtmlDecoder", "Ignoring region with malformed origin: " + a3);
                    return null;
                }
            } else if (!matcher2.matches()) {
                p.d("TtmlDecoder", "Ignoring region with unsupported origin: " + a3);
                return null;
            } else if (cVar2 == null) {
                p.d("TtmlDecoder", "Ignoring region with missing tts:extent: " + a3);
                return null;
            } else {
                try {
                    int parseInt = Integer.parseInt(matcher2.group(1));
                    int parseInt2 = Integer.parseInt(matcher2.group(2));
                    f3 = ((float) parseInt) / ((float) cVar2.f9203a);
                    f2 = ((float) parseInt2) / ((float) cVar2.f9204b);
                } catch (NumberFormatException unused2) {
                    p.d("TtmlDecoder", "Ignoring region with malformed origin: " + a3);
                    return null;
                }
            }
            String a4 = J.a(xmlPullParser2, "extent");
            if (a4 != null) {
                Matcher matcher3 = r.matcher(a4);
                Matcher matcher4 = s.matcher(a4);
                if (matcher3.matches()) {
                    try {
                        float parseFloat2 = Float.parseFloat(matcher3.group(1)) / 100.0f;
                        f5 = Float.parseFloat(matcher3.group(2)) / 100.0f;
                        f4 = parseFloat2;
                    } catch (NumberFormatException unused3) {
                        p.d("TtmlDecoder", "Ignoring region with malformed extent: " + a3);
                        return null;
                    }
                } else if (!matcher4.matches()) {
                    p.d("TtmlDecoder", "Ignoring region with unsupported extent: " + a3);
                    return null;
                } else if (cVar2 == null) {
                    p.d("TtmlDecoder", "Ignoring region with missing tts:extent: " + a3);
                    return null;
                } else {
                    try {
                        int parseInt3 = Integer.parseInt(matcher4.group(1));
                        int parseInt4 = Integer.parseInt(matcher4.group(2));
                        f4 = ((float) parseInt3) / ((float) cVar2.f9203a);
                        f5 = ((float) parseInt4) / ((float) cVar2.f9204b);
                    } catch (NumberFormatException unused4) {
                        p.d("TtmlDecoder", "Ignoring region with malformed extent: " + a3);
                        return null;
                    }
                }
                String a5 = J.a(xmlPullParser2, "displayAlign");
                if (a5 != null) {
                    String l2 = I.l(a5);
                    char c2 = 65535;
                    int hashCode = l2.hashCode();
                    if (hashCode != -1364013995) {
                        if (hashCode == 92734940 && l2.equals("after")) {
                            c2 = 1;
                        }
                    } else if (l2.equals("center")) {
                        c2 = 0;
                    }
                    if (c2 == 0) {
                        f2 += f5 / 2.0f;
                        i2 = 1;
                    } else if (c2 == 1) {
                        f2 += f5;
                        i2 = 2;
                    }
                    c cVar3 = new c(a2, f3, f2, 0, i2, f4, 1, 1.0f / ((float) aVar.f9199b));
                    return cVar3;
                }
                i2 = 0;
                c cVar32 = new c(a2, f3, f2, 0, i2, f4, 1, 1.0f / ((float) aVar.f9199b));
                return cVar32;
            }
            p.d("TtmlDecoder", "Ignoring region without an extent");
            return null;
        }
        p.d("TtmlDecoder", "Ignoring region without an origin");
        return null;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.a.k.f.e a(org.xmlpull.v1.XmlPullParser r12, c.e.a.a.k.f.e r13) {
        /*
            r11 = this;
            int r0 = r12.getAttributeCount()
            r1 = 0
            r2 = r13
            r13 = 0
        L_0x0007:
            if (r13 >= r0) goto L_0x01ff
            java.lang.String r3 = r12.getAttributeValue(r13)
            java.lang.String r4 = r12.getAttributeName(r13)
            int r5 = r4.hashCode()
            r6 = 4
            r7 = -1
            r8 = 2
            r9 = 3
            r10 = 1
            switch(r5) {
                case -1550943582: goto L_0x006f;
                case -1224696685: goto L_0x0065;
                case -1065511464: goto L_0x005b;
                case -879295043: goto L_0x0050;
                case -734428249: goto L_0x0046;
                case 3355: goto L_0x003c;
                case 94842723: goto L_0x0032;
                case 365601008: goto L_0x0028;
                case 1287124693: goto L_0x001e;
                default: goto L_0x001d;
            }
        L_0x001d:
            goto L_0x0079
        L_0x001e:
            java.lang.String r5 = "backgroundColor"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 1
            goto L_0x007a
        L_0x0028:
            java.lang.String r5 = "fontSize"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 4
            goto L_0x007a
        L_0x0032:
            java.lang.String r5 = "color"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 2
            goto L_0x007a
        L_0x003c:
            java.lang.String r5 = "id"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 0
            goto L_0x007a
        L_0x0046:
            java.lang.String r5 = "fontWeight"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 5
            goto L_0x007a
        L_0x0050:
            java.lang.String r5 = "textDecoration"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 8
            goto L_0x007a
        L_0x005b:
            java.lang.String r5 = "textAlign"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 7
            goto L_0x007a
        L_0x0065:
            java.lang.String r5 = "fontFamily"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 3
            goto L_0x007a
        L_0x006f:
            java.lang.String r5 = "fontStyle"
            boolean r4 = r4.equals(r5)
            if (r4 == 0) goto L_0x0079
            r4 = 6
            goto L_0x007a
        L_0x0079:
            r4 = -1
        L_0x007a:
            java.lang.String r5 = "TtmlDecoder"
            switch(r4) {
                case 0: goto L_0x01e8;
                case 1: goto L_0x01c7;
                case 2: goto L_0x01a6;
                case 3: goto L_0x019e;
                case 4: goto L_0x0180;
                case 5: goto L_0x0171;
                case 6: goto L_0x0162;
                case 7: goto L_0x00e2;
                case 8: goto L_0x0081;
                default: goto L_0x007f;
            }
        L_0x007f:
            goto L_0x01fb
        L_0x0081:
            java.lang.String r3 = c.e.a.a.o.I.l(r3)
            int r4 = r3.hashCode()
            switch(r4) {
                case -1461280213: goto L_0x00ab;
                case -1026963764: goto L_0x00a1;
                case 913457136: goto L_0x0097;
                case 1679736913: goto L_0x008d;
                default: goto L_0x008c;
            }
        L_0x008c:
            goto L_0x00b4
        L_0x008d:
            java.lang.String r4 = "linethrough"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x00b4
            r7 = 0
            goto L_0x00b4
        L_0x0097:
            java.lang.String r4 = "nolinethrough"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x00b4
            r7 = 1
            goto L_0x00b4
        L_0x00a1:
            java.lang.String r4 = "underline"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x00b4
            r7 = 2
            goto L_0x00b4
        L_0x00ab:
            java.lang.String r4 = "nounderline"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x00b4
            r7 = 3
        L_0x00b4:
            if (r7 == 0) goto L_0x00d9
            if (r7 == r10) goto L_0x00d0
            if (r7 == r8) goto L_0x00c7
            if (r7 == r9) goto L_0x00be
            goto L_0x01fb
        L_0x00be:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            r2.d(r1)
            goto L_0x01fb
        L_0x00c7:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            r2.d(r10)
            goto L_0x01fb
        L_0x00d0:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            r2.c((boolean) r1)
            goto L_0x01fb
        L_0x00d9:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            r2.c((boolean) r10)
            goto L_0x01fb
        L_0x00e2:
            java.lang.String r3 = c.e.a.a.o.I.l(r3)
            int r4 = r3.hashCode()
            switch(r4) {
                case -1364013995: goto L_0x0116;
                case 100571: goto L_0x010c;
                case 3317767: goto L_0x0102;
                case 108511772: goto L_0x00f8;
                case 109757538: goto L_0x00ee;
                default: goto L_0x00ed;
            }
        L_0x00ed:
            goto L_0x011f
        L_0x00ee:
            java.lang.String r4 = "start"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x011f
            r7 = 1
            goto L_0x011f
        L_0x00f8:
            java.lang.String r4 = "right"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x011f
            r7 = 2
            goto L_0x011f
        L_0x0102:
            java.lang.String r4 = "left"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x011f
            r7 = 0
            goto L_0x011f
        L_0x010c:
            java.lang.String r4 = "end"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x011f
            r7 = 3
            goto L_0x011f
        L_0x0116:
            java.lang.String r4 = "center"
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L_0x011f
            r7 = 4
        L_0x011f:
            if (r7 == 0) goto L_0x0157
            if (r7 == r10) goto L_0x014c
            if (r7 == r8) goto L_0x0141
            if (r7 == r9) goto L_0x0136
            if (r7 == r6) goto L_0x012b
            goto L_0x01fb
        L_0x012b:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            android.text.Layout$Alignment r3 = android.text.Layout.Alignment.ALIGN_CENTER
            r2.a((android.text.Layout.Alignment) r3)
            goto L_0x01fb
        L_0x0136:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            android.text.Layout$Alignment r3 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            r2.a((android.text.Layout.Alignment) r3)
            goto L_0x01fb
        L_0x0141:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            android.text.Layout$Alignment r3 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            r2.a((android.text.Layout.Alignment) r3)
            goto L_0x01fb
        L_0x014c:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            android.text.Layout$Alignment r3 = android.text.Layout.Alignment.ALIGN_NORMAL
            r2.a((android.text.Layout.Alignment) r3)
            goto L_0x01fb
        L_0x0157:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            android.text.Layout$Alignment r3 = android.text.Layout.Alignment.ALIGN_NORMAL
            r2.a((android.text.Layout.Alignment) r3)
            goto L_0x01fb
        L_0x0162:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            java.lang.String r4 = "italic"
            boolean r3 = r4.equalsIgnoreCase(r3)
            r2.b((boolean) r3)
            goto L_0x01fb
        L_0x0171:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            java.lang.String r4 = "bold"
            boolean r3 = r4.equalsIgnoreCase(r3)
            r2.a((boolean) r3)
            goto L_0x01fb
        L_0x0180:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)     // Catch:{ SubtitleDecoderException -> 0x0189 }
            a((java.lang.String) r3, (c.e.a.a.k.f.e) r2)     // Catch:{ SubtitleDecoderException -> 0x0189 }
            goto L_0x01fb
        L_0x0189:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "Failed parsing fontSize value: "
            r4.append(r6)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            c.e.a.a.o.p.d(r5, r3)
            goto L_0x01fb
        L_0x019e:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            r2.a((java.lang.String) r3)
            goto L_0x01fb
        L_0x01a6:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            int r4 = c.e.a.a.o.C0740h.b(r3)     // Catch:{ IllegalArgumentException -> 0x01b2 }
            r2.b((int) r4)     // Catch:{ IllegalArgumentException -> 0x01b2 }
            goto L_0x01fb
        L_0x01b2:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "Failed parsing color value: "
            r4.append(r6)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            c.e.a.a.o.p.d(r5, r3)
            goto L_0x01fb
        L_0x01c7:
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            int r4 = c.e.a.a.o.C0740h.b(r3)     // Catch:{ IllegalArgumentException -> 0x01d3 }
            r2.a((int) r4)     // Catch:{ IllegalArgumentException -> 0x01d3 }
            goto L_0x01fb
        L_0x01d3:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r6 = "Failed parsing background value: "
            r4.append(r6)
            r4.append(r3)
            java.lang.String r3 = r4.toString()
            c.e.a.a.o.p.d(r5, r3)
            goto L_0x01fb
        L_0x01e8:
            java.lang.String r4 = r12.getName()
            java.lang.String r5 = "style"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x01fb
            c.e.a.a.k.f.e r2 = r11.a((c.e.a.a.k.f.e) r2)
            r2.b((java.lang.String) r3)
        L_0x01fb:
            int r13 = r13 + 1
            goto L_0x0007
        L_0x01ff:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.f.a.a(org.xmlpull.v1.XmlPullParser, c.e.a.a.k.f.e):c.e.a.a.k.f.e");
    }

    public final e a(e eVar) {
        return eVar == null ? new e() : eVar;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final c.e.a.a.k.f.b a(org.xmlpull.v1.XmlPullParser r21, c.e.a.a.k.f.b r22, java.util.Map<java.lang.String, c.e.a.a.k.f.c> r23, c.e.a.a.k.f.a.b r24) {
        /*
            r20 = this;
            r0 = r20
            r1 = r21
            r2 = r22
            r3 = r24
            int r4 = r21.getAttributeCount()
            r5 = 0
            c.e.a.a.k.f.e r11 = r0.a((org.xmlpull.v1.XmlPullParser) r1, (c.e.a.a.k.f.e) r5)
            java.lang.String r9 = ""
            r17 = r5
            r18 = r17
            r16 = r9
            r5 = 0
            r9 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r12 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r14 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L_0x0029:
            if (r5 >= r4) goto L_0x00ce
            java.lang.String r6 = r1.getAttributeName(r5)
            java.lang.String r7 = r1.getAttributeValue(r5)
            int r19 = r6.hashCode()
            switch(r19) {
                case -934795532: goto L_0x006d;
                case 99841: goto L_0x0063;
                case 100571: goto L_0x0059;
                case 93616297: goto L_0x004f;
                case 109780401: goto L_0x0045;
                case 1292595405: goto L_0x003b;
                default: goto L_0x003a;
            }
        L_0x003a:
            goto L_0x0077
        L_0x003b:
            java.lang.String r8 = "backgroundImage"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x0077
            r6 = 5
            goto L_0x0078
        L_0x0045:
            java.lang.String r8 = "style"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x0077
            r6 = 3
            goto L_0x0078
        L_0x004f:
            java.lang.String r8 = "begin"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x0077
            r6 = 0
            goto L_0x0078
        L_0x0059:
            java.lang.String r8 = "end"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x0077
            r6 = 1
            goto L_0x0078
        L_0x0063:
            java.lang.String r8 = "dur"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x0077
            r6 = 2
            goto L_0x0078
        L_0x006d:
            java.lang.String r8 = "region"
            boolean r6 = r6.equals(r8)
            if (r6 == 0) goto L_0x0077
            r6 = 4
            goto L_0x0078
        L_0x0077:
            r6 = -1
        L_0x0078:
            if (r6 == 0) goto L_0x00c3
            r8 = 1
            if (r6 == r8) goto L_0x00bb
            r8 = 2
            if (r6 == r8) goto L_0x00b3
            r8 = 3
            if (r6 == r8) goto L_0x00a7
            r8 = 4
            if (r6 == r8) goto L_0x009c
            r8 = 5
            if (r6 == r8) goto L_0x008a
            goto L_0x0099
        L_0x008a:
            java.lang.String r6 = "#"
            boolean r6 = r7.startsWith(r6)
            if (r6 == 0) goto L_0x0099
            r6 = 1
            java.lang.String r6 = r7.substring(r6)
            r17 = r6
        L_0x0099:
            r6 = r23
            goto L_0x00ca
        L_0x009c:
            r6 = r23
            boolean r8 = r6.containsKey(r7)
            if (r8 == 0) goto L_0x00ca
            r16 = r7
            goto L_0x00ca
        L_0x00a7:
            r6 = r23
            java.lang.String[] r7 = r0.b((java.lang.String) r7)
            int r8 = r7.length
            if (r8 <= 0) goto L_0x00ca
            r18 = r7
            goto L_0x00ca
        L_0x00b3:
            r6 = r23
            long r7 = a((java.lang.String) r7, (c.e.a.a.k.f.a.b) r3)
            r14 = r7
            goto L_0x00ca
        L_0x00bb:
            r6 = r23
            long r7 = a((java.lang.String) r7, (c.e.a.a.k.f.a.b) r3)
            r12 = r7
            goto L_0x00ca
        L_0x00c3:
            r6 = r23
            long r7 = a((java.lang.String) r7, (c.e.a.a.k.f.a.b) r3)
            r9 = r7
        L_0x00ca:
            int r5 = r5 + 1
            goto L_0x0029
        L_0x00ce:
            if (r2 == 0) goto L_0x00e8
            long r3 = r2.f9208d
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00ed
            int r7 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00e0
            long r9 = r9 + r3
        L_0x00e0:
            int r3 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r3 == 0) goto L_0x00ed
            long r3 = r2.f9208d
            long r12 = r12 + r3
            goto L_0x00ed
        L_0x00e8:
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L_0x00ed:
            r7 = r9
            int r3 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r3 != 0) goto L_0x0103
            int r3 = (r14 > r5 ? 1 : (r14 == r5 ? 0 : -1))
            if (r3 == 0) goto L_0x00f9
            long r14 = r14 + r7
            r9 = r14
            goto L_0x0104
        L_0x00f9:
            if (r2 == 0) goto L_0x0103
            long r2 = r2.f9209e
            int r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r4 == 0) goto L_0x0103
            r9 = r2
            goto L_0x0104
        L_0x0103:
            r9 = r12
        L_0x0104:
            java.lang.String r6 = r21.getName()
            r12 = r18
            r13 = r16
            r14 = r17
            c.e.a.a.k.f.b r1 = c.e.a.a.k.f.b.a(r6, r7, r9, r11, r12, r13, r14)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.f.a.a(org.xmlpull.v1.XmlPullParser, c.e.a.a.k.f.b, java.util.Map, c.e.a.a.k.f.a$b):c.e.a.a.k.f.b");
    }

    public static boolean a(String str) {
        return str.equals("tt") || str.equals("head") || str.equals("body") || str.equals("div") || str.equals("p") || str.equals("span") || str.equals("br") || str.equals("style") || str.equals("styling") || str.equals("layout") || str.equals("region") || str.equals("metadata") || str.equals("image") || str.equals("data") || str.equals("information");
    }

    public static void a(String str, e eVar) {
        Matcher matcher;
        String[] a2 = I.a(str, "\\s+");
        if (a2.length == 1) {
            matcher = q.matcher(str);
        } else if (a2.length == 2) {
            matcher = q.matcher(a2[1]);
            p.d("TtmlDecoder", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new SubtitleDecoderException("Invalid number of entries for fontSize: " + a2.length + ".");
        }
        if (matcher.matches()) {
            String group = matcher.group(3);
            char c2 = 65535;
            int hashCode = group.hashCode();
            if (hashCode != 37) {
                if (hashCode != 3240) {
                    if (hashCode == 3592 && group.equals("px")) {
                        c2 = 0;
                    }
                } else if (group.equals("em")) {
                    c2 = 1;
                }
            } else if (group.equals("%")) {
                c2 = 2;
            }
            if (c2 == 0) {
                eVar.c(1);
            } else if (c2 == 1) {
                eVar.c(2);
            } else if (c2 == 2) {
                eVar.c(3);
            } else {
                throw new SubtitleDecoderException("Invalid unit for fontSize: '" + group + "'.");
            }
            eVar.a(Float.valueOf(matcher.group(1)).floatValue());
            return;
        }
        throw new SubtitleDecoderException("Invalid expression for fontSize: '" + str + "'.");
    }

    /* JADX WARNING: Removed duplicated region for block: B:49:0x00fd  */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x0120  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static long a(java.lang.String r14, c.e.a.a.k.f.a.b r15) {
        /*
            java.util.regex.Pattern r0 = o
            java.util.regex.Matcher r0 = r0.matcher(r14)
            boolean r1 = r0.matches()
            r2 = 4696837146684686336(0x412e848000000000, double:1000000.0)
            r4 = 5
            r5 = 4
            r6 = 3
            r7 = 2
            r8 = 1
            if (r1 == 0) goto L_0x0088
            java.lang.String r14 = r0.group(r8)
            long r8 = java.lang.Long.parseLong(r14)
            r10 = 3600(0xe10, double:1.7786E-320)
            long r8 = r8 * r10
            double r8 = (double) r8
            java.lang.String r14 = r0.group(r7)
            long r10 = java.lang.Long.parseLong(r14)
            r12 = 60
            long r10 = r10 * r12
            double r10 = (double) r10
            java.lang.Double.isNaN(r8)
            java.lang.Double.isNaN(r10)
            double r8 = r8 + r10
            java.lang.String r14 = r0.group(r6)
            long r6 = java.lang.Long.parseLong(r14)
            double r6 = (double) r6
            java.lang.Double.isNaN(r6)
            double r8 = r8 + r6
            java.lang.String r14 = r0.group(r5)
            r5 = 0
            if (r14 == 0) goto L_0x0051
            double r10 = java.lang.Double.parseDouble(r14)
            goto L_0x0052
        L_0x0051:
            r10 = r5
        L_0x0052:
            double r8 = r8 + r10
            java.lang.String r14 = r0.group(r4)
            if (r14 == 0) goto L_0x0063
            long r10 = java.lang.Long.parseLong(r14)
            float r14 = (float) r10
            float r1 = r15.f9200a
            float r14 = r14 / r1
            double r10 = (double) r14
            goto L_0x0064
        L_0x0063:
            r10 = r5
        L_0x0064:
            double r8 = r8 + r10
            r14 = 6
            java.lang.String r14 = r0.group(r14)
            if (r14 == 0) goto L_0x0083
            long r0 = java.lang.Long.parseLong(r14)
            double r0 = (double) r0
            int r14 = r15.f9201b
            double r4 = (double) r14
            java.lang.Double.isNaN(r0)
            java.lang.Double.isNaN(r4)
            double r0 = r0 / r4
            float r14 = r15.f9200a
            double r14 = (double) r14
            java.lang.Double.isNaN(r14)
            double r5 = r0 / r14
        L_0x0083:
            double r8 = r8 + r5
            double r8 = r8 * r2
            long r14 = (long) r8
            return r14
        L_0x0088:
            java.util.regex.Pattern r0 = p
            java.util.regex.Matcher r0 = r0.matcher(r14)
            boolean r1 = r0.matches()
            if (r1 == 0) goto L_0x012b
            java.lang.String r14 = r0.group(r8)
            double r9 = java.lang.Double.parseDouble(r14)
            java.lang.String r14 = r0.group(r7)
            r0 = -1
            int r1 = r14.hashCode()
            r11 = 102(0x66, float:1.43E-43)
            if (r1 == r11) goto L_0x00f0
            r11 = 104(0x68, float:1.46E-43)
            if (r1 == r11) goto L_0x00e6
            r11 = 109(0x6d, float:1.53E-43)
            if (r1 == r11) goto L_0x00dc
            r11 = 3494(0xda6, float:4.896E-42)
            if (r1 == r11) goto L_0x00d2
            r11 = 115(0x73, float:1.61E-43)
            if (r1 == r11) goto L_0x00c8
            r11 = 116(0x74, float:1.63E-43)
            if (r1 == r11) goto L_0x00be
            goto L_0x00fa
        L_0x00be:
            java.lang.String r1 = "t"
            boolean r14 = r14.equals(r1)
            if (r14 == 0) goto L_0x00fa
            r14 = 5
            goto L_0x00fb
        L_0x00c8:
            java.lang.String r1 = "s"
            boolean r14 = r14.equals(r1)
            if (r14 == 0) goto L_0x00fa
            r14 = 2
            goto L_0x00fb
        L_0x00d2:
            java.lang.String r1 = "ms"
            boolean r14 = r14.equals(r1)
            if (r14 == 0) goto L_0x00fa
            r14 = 3
            goto L_0x00fb
        L_0x00dc:
            java.lang.String r1 = "m"
            boolean r14 = r14.equals(r1)
            if (r14 == 0) goto L_0x00fa
            r14 = 1
            goto L_0x00fb
        L_0x00e6:
            java.lang.String r1 = "h"
            boolean r14 = r14.equals(r1)
            if (r14 == 0) goto L_0x00fa
            r14 = 0
            goto L_0x00fb
        L_0x00f0:
            java.lang.String r1 = "f"
            boolean r14 = r14.equals(r1)
            if (r14 == 0) goto L_0x00fa
            r14 = 4
            goto L_0x00fb
        L_0x00fa:
            r14 = -1
        L_0x00fb:
            if (r14 == 0) goto L_0x0120
            if (r14 == r8) goto L_0x011d
            if (r14 == r7) goto L_0x0127
            if (r14 == r6) goto L_0x0116
            if (r14 == r5) goto L_0x010f
            if (r14 == r4) goto L_0x0108
            goto L_0x0127
        L_0x0108:
            int r14 = r15.f9202c
            double r14 = (double) r14
            java.lang.Double.isNaN(r14)
            goto L_0x011b
        L_0x010f:
            float r14 = r15.f9200a
            double r14 = (double) r14
            java.lang.Double.isNaN(r14)
            goto L_0x011b
        L_0x0116:
            r14 = 4652007308841189376(0x408f400000000000, double:1000.0)
        L_0x011b:
            double r9 = r9 / r14
            goto L_0x0127
        L_0x011d:
            r14 = 4633641066610819072(0x404e000000000000, double:60.0)
            goto L_0x0125
        L_0x0120:
            r14 = 4660134898793709568(0x40ac200000000000, double:3600.0)
        L_0x0125:
            double r9 = r9 * r14
        L_0x0127:
            double r9 = r9 * r2
            long r14 = (long) r9
            return r14
        L_0x012b:
            com.google.android.exoplayer2.text.SubtitleDecoderException r15 = new com.google.android.exoplayer2.text.SubtitleDecoderException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Malformed time expression: "
            r0.append(r1)
            r0.append(r14)
            java.lang.String r14 = r0.toString()
            r15.<init>((java.lang.String) r14)
            throw r15
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.f.a.a(java.lang.String, c.e.a.a.k.f.a$b):long");
    }
}
