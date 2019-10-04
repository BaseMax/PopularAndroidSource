package c.e.a.a.j.c.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.util.Xml;
import c.e.a.a.j.c.a.k;
import c.e.a.a.n.y;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.H;
import c.e.a.a.o.I;
import c.e.a.a.o.J;
import c.e.a.a.o.p;
import c.e.a.a.o.s;
import com.crashlytics.android.answers.RetryManager;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xml.sax.helpers.DefaultHandler;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
import org.xmlpull.v1.XmlSerializer;

/* compiled from: DashManifestParser */
public class c extends DefaultHandler implements y.a<b> {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8534a = Pattern.compile("(\\d+)(?:/(\\d+))?");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f8535b = Pattern.compile("CC([1-4])=.*");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f8536c = Pattern.compile("([1-9]|[1-5][0-9]|6[0-3])=.*");

    /* renamed from: d  reason: collision with root package name */
    public final XmlPullParserFactory f8537d;

    /* compiled from: DashManifestParser */
    protected static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Format f8538a;

        /* renamed from: b  reason: collision with root package name */
        public final String f8539b;

        /* renamed from: c  reason: collision with root package name */
        public final k f8540c;

        /* renamed from: d  reason: collision with root package name */
        public final String f8541d;

        /* renamed from: e  reason: collision with root package name */
        public final ArrayList<DrmInitData.SchemeData> f8542e;

        /* renamed from: f  reason: collision with root package name */
        public final ArrayList<d> f8543f;

        /* renamed from: g  reason: collision with root package name */
        public final long f8544g;

        public a(Format format, String str, k kVar, String str2, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<d> arrayList2, long j2) {
            this.f8538a = format;
            this.f8539b = str;
            this.f8540c = kVar;
            this.f8541d = str2;
            this.f8542e = arrayList;
            this.f8543f = arrayList2;
            this.f8544g = j2;
        }
    }

    public c() {
        try {
            this.f8537d = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    public void b(XmlPullParser xmlPullParser) {
        a(xmlPullParser);
    }

    /* JADX WARNING: Removed duplicated region for block: B:63:0x0158  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0171  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0179 A[LOOP:0: B:20:0x006c->B:67:0x0179, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x0138 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.a.j.c.a.b c(org.xmlpull.v1.XmlPullParser r33, java.lang.String r34) {
        /*
            r32 = this;
            r0 = r33
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            java.lang.String r3 = "availabilityStartTime"
            long r5 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r3, (long) r1)
            java.lang.String r3 = "mediaPresentationDuration"
            long r3 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r3, (long) r1)
            java.lang.String r7 = "minBufferTime"
            long r9 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r7, (long) r1)
            r7 = 0
            java.lang.String r8 = "type"
            java.lang.String r8 = r0.getAttributeValue(r7, r8)
            r12 = 0
            if (r8 == 0) goto L_0x002d
            java.lang.String r13 = "dynamic"
            boolean r8 = r13.equals(r8)
            if (r8 == 0) goto L_0x002d
            r13 = 1
            goto L_0x002e
        L_0x002d:
            r13 = 0
        L_0x002e:
            if (r13 == 0) goto L_0x0037
            java.lang.String r8 = "minimumUpdatePeriod"
            long r14 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r8, (long) r1)
            goto L_0x0038
        L_0x0037:
            r14 = r1
        L_0x0038:
            if (r13 == 0) goto L_0x0041
            java.lang.String r8 = "timeShiftBufferDepth"
            long r16 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r8, (long) r1)
            goto L_0x0043
        L_0x0041:
            r16 = r1
        L_0x0043:
            if (r13 == 0) goto L_0x004c
            java.lang.String r8 = "suggestedPresentationDelay"
            long r18 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r8, (long) r1)
            goto L_0x004e
        L_0x004c:
            r18 = r1
        L_0x004e:
            java.lang.String r8 = "publishTime"
            long r20 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r8, (long) r1)
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            if (r13 == 0) goto L_0x005e
            r22 = r1
            goto L_0x0060
        L_0x005e:
            r22 = 0
        L_0x0060:
            r25 = r7
            r26 = r25
            r27 = r26
            r1 = r22
            r22 = 0
            r7 = r34
        L_0x006c:
            r33.next()
            java.lang.String r11 = "BaseURL"
            boolean r11 = c.e.a.a.o.J.d(r0, r11)
            if (r11 == 0) goto L_0x008a
            if (r12 != 0) goto L_0x0082
            java.lang.String r7 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r7)
            r30 = r14
            r12 = 1
            goto L_0x0130
        L_0x0082:
            r28 = r1
            r34 = r12
            r30 = r14
            goto L_0x012c
        L_0x008a:
            java.lang.String r11 = "ProgramInformation"
            boolean r11 = c.e.a.a.o.J.d(r0, r11)
            if (r11 == 0) goto L_0x009c
            c.e.a.a.j.c.a.g r11 = r32.i(r33)
            r25 = r11
        L_0x0098:
            r30 = r14
            goto L_0x0130
        L_0x009c:
            java.lang.String r11 = "UTCTiming"
            boolean r11 = c.e.a.a.o.J.d(r0, r11)
            if (r11 == 0) goto L_0x00ab
            c.e.a.a.j.c.a.n r11 = r32.l(r33)
            r26 = r11
            goto L_0x0098
        L_0x00ab:
            java.lang.String r11 = "Location"
            boolean r11 = c.e.a.a.o.J.d(r0, r11)
            if (r11 == 0) goto L_0x00be
            java.lang.String r11 = r33.nextText()
            android.net.Uri r11 = android.net.Uri.parse(r11)
            r27 = r11
            goto L_0x0098
        L_0x00be:
            java.lang.String r11 = "Period"
            boolean r11 = c.e.a.a.o.J.d(r0, r11)
            if (r11 == 0) goto L_0x0123
            if (r22 != 0) goto L_0x0123
            r11 = r32
            r34 = r12
            android.util.Pair r12 = r11.d(r0, r7, r1)
            r28 = r1
            java.lang.Object r1 = r12.first
            c.e.a.a.j.c.a.f r1 = (c.e.a.a.j.c.a.f) r1
            r30 = r14
            long r14 = r1.f8554b
            r23 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r2 = (r14 > r23 ? 1 : (r14 == r23 ? 0 : -1))
            if (r2 != 0) goto L_0x0103
            if (r13 == 0) goto L_0x00e8
            r22 = 1
            goto L_0x012c
        L_0x00e8:
            com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Unable to determine start of period "
            r1.append(r2)
            int r2 = r8.size()
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>((java.lang.String) r1)
            throw r0
        L_0x0103:
            java.lang.Object r2 = r12.second
            java.lang.Long r2 = (java.lang.Long) r2
            long r14 = r2.longValue()
            r23 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r2 = (r14 > r23 ? 1 : (r14 == r23 ? 0 : -1))
            if (r2 != 0) goto L_0x011a
            r11 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            goto L_0x011d
        L_0x011a:
            long r11 = r1.f8554b
            long r11 = r11 + r14
        L_0x011d:
            r8.add(r1)
            r28 = r11
            goto L_0x012c
        L_0x0123:
            r28 = r1
            r34 = r12
            r30 = r14
            a((org.xmlpull.v1.XmlPullParser) r33)
        L_0x012c:
            r12 = r34
            r1 = r28
        L_0x0130:
            java.lang.String r11 = "MPD"
            boolean r11 = c.e.a.a.o.J.c(r0, r11)
            if (r11 == 0) goto L_0x0179
            r14 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r3 > r14 ? 1 : (r3 == r14 ? 0 : -1))
            if (r0 != 0) goto L_0x0151
            int r0 = (r1 > r14 ? 1 : (r1 == r14 ? 0 : -1))
            if (r0 == 0) goto L_0x0146
            goto L_0x0152
        L_0x0146:
            if (r13 == 0) goto L_0x0149
            goto L_0x0151
        L_0x0149:
            com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException
            java.lang.String r1 = "Unable to determine duration of static manifest."
            r0.<init>((java.lang.String) r1)
            throw r0
        L_0x0151:
            r1 = r3
        L_0x0152:
            boolean r0 = r8.isEmpty()
            if (r0 != 0) goto L_0x0171
            r4 = r32
            r23 = r8
            r7 = r1
            r11 = r13
            r12 = r30
            r14 = r16
            r16 = r18
            r18 = r20
            r20 = r25
            r21 = r26
            r22 = r27
            c.e.a.a.j.c.a.b r0 = r4.a(r5, r7, r9, r11, r12, r14, r16, r18, r20, r21, r22, r23)
            return r0
        L_0x0171:
            com.google.android.exoplayer2.ParserException r0 = new com.google.android.exoplayer2.ParserException
            java.lang.String r1 = "No periods found."
            r0.<init>((java.lang.String) r1)
            throw r0
        L_0x0179:
            r14 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r14 = r30
            goto L_0x006c
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.a.c.c(org.xmlpull.v1.XmlPullParser, java.lang.String):c.e.a.a.j.c.a.b");
    }

    public Pair<f, Long> d(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "id");
        long b2 = b(xmlPullParser, "start", j2);
        long b3 = b(xmlPullParser, "duration", -9223372036854775807L);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean z = false;
        k kVar = null;
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser, "BaseURL")) {
                if (!z) {
                    str = a(xmlPullParser, str);
                    z = true;
                }
            } else if (J.d(xmlPullParser, "AdaptationSet")) {
                arrayList.add(a(xmlPullParser, str, kVar));
            } else if (J.d(xmlPullParser, "EventStream")) {
                arrayList2.add(g(xmlPullParser));
            } else if (J.d(xmlPullParser, "SegmentBase")) {
                kVar = a(xmlPullParser, (k.e) null);
            } else if (J.d(xmlPullParser, "SegmentList")) {
                kVar = a(xmlPullParser, (k.b) null);
            } else if (J.d(xmlPullParser, "SegmentTemplate")) {
                kVar = a(xmlPullParser, (k.c) null);
            } else {
                a(xmlPullParser);
            }
        } while (!J.c(xmlPullParser, "Period"));
        return Pair.create(a(attributeValue, b2, (List<a>) arrayList, (List<e>) arrayList2), Long.valueOf(b3));
    }

    public int e(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "contentType");
        if (TextUtils.isEmpty(attributeValue)) {
            return -1;
        }
        if ("audio".equals(attributeValue)) {
            return 1;
        }
        if ("video".equals(attributeValue)) {
            return 2;
        }
        if ("text".equals(attributeValue)) {
            return 3;
        }
        return -1;
    }

    public int f(List<d> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            d dVar = list.get(i2);
            if ("urn:mpeg:dash:role:2011".equalsIgnoreCase(dVar.f8545a) && "main".equals(dVar.f8546b)) {
                return 1;
            }
        }
        return 0;
    }

    public e g(XmlPullParser xmlPullParser) {
        String b2 = b(xmlPullParser, "schemeIdUri", "");
        String b3 = b(xmlPullParser, "value", "");
        long c2 = c(xmlPullParser, "timescale", 1);
        ArrayList arrayList = new ArrayList();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser, "Event")) {
                arrayList.add(a(xmlPullParser, b2, b3, c2, byteArrayOutputStream));
            } else {
                a(xmlPullParser);
            }
        } while (!J.c(xmlPullParser, "EventStream"));
        long[] jArr = new long[arrayList.size()];
        EventMessage[] eventMessageArr = new EventMessage[arrayList.size()];
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            Pair pair = (Pair) arrayList.get(i2);
            jArr[i2] = ((Long) pair.first).longValue();
            eventMessageArr[i2] = (EventMessage) pair.second;
        }
        return a(b2, b3, c2, jArr, eventMessageArr);
    }

    public h h(XmlPullParser xmlPullParser) {
        return a(xmlPullParser, "sourceURL", "range");
    }

    public g i(XmlPullParser xmlPullParser) {
        String str = null;
        String b2 = b(xmlPullParser, "moreInformationURL", (String) null);
        String b3 = b(xmlPullParser, "lang", (String) null);
        String str2 = null;
        String str3 = null;
        while (true) {
            xmlPullParser.next();
            if (J.d(xmlPullParser, "Title")) {
                str = xmlPullParser.nextText();
            } else if (J.d(xmlPullParser, "Source")) {
                str2 = xmlPullParser.nextText();
            } else if (J.d(xmlPullParser, "Copyright")) {
                str3 = xmlPullParser.nextText();
            } else {
                a(xmlPullParser);
            }
            String str4 = str3;
            if (J.c(xmlPullParser, "ProgramInformation")) {
                g gVar = new g(str, str2, str4, b2, b3);
                return gVar;
            }
            str3 = str4;
        }
    }

    public List<k.d> j(XmlPullParser xmlPullParser) {
        ArrayList arrayList = new ArrayList();
        long j2 = 0;
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser, "S")) {
                j2 = c(xmlPullParser, "t", j2);
                long c2 = c(xmlPullParser, "d", -9223372036854775807L);
                int a2 = a(xmlPullParser, "r", 0) + 1;
                for (int i2 = 0; i2 < a2; i2++) {
                    arrayList.add(a(j2, c2));
                    j2 += c2;
                }
            } else {
                a(xmlPullParser);
            }
        } while (!J.c(xmlPullParser, "SegmentTimeline"));
        return arrayList;
    }

    public h k(XmlPullParser xmlPullParser) {
        return a(xmlPullParser, "media", "mediaRange");
    }

    public n l(XmlPullParser xmlPullParser) {
        return a(xmlPullParser.getAttributeValue(null, "schemeIdUri"), xmlPullParser.getAttributeValue(null, "value"));
    }

    public b a(Uri uri, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.f8537d.newPullParser();
            newPullParser.setInput(inputStream, null);
            if (newPullParser.next() == 2 && "MPD".equals(newPullParser.getName())) {
                return c(newPullParser, uri.toString());
            }
            throw new ParserException("inputStream does not contain a valid media presentation description");
        } catch (XmlPullParserException e2) {
            throw new ParserException((Throwable) e2);
        }
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int b(java.lang.String r8) {
        /*
            r7 = this;
            r0 = 0
            if (r8 != 0) goto L_0x0004
            return r0
        L_0x0004:
            r1 = -1
            int r2 = r8.hashCode()
            r3 = 8
            r4 = 4
            r5 = 2
            r6 = 1
            switch(r2) {
                case -2060497896: goto L_0x007b;
                case -1724546052: goto L_0x0070;
                case -1580883024: goto L_0x0065;
                case -1408024454: goto L_0x005b;
                case 99825: goto L_0x0051;
                case 3343801: goto L_0x0047;
                case 3530173: goto L_0x003c;
                case 552573414: goto L_0x0032;
                case 899152809: goto L_0x0028;
                case 1629013393: goto L_0x001e;
                case 1855372047: goto L_0x0013;
                default: goto L_0x0011;
            }
        L_0x0011:
            goto L_0x0085
        L_0x0013:
            java.lang.String r2 = "supplementary"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 2
            goto L_0x0086
        L_0x001e:
            java.lang.String r2 = "emergency"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 5
            goto L_0x0086
        L_0x0028:
            java.lang.String r2 = "commentary"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 3
            goto L_0x0086
        L_0x0032:
            java.lang.String r2 = "caption"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 6
            goto L_0x0086
        L_0x003c:
            java.lang.String r2 = "sign"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 8
            goto L_0x0086
        L_0x0047:
            java.lang.String r2 = "main"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 0
            goto L_0x0086
        L_0x0051:
            java.lang.String r2 = "dub"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 4
            goto L_0x0086
        L_0x005b:
            java.lang.String r2 = "alternate"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 1
            goto L_0x0086
        L_0x0065:
            java.lang.String r2 = "enhanced-audio-intelligibility"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 10
            goto L_0x0086
        L_0x0070:
            java.lang.String r2 = "description"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 9
            goto L_0x0086
        L_0x007b:
            java.lang.String r2 = "subtitle"
            boolean r8 = r8.equals(r2)
            if (r8 == 0) goto L_0x0085
            r8 = 7
            goto L_0x0086
        L_0x0085:
            r8 = -1
        L_0x0086:
            switch(r8) {
                case 0: goto L_0x00a2;
                case 1: goto L_0x00a1;
                case 2: goto L_0x00a0;
                case 3: goto L_0x009f;
                case 4: goto L_0x009c;
                case 5: goto L_0x0099;
                case 6: goto L_0x0096;
                case 7: goto L_0x0093;
                case 8: goto L_0x0090;
                case 9: goto L_0x008d;
                case 10: goto L_0x008a;
                default: goto L_0x0089;
            }
        L_0x0089:
            return r0
        L_0x008a:
            r8 = 2048(0x800, float:2.87E-42)
            return r8
        L_0x008d:
            r8 = 512(0x200, float:7.175E-43)
            return r8
        L_0x0090:
            r8 = 256(0x100, float:3.59E-43)
            return r8
        L_0x0093:
            r8 = 128(0x80, float:1.794E-43)
            return r8
        L_0x0096:
            r8 = 64
            return r8
        L_0x0099:
            r8 = 32
            return r8
        L_0x009c:
            r8 = 16
            return r8
        L_0x009f:
            return r3
        L_0x00a0:
            return r4
        L_0x00a1:
            return r5
        L_0x00a2:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.a.c.b(java.lang.String):int");
    }

    public static String b(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        C0737e.b(str.equals(str2));
        return str;
    }

    public static d b(XmlPullParser xmlPullParser, String str) {
        String b2 = b(xmlPullParser, "schemeIdUri", "");
        String b3 = b(xmlPullParser, "value", (String) null);
        String b4 = b(xmlPullParser, "id", (String) null);
        do {
            xmlPullParser.next();
        } while (!J.c(xmlPullParser, str));
        return new d(b2, b3, b4);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int f(org.xmlpull.v1.XmlPullParser r5) {
        /*
            r0 = 0
            java.lang.String r1 = "value"
            java.lang.String r5 = r5.getAttributeValue(r0, r1)
            java.lang.String r5 = c.e.a.a.o.I.l(r5)
            r0 = -1
            if (r5 != 0) goto L_0x000f
            return r0
        L_0x000f:
            int r1 = r5.hashCode()
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r1) {
                case 1596796: goto L_0x0038;
                case 2937391: goto L_0x002e;
                case 3094035: goto L_0x0024;
                case 3133436: goto L_0x001a;
                default: goto L_0x0019;
            }
        L_0x0019:
            goto L_0x0042
        L_0x001a:
            java.lang.String r1 = "fa01"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L_0x0042
            r5 = 3
            goto L_0x0043
        L_0x0024:
            java.lang.String r1 = "f801"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L_0x0042
            r5 = 2
            goto L_0x0043
        L_0x002e:
            java.lang.String r1 = "a000"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L_0x0042
            r5 = 1
            goto L_0x0043
        L_0x0038:
            java.lang.String r1 = "4000"
            boolean r5 = r5.equals(r1)
            if (r5 == 0) goto L_0x0042
            r5 = 0
            goto L_0x0043
        L_0x0042:
            r5 = -1
        L_0x0043:
            if (r5 == 0) goto L_0x0052
            if (r5 == r4) goto L_0x0051
            if (r5 == r3) goto L_0x004f
            if (r5 == r2) goto L_0x004c
            return r0
        L_0x004c:
            r5 = 8
            return r5
        L_0x004f:
            r5 = 6
            return r5
        L_0x0051:
            return r3
        L_0x0052:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.a.c.f(org.xmlpull.v1.XmlPullParser):int");
    }

    public int e(List<d> list) {
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            d dVar = list.get(i3);
            if ("urn:mpeg:dash:role:2011".equalsIgnoreCase(dVar.f8545a)) {
                i2 |= b(dVar.f8546b);
            }
        }
        return i2;
    }

    public b a(long j2, long j3, long j4, boolean z, long j5, long j6, long j7, long j8, g gVar, n nVar, Uri uri, List<f> list) {
        b bVar = new b(j2, j3, j4, z, j5, j6, j7, j8, gVar, nVar, uri, list);
        return bVar;
    }

    public static int b(List<d> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            d dVar = list.get(i2);
            if ("urn:scte:dash:cc:cea-708:2015".equals(dVar.f8545a)) {
                String str = dVar.f8546b;
                if (str != null) {
                    Matcher matcher = f8536c.matcher(str);
                    if (matcher.matches()) {
                        return Integer.parseInt(matcher.group(1));
                    }
                    p.d("MpdParser", "Unable to parse CEA-708 service block number from: " + dVar.f8546b);
                } else {
                    continue;
                }
            }
        }
        return -1;
    }

    public n a(String str, String str2) {
        return new n(str, str2);
    }

    public f a(String str, long j2, List<a> list, List<e> list2) {
        f fVar = new f(str, j2, list, list2);
        return fVar;
    }

    /* JADX WARNING: Removed duplicated region for block: B:59:0x023c A[LOOP:0: B:1:0x006c->B:59:0x023c, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x020c A[EDGE_INSN: B:60:0x020c->B:53:0x020c ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.a.j.c.a.a a(org.xmlpull.v1.XmlPullParser r41, java.lang.String r42, c.e.a.a.j.c.a.k r43) {
        /*
            r40 = this;
            r15 = r40
            r14 = r41
            r0 = -1
            java.lang.String r1 = "id"
            int r16 = a((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r1, (int) r0)
            int r1 = r40.e((org.xmlpull.v1.XmlPullParser) r41)
            r13 = 0
            java.lang.String r2 = "mimeType"
            java.lang.String r17 = r14.getAttributeValue(r13, r2)
            java.lang.String r2 = "codecs"
            java.lang.String r18 = r14.getAttributeValue(r13, r2)
            java.lang.String r2 = "width"
            int r19 = a((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r2, (int) r0)
            java.lang.String r2 = "height"
            int r20 = a((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r2, (int) r0)
            r2 = -1082130432(0xffffffffbf800000, float:-1.0)
            float r21 = a((org.xmlpull.v1.XmlPullParser) r14, (float) r2)
            java.lang.String r2 = "audioSamplingRate"
            int r22 = a((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r2, (int) r0)
            java.lang.String r12 = "lang"
            java.lang.String r2 = r14.getAttributeValue(r13, r12)
            java.lang.String r3 = "label"
            java.lang.String r23 = r14.getAttributeValue(r13, r3)
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            java.util.ArrayList r10 = new java.util.ArrayList
            r10.<init>()
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            r24 = 0
            r5 = r42
            r27 = r43
            r3 = r1
            r4 = r2
            r28 = r13
            r25 = 0
            r26 = -1
        L_0x006c:
            r41.next()
            java.lang.String r0 = "BaseURL"
            boolean r0 = c.e.a.a.o.J.d(r14, r0)
            if (r0 == 0) goto L_0x00ad
            if (r25 != 0) goto L_0x0097
            java.lang.String r0 = a((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r5)
            r1 = 1
            r5 = r0
            r2 = r3
            r30 = r4
            r3 = r6
            r33 = r7
            r34 = r8
            r35 = r9
            r4 = r10
            r37 = r11
            r38 = r12
            r39 = r13
            r1 = r14
            r0 = r28
            r25 = 1
            goto L_0x0204
        L_0x0097:
            r2 = r3
            r30 = r4
            r31 = r5
            r3 = r6
            r33 = r7
            r34 = r8
            r35 = r9
            r4 = r10
            r37 = r11
            r38 = r12
            r39 = r13
            r1 = r14
            goto L_0x0200
        L_0x00ad:
            java.lang.String r0 = "ContentProtection"
            boolean r0 = c.e.a.a.o.J.d(r14, r0)
            if (r0 == 0) goto L_0x00ca
            android.util.Pair r0 = r40.d((org.xmlpull.v1.XmlPullParser) r41)
            java.lang.Object r1 = r0.first
            if (r1 == 0) goto L_0x00c1
            r28 = r1
            java.lang.String r28 = (java.lang.String) r28
        L_0x00c1:
            java.lang.Object r0 = r0.second
            if (r0 == 0) goto L_0x00c8
            r11.add(r0)
        L_0x00c8:
            r2 = r3
            goto L_0x00e3
        L_0x00ca:
            java.lang.String r0 = "ContentComponent"
            boolean r0 = c.e.a.a.o.J.d(r14, r0)
            if (r0 == 0) goto L_0x00f8
            java.lang.String r0 = r14.getAttributeValue(r13, r12)
            java.lang.String r4 = b((java.lang.String) r4, (java.lang.String) r0)
            int r0 = r40.e((org.xmlpull.v1.XmlPullParser) r41)
            int r0 = a((int) r3, (int) r0)
            r2 = r0
        L_0x00e3:
            r30 = r4
            r3 = r6
            r33 = r7
            r34 = r8
            r35 = r9
            r4 = r10
            r37 = r11
            r38 = r12
            r39 = r13
            r1 = r14
            r0 = r28
            goto L_0x0204
        L_0x00f8:
            java.lang.String r0 = "Role"
            boolean r1 = c.e.a.a.o.J.d(r14, r0)
            if (r1 == 0) goto L_0x0108
            c.e.a.a.j.c.a.d r0 = b((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r0)
            r8.add(r0)
            goto L_0x0097
        L_0x0108:
            java.lang.String r0 = "AudioChannelConfiguration"
            boolean r0 = c.e.a.a.o.J.d(r14, r0)
            if (r0 == 0) goto L_0x0115
            int r26 = r40.c((org.xmlpull.v1.XmlPullParser) r41)
            goto L_0x00c8
        L_0x0115:
            java.lang.String r0 = "Accessibility"
            boolean r1 = c.e.a.a.o.J.d(r14, r0)
            if (r1 == 0) goto L_0x0126
            c.e.a.a.j.c.a.d r0 = b((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r0)
            r9.add(r0)
            goto L_0x0097
        L_0x0126:
            java.lang.String r0 = "SupplementalProperty"
            boolean r1 = c.e.a.a.o.J.d(r14, r0)
            if (r1 == 0) goto L_0x0137
            c.e.a.a.j.c.a.d r0 = b((org.xmlpull.v1.XmlPullParser) r14, (java.lang.String) r0)
            r7.add(r0)
            goto L_0x0097
        L_0x0137:
            java.lang.String r0 = "Representation"
            boolean r0 = c.e.a.a.o.J.d(r14, r0)
            if (r0 == 0) goto L_0x0192
            r0 = r40
            r1 = r41
            r2 = r5
            r29 = r3
            r3 = r23
            r30 = r4
            r4 = r17
            r31 = r5
            r5 = r18
            r32 = r6
            r6 = r19
            r33 = r7
            r7 = r20
            r34 = r8
            r8 = r21
            r35 = r9
            r9 = r26
            r36 = r10
            r10 = r22
            r37 = r11
            r11 = r30
            r38 = r12
            r12 = r34
            r39 = r13
            r13 = r35
            r14 = r27
            c.e.a.a.j.c.a.c$a r0 = r0.a((org.xmlpull.v1.XmlPullParser) r1, (java.lang.String) r2, (java.lang.String) r3, (java.lang.String) r4, (java.lang.String) r5, (int) r6, (int) r7, (float) r8, (int) r9, (int) r10, (java.lang.String) r11, (java.util.List<c.e.a.a.j.c.a.d>) r12, (java.util.List<c.e.a.a.j.c.a.d>) r13, (c.e.a.a.j.c.a.k) r14)
            com.google.android.exoplayer2.Format r1 = r0.f8538a
            int r1 = r15.a((com.google.android.exoplayer2.Format) r1)
            r2 = r29
            int r1 = a((int) r2, (int) r1)
            r3 = r32
            r3.add(r0)
            r2 = r1
            r0 = r28
            r5 = r31
            r4 = r36
            r1 = r41
            goto L_0x0204
        L_0x0192:
            r2 = r3
            r30 = r4
            r31 = r5
            r3 = r6
            r33 = r7
            r34 = r8
            r35 = r9
            r36 = r10
            r37 = r11
            r38 = r12
            r39 = r13
            java.lang.String r0 = "SegmentBase"
            r1 = r41
            boolean r0 = c.e.a.a.o.J.d(r1, r0)
            if (r0 == 0) goto L_0x01c1
            r0 = r27
            c.e.a.a.j.c.a.k$e r0 = (c.e.a.a.j.c.a.k.e) r0
            c.e.a.a.j.c.a.k$e r0 = r15.a((org.xmlpull.v1.XmlPullParser) r1, (c.e.a.a.j.c.a.k.e) r0)
        L_0x01b8:
            r27 = r0
            r0 = r28
            r5 = r31
            r4 = r36
            goto L_0x0204
        L_0x01c1:
            java.lang.String r0 = "SegmentList"
            boolean r0 = c.e.a.a.o.J.d(r1, r0)
            if (r0 == 0) goto L_0x01d2
            r0 = r27
            c.e.a.a.j.c.a.k$b r0 = (c.e.a.a.j.c.a.k.b) r0
            c.e.a.a.j.c.a.k$b r0 = r15.a((org.xmlpull.v1.XmlPullParser) r1, (c.e.a.a.j.c.a.k.b) r0)
            goto L_0x01b8
        L_0x01d2:
            java.lang.String r0 = "SegmentTemplate"
            boolean r0 = c.e.a.a.o.J.d(r1, r0)
            if (r0 == 0) goto L_0x01e3
            r0 = r27
            c.e.a.a.j.c.a.k$c r0 = (c.e.a.a.j.c.a.k.c) r0
            c.e.a.a.j.c.a.k$c r0 = r15.a((org.xmlpull.v1.XmlPullParser) r1, (c.e.a.a.j.c.a.k.c) r0)
            goto L_0x01b8
        L_0x01e3:
            java.lang.String r0 = "InbandEventStream"
            boolean r4 = c.e.a.a.o.J.d(r1, r0)
            if (r4 == 0) goto L_0x01f5
            c.e.a.a.j.c.a.d r0 = b((org.xmlpull.v1.XmlPullParser) r1, (java.lang.String) r0)
            r4 = r36
            r4.add(r0)
            goto L_0x0200
        L_0x01f5:
            r4 = r36
            boolean r0 = c.e.a.a.o.J.b(r41)
            if (r0 == 0) goto L_0x0200
            r40.b((org.xmlpull.v1.XmlPullParser) r41)
        L_0x0200:
            r0 = r28
            r5 = r31
        L_0x0204:
            java.lang.String r6 = "AdaptationSet"
            boolean r6 = c.e.a.a.o.J.c(r1, r6)
            if (r6 == 0) goto L_0x023c
            java.util.ArrayList r5 = new java.util.ArrayList
            int r1 = r3.size()
            r5.<init>(r1)
            r1 = 0
        L_0x0216:
            int r6 = r3.size()
            if (r1 >= r6) goto L_0x022e
            java.lang.Object r6 = r3.get(r1)
            c.e.a.a.j.c.a.c$a r6 = (c.e.a.a.j.c.a.c.a) r6
            r7 = r37
            c.e.a.a.j.c.a.j r6 = r15.a((c.e.a.a.j.c.a.c.a) r6, (java.lang.String) r0, (java.util.ArrayList<com.google.android.exoplayer2.drm.DrmInitData.SchemeData>) r7, (java.util.ArrayList<c.e.a.a.j.c.a.d>) r4)
            r5.add(r6)
            int r1 = r1 + 1
            goto L_0x0216
        L_0x022e:
            r0 = r40
            r1 = r16
            r3 = r5
            r4 = r35
            r5 = r33
            c.e.a.a.j.c.a.a r0 = r0.a((int) r1, (int) r2, (java.util.List<c.e.a.a.j.c.a.j>) r3, (java.util.List<c.e.a.a.j.c.a.d>) r4, (java.util.List<c.e.a.a.j.c.a.d>) r5)
            return r0
        L_0x023c:
            r28 = r0
            r14 = r1
            r6 = r3
            r10 = r4
            r4 = r30
            r7 = r33
            r8 = r34
            r9 = r35
            r11 = r37
            r12 = r38
            r13 = r39
            r3 = r2
            goto L_0x006c
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.a.c.a(org.xmlpull.v1.XmlPullParser, java.lang.String, c.e.a.a.j.c.a.k):c.e.a.a.j.c.a.a");
    }

    public static long b(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j2;
        }
        return I.j(attributeValue);
    }

    public static String b(XmlPullParser xmlPullParser, String str, String str2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? str2 : attributeValue;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v0, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v1, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v2, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r11v0, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v3, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v4, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: byte[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v9, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v4, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r7v12, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v11, resolved type: java.lang.String} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x00a8  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00b4  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0130  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0139  */
    /* JADX WARNING: Removed duplicated region for block: B:75:0x013f A[LOOP:1: B:35:0x009d->B:75:0x013f, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x012e A[EDGE_INSN: B:77:0x012e->B:70:0x012e ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.util.Pair<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData.SchemeData> d(org.xmlpull.v1.XmlPullParser r17) {
        /*
            r16 = this;
            r0 = r17
            r1 = 0
            java.lang.String r2 = "schemeIdUri"
            java.lang.String r2 = r0.getAttributeValue(r1, r2)
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L_0x0098
            java.lang.String r2 = c.e.a.a.o.I.l(r2)
            r5 = -1
            int r6 = r2.hashCode()
            r7 = 489446379(0x1d2c5beb, float:2.281153E-21)
            r8 = 2
            if (r6 == r7) goto L_0x003b
            r7 = 755418770(0x2d06c692, float:7.66111E-12)
            if (r6 == r7) goto L_0x0031
            r7 = 1812765994(0x6c0c9d2a, float:6.799672E26)
            if (r6 == r7) goto L_0x0027
            goto L_0x0044
        L_0x0027:
            java.lang.String r6 = "urn:mpeg:dash:mp4protection:2011"
            boolean r2 = r2.equals(r6)
            if (r2 == 0) goto L_0x0044
            r5 = 0
            goto L_0x0044
        L_0x0031:
            java.lang.String r6 = "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"
            boolean r2 = r2.equals(r6)
            if (r2 == 0) goto L_0x0044
            r5 = 2
            goto L_0x0044
        L_0x003b:
            java.lang.String r6 = "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"
            boolean r2 = r2.equals(r6)
            if (r2 == 0) goto L_0x0044
            r5 = 1
        L_0x0044:
            if (r5 == 0) goto L_0x0052
            if (r5 == r3) goto L_0x004e
            if (r5 == r8) goto L_0x004b
            goto L_0x0098
        L_0x004b:
            java.util.UUID r2 = c.e.a.a.C0744q.f9731d
            goto L_0x0050
        L_0x004e:
            java.util.UUID r2 = c.e.a.a.C0744q.f9732e
        L_0x0050:
            r5 = r1
            goto L_0x009a
        L_0x0052:
            java.lang.String r2 = "value"
            java.lang.String r2 = r0.getAttributeValue(r1, r2)
            java.lang.String r5 = "default_KID"
            java.lang.String r5 = c.e.a.a.o.J.b(r0, r5)
            boolean r6 = android.text.TextUtils.isEmpty(r5)
            if (r6 != 0) goto L_0x0092
            java.lang.String r6 = "00000000-0000-0000-0000-000000000000"
            boolean r6 = r6.equals(r5)
            if (r6 != 0) goto L_0x0092
            java.lang.String r6 = "\\s+"
            java.lang.String[] r5 = r5.split(r6)
            int r6 = r5.length
            java.util.UUID[] r6 = new java.util.UUID[r6]
            r7 = 0
        L_0x0076:
            int r8 = r5.length
            if (r7 >= r8) goto L_0x0084
            r8 = r5[r7]
            java.util.UUID r8 = java.util.UUID.fromString(r8)
            r6[r7] = r8
            int r7 = r7 + 1
            goto L_0x0076
        L_0x0084:
            java.util.UUID r5 = c.e.a.a.C0744q.f9729b
            byte[] r5 = c.e.a.a.e.e.l.a(r5, r6, r1)
            java.util.UUID r6 = c.e.a.a.C0744q.f9729b
            r7 = r1
            r8 = 0
            r15 = r6
            r6 = r2
            r2 = r15
            goto L_0x009d
        L_0x0092:
            r5 = r1
            r7 = r5
            r6 = r2
            r8 = 0
            r2 = r7
            goto L_0x009d
        L_0x0098:
            r2 = r1
            r5 = r2
        L_0x009a:
            r6 = r5
            r7 = r6
            r8 = 0
        L_0x009d:
            r17.next()
            java.lang.String r9 = "ms:laurl"
            boolean r9 = c.e.a.a.o.J.d(r0, r9)
            if (r9 == 0) goto L_0x00b4
            java.lang.String r7 = "licenseUrl"
            java.lang.String r7 = r0.getAttributeValue(r1, r7)
        L_0x00ae:
            r10 = r2
            r13 = r5
        L_0x00b0:
            r11 = r7
            r14 = r8
            goto L_0x0126
        L_0x00b4:
            java.lang.String r9 = "widevine:license"
            boolean r9 = c.e.a.a.o.J.d(r0, r9)
            if (r9 == 0) goto L_0x00d0
            java.lang.String r8 = "robustness_level"
            java.lang.String r8 = r0.getAttributeValue(r1, r8)
            if (r8 == 0) goto L_0x00ce
            java.lang.String r9 = "HW"
            boolean r8 = r8.startsWith(r9)
            if (r8 == 0) goto L_0x00ce
            r8 = 1
            goto L_0x00ae
        L_0x00ce:
            r8 = 0
            goto L_0x00ae
        L_0x00d0:
            r9 = 4
            if (r5 != 0) goto L_0x00fb
            java.lang.String r10 = "pssh"
            boolean r10 = c.e.a.a.o.J.e(r0, r10)
            if (r10 == 0) goto L_0x00fb
            int r10 = r17.next()
            if (r10 != r9) goto L_0x00fb
            java.lang.String r2 = r17.getText()
            byte[] r2 = android.util.Base64.decode(r2, r4)
            java.util.UUID r5 = c.e.a.a.e.e.l.b(r2)
            if (r5 != 0) goto L_0x00f8
            java.lang.String r2 = "MpdParser"
            java.lang.String r9 = "Skipping malformed cenc:pssh data"
            c.e.a.a.o.p.d(r2, r9)
            r13 = r1
            goto L_0x00f9
        L_0x00f8:
            r13 = r2
        L_0x00f9:
            r10 = r5
            goto L_0x00b0
        L_0x00fb:
            if (r5 != 0) goto L_0x0122
            java.util.UUID r10 = c.e.a.a.C0744q.f9732e
            boolean r10 = r10.equals(r2)
            if (r10 == 0) goto L_0x0122
            java.lang.String r10 = "mspr:pro"
            boolean r10 = c.e.a.a.o.J.d(r0, r10)
            if (r10 == 0) goto L_0x0122
            int r10 = r17.next()
            if (r10 != r9) goto L_0x0122
            java.util.UUID r5 = c.e.a.a.C0744q.f9732e
            java.lang.String r9 = r17.getText()
            byte[] r9 = android.util.Base64.decode(r9, r4)
            byte[] r5 = c.e.a.a.e.e.l.a(r5, r9)
            goto L_0x00ae
        L_0x0122:
            a((org.xmlpull.v1.XmlPullParser) r17)
            goto L_0x00ae
        L_0x0126:
            java.lang.String r2 = "ContentProtection"
            boolean r2 = c.e.a.a.o.J.c(r0, r2)
            if (r2 == 0) goto L_0x013f
            if (r10 == 0) goto L_0x0139
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData r0 = new com.google.android.exoplayer2.drm.DrmInitData$SchemeData
            java.lang.String r12 = "video/mp4"
            r9 = r0
            r9.<init>(r10, r11, r12, r13, r14)
            goto L_0x013a
        L_0x0139:
            r0 = r1
        L_0x013a:
            android.util.Pair r0 = android.util.Pair.create(r6, r0)
            return r0
        L_0x013f:
            r2 = r10
            r7 = r11
            r5 = r13
            r8 = r14
            goto L_0x009d
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.a.c.d(org.xmlpull.v1.XmlPullParser):android.util.Pair");
    }

    public int c(XmlPullParser xmlPullParser) {
        String b2 = b(xmlPullParser, "schemeIdUri", (String) null);
        int i2 = -1;
        if ("urn:mpeg:dash:23003:3:audio_channel_configuration:2011".equals(b2)) {
            i2 = a(xmlPullParser, "value", -1);
        } else if ("tag:dolby.com,2014:dash:audio_channel_configuration:2011".equals(b2)) {
            i2 = f(xmlPullParser);
        }
        do {
            xmlPullParser.next();
        } while (!J.c(xmlPullParser, "AudioChannelConfiguration"));
        return i2;
    }

    public int c(String str) {
        if (str == null) {
            return 0;
        }
        char c2 = 65535;
        switch (str.hashCode()) {
            case 49:
                if (str.equals("1")) {
                    c2 = 0;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c2 = 1;
                    break;
                }
                break;
            case 51:
                if (str.equals("3")) {
                    c2 = 2;
                    break;
                }
                break;
            case 52:
                if (str.equals("4")) {
                    c2 = 3;
                    break;
                }
                break;
            case 54:
                if (str.equals("6")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        if (c2 == 0) {
            return 512;
        }
        if (c2 == 1) {
            return 2048;
        }
        if (c2 == 2) {
            return 4;
        }
        if (c2 != 3) {
            return c2 != 4 ? 0 : 1;
        }
        return 8;
    }

    public static String c(String str, String str2) {
        if (s.j(str)) {
            return s.a(str2);
        }
        if (s.l(str)) {
            return s.i(str2);
        }
        if (a(str)) {
            return str;
        }
        if ("application/mp4".equals(str)) {
            if (str2 != null) {
                if (str2.startsWith("stpp")) {
                    return "application/ttml+xml";
                }
                if (str2.startsWith("wvtt")) {
                    return "application/x-mp4-vtt";
                }
            }
        } else if ("application/x-rawcc".equals(str) && str2 != null) {
            if (str2.contains("cea708")) {
                return "application/cea-708";
            }
            if (str2.contains("eia608") || str2.contains("cea608")) {
                return "application/cea-608";
            }
        }
        return null;
    }

    public static String c(List<d> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            d dVar = list.get(i2);
            if ("tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014".equals(dVar.f8545a) && "ec+3".equals(dVar.f8546b)) {
                return "audio/eac3-joc";
            }
        }
        return "audio/eac3";
    }

    public static long c(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? j2 : Long.parseLong(attributeValue);
    }

    public int d(List<d> list) {
        int c2;
        int i2 = 0;
        for (int i3 = 0; i3 < list.size(); i3++) {
            d dVar = list.get(i3);
            if ("urn:mpeg:dash:role:2011".equalsIgnoreCase(dVar.f8545a)) {
                c2 = b(dVar.f8546b);
            } else if ("urn:tva:metadata:cs:AudioPurposeCS:2007".equalsIgnoreCase(dVar.f8545a)) {
                c2 = c(dVar.f8546b);
            }
            i2 |= c2;
        }
        return i2;
    }

    public a a(int i2, int i3, List<j> list, List<d> list2, List<d> list3) {
        a aVar = new a(i2, i3, list, list2, list3);
        return aVar;
    }

    public int a(Format format) {
        String str = format.f12514i;
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        if (s.l(str)) {
            return 2;
        }
        if (s.j(str)) {
            return 1;
        }
        if (a(str)) {
            return 3;
        }
        return -1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:43:0x0146 A[LOOP:0: B:1:0x0058->B:43:0x0146, LOOP_END] */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x010a A[EDGE_INSN: B:44:0x010a->B:37:0x010a ?: BREAK  , SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public c.e.a.a.j.c.a.c.a a(org.xmlpull.v1.XmlPullParser r23, java.lang.String r24, java.lang.String r25, java.lang.String r26, java.lang.String r27, int r28, int r29, float r30, int r31, int r32, java.lang.String r33, java.util.List<c.e.a.a.j.c.a.d> r34, java.util.List<c.e.a.a.j.c.a.d> r35, c.e.a.a.j.c.a.k r36) {
        /*
            r22 = this;
            r15 = r22
            r0 = r23
            r1 = 0
            java.lang.String r2 = "id"
            java.lang.String r2 = r0.getAttributeValue(r1, r2)
            java.lang.String r3 = "bandwidth"
            r4 = -1
            int r9 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r3, (int) r4)
            java.lang.String r3 = "mimeType"
            r4 = r26
            java.lang.String r3 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r3, (java.lang.String) r4)
            java.lang.String r4 = "codecs"
            r5 = r27
            java.lang.String r13 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r4, (java.lang.String) r5)
            java.lang.String r4 = "width"
            r5 = r28
            int r4 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r4, (int) r5)
            java.lang.String r5 = "height"
            r6 = r29
            int r5 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r5, (int) r6)
            r6 = r30
            float r6 = a((org.xmlpull.v1.XmlPullParser) r0, (float) r6)
            java.lang.String r7 = "audioSamplingRate"
            r8 = r32
            int r8 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r7, (int) r8)
            java.util.ArrayList r14 = new java.util.ArrayList
            r14.<init>()
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.ArrayList r11 = new java.util.ArrayList
            r11.<init>()
            r7 = 0
            r16 = r31
            r10 = r36
            r17 = r1
            r1 = r24
        L_0x0058:
            r23.next()
            r26 = r13
            java.lang.String r13 = "BaseURL"
            boolean r13 = c.e.a.a.o.J.d(r0, r13)
            if (r13 == 0) goto L_0x0078
            if (r7 != 0) goto L_0x0074
            java.lang.String r1 = a((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r1)
            r7 = 1
        L_0x006c:
            r13 = r16
            r18 = r17
            r16 = r1
            goto L_0x0100
        L_0x0074:
            r24 = r1
            goto L_0x00fa
        L_0x0078:
            java.lang.String r13 = "AudioChannelConfiguration"
            boolean r13 = c.e.a.a.o.J.d(r0, r13)
            if (r13 == 0) goto L_0x008a
            int r13 = r22.c((org.xmlpull.v1.XmlPullParser) r23)
            r16 = r1
            r18 = r17
            goto L_0x0100
        L_0x008a:
            java.lang.String r13 = "SegmentBase"
            boolean r13 = c.e.a.a.o.J.d(r0, r13)
            if (r13 == 0) goto L_0x0099
            c.e.a.a.j.c.a.k$e r10 = (c.e.a.a.j.c.a.k.e) r10
            c.e.a.a.j.c.a.k$e r10 = r15.a((org.xmlpull.v1.XmlPullParser) r0, (c.e.a.a.j.c.a.k.e) r10)
            goto L_0x006c
        L_0x0099:
            java.lang.String r13 = "SegmentList"
            boolean r13 = c.e.a.a.o.J.d(r0, r13)
            if (r13 == 0) goto L_0x00a8
            c.e.a.a.j.c.a.k$b r10 = (c.e.a.a.j.c.a.k.b) r10
            c.e.a.a.j.c.a.k$b r10 = r15.a((org.xmlpull.v1.XmlPullParser) r0, (c.e.a.a.j.c.a.k.b) r10)
            goto L_0x006c
        L_0x00a8:
            java.lang.String r13 = "SegmentTemplate"
            boolean r13 = c.e.a.a.o.J.d(r0, r13)
            if (r13 == 0) goto L_0x00b7
            c.e.a.a.j.c.a.k$c r10 = (c.e.a.a.j.c.a.k.c) r10
            c.e.a.a.j.c.a.k$c r10 = r15.a((org.xmlpull.v1.XmlPullParser) r0, (c.e.a.a.j.c.a.k.c) r10)
            goto L_0x006c
        L_0x00b7:
            java.lang.String r13 = "ContentProtection"
            boolean r13 = c.e.a.a.o.J.d(r0, r13)
            if (r13 == 0) goto L_0x00d5
            android.util.Pair r13 = r22.d((org.xmlpull.v1.XmlPullParser) r23)
            r24 = r1
            java.lang.Object r1 = r13.first
            if (r1 == 0) goto L_0x00cd
            r17 = r1
            java.lang.String r17 = (java.lang.String) r17
        L_0x00cd:
            java.lang.Object r1 = r13.second
            if (r1 == 0) goto L_0x00fa
            r14.add(r1)
            goto L_0x00fa
        L_0x00d5:
            r24 = r1
            java.lang.String r1 = "InbandEventStream"
            boolean r13 = c.e.a.a.o.J.d(r0, r1)
            if (r13 == 0) goto L_0x00e7
            c.e.a.a.j.c.a.d r1 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r1)
            r12.add(r1)
            goto L_0x00fa
        L_0x00e7:
            java.lang.String r1 = "SupplementalProperty"
            boolean r13 = c.e.a.a.o.J.d(r0, r1)
            if (r13 == 0) goto L_0x00f7
            c.e.a.a.j.c.a.d r1 = b((org.xmlpull.v1.XmlPullParser) r0, (java.lang.String) r1)
            r11.add(r1)
            goto L_0x00fa
        L_0x00f7:
            a((org.xmlpull.v1.XmlPullParser) r23)
        L_0x00fa:
            r13 = r16
            r18 = r17
            r16 = r24
        L_0x0100:
            r17 = r10
            java.lang.String r1 = "Representation"
            boolean r1 = c.e.a.a.o.J.c(r0, r1)
            if (r1 == 0) goto L_0x0146
            r0 = r22
            r1 = r2
            r2 = r25
            r7 = r13
            r10 = r33
            r19 = r11
            r11 = r34
            r20 = r12
            r12 = r35
            r13 = r26
            r21 = r14
            r14 = r19
            com.google.android.exoplayer2.Format r0 = r0.a((java.lang.String) r1, (java.lang.String) r2, (java.lang.String) r3, (int) r4, (int) r5, (float) r6, (int) r7, (int) r8, (int) r9, (java.lang.String) r10, (java.util.List<c.e.a.a.j.c.a.d>) r11, (java.util.List<c.e.a.a.j.c.a.d>) r12, (java.lang.String) r13, (java.util.List<c.e.a.a.j.c.a.d>) r14)
            if (r17 == 0) goto L_0x0129
            r1 = r17
            goto L_0x012e
        L_0x0129:
            c.e.a.a.j.c.a.k$e r1 = new c.e.a.a.j.c.a.k$e
            r1.<init>()
        L_0x012e:
            c.e.a.a.j.c.a.c$a r2 = new c.e.a.a.j.c.a.c$a
            r3 = -1
            r23 = r2
            r24 = r0
            r25 = r16
            r26 = r1
            r27 = r18
            r28 = r21
            r29 = r20
            r30 = r3
            r23.<init>(r24, r25, r26, r27, r28, r29, r30)
            return r2
        L_0x0146:
            r1 = r16
            r10 = r17
            r17 = r18
            r16 = r13
            r13 = r26
            goto L_0x0058
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.c.a.c.a(org.xmlpull.v1.XmlPullParser, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, int, float, int, int, java.lang.String, java.util.List, java.util.List, c.e.a.a.j.c.a.k):c.e.a.a.j.c.a.c$a");
    }

    public Format a(String str, String str2, String str3, int i2, int i3, float f2, int i4, int i5, int i6, String str4, List<d> list, List<d> list2, String str5, List<d> list3) {
        String str6;
        int i7;
        int b2;
        List<d> list4 = list;
        String c2 = c(str3, str5);
        int f3 = f(list4);
        int e2 = e(list4) | d(list2);
        if (c2 != null) {
            String c3 = "audio/eac3".equals(c2) ? c(list3) : c2;
            if (s.l(c3)) {
                return Format.a(str, str2, str3, c3, str5, i6, i2, i3, f2, (List<byte[]>) null, f3, e2);
            }
            if (s.j(c3)) {
                return Format.a(str, str2, str3, c3, str5, i6, i4, i5, (List<byte[]>) null, f3, e2, str4);
            }
            if (a(c3)) {
                if ("application/cea-608".equals(c3)) {
                    b2 = a(list2);
                } else if ("application/cea-708".equals(c3)) {
                    b2 = b(list2);
                } else {
                    i7 = -1;
                    return Format.a(str, str2, str3, c3, str5, i6, f3, e2, str4, i7);
                }
                i7 = b2;
                return Format.a(str, str2, str3, c3, str5, i6, f3, e2, str4, i7);
            }
            str6 = c3;
        } else {
            str6 = c2;
        }
        return Format.a(str, str2, str3, str6, str5, i6, f3, e2, str4);
    }

    public j a(a aVar, String str, ArrayList<DrmInitData.SchemeData> arrayList, ArrayList<d> arrayList2) {
        Format format = aVar.f8538a;
        String str2 = aVar.f8541d;
        if (str2 != null) {
            str = str2;
        }
        ArrayList<DrmInitData.SchemeData> arrayList3 = aVar.f8542e;
        arrayList3.addAll(arrayList);
        if (!arrayList3.isEmpty()) {
            a(arrayList3);
            format = format.a(new DrmInitData(str, (List<DrmInitData.SchemeData>) arrayList3));
        }
        ArrayList<d> arrayList4 = aVar.f8543f;
        arrayList4.addAll(arrayList2);
        return j.a(aVar.f8544g, format, aVar.f8539b, aVar.f8540c, arrayList4);
    }

    public k.e a(XmlPullParser xmlPullParser, k.e eVar) {
        long j2;
        long j3;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        k.e eVar2 = eVar;
        long c2 = c(xmlPullParser2, "timescale", eVar2 != null ? eVar2.f8579b : 1);
        long j4 = 0;
        long c3 = c(xmlPullParser2, "presentationTimeOffset", eVar2 != null ? eVar2.f8580c : 0);
        long j5 = eVar2 != null ? eVar2.f8589d : 0;
        if (eVar2 != null) {
            j4 = eVar2.f8590e;
        }
        h hVar = null;
        String attributeValue = xmlPullParser2.getAttributeValue(null, "indexRange");
        if (attributeValue != null) {
            String[] split = attributeValue.split("-");
            long parseLong = Long.parseLong(split[0]);
            j2 = (Long.parseLong(split[1]) - parseLong) + 1;
            j3 = parseLong;
        } else {
            j2 = j4;
            j3 = j5;
        }
        if (eVar2 != null) {
            hVar = eVar2.f8578a;
        }
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser2, "Initialization")) {
                hVar = h(xmlPullParser);
            } else {
                a(xmlPullParser);
            }
        } while (!J.c(xmlPullParser2, "SegmentBase"));
        return a(hVar, c2, c3, j3, j2);
    }

    public k.e a(h hVar, long j2, long j3, long j4, long j5) {
        k.e eVar = new k.e(hVar, j2, j3, j4, j5);
        return eVar;
    }

    public k.b a(XmlPullParser xmlPullParser, k.b bVar) {
        XmlPullParser xmlPullParser2 = xmlPullParser;
        k.b bVar2 = bVar;
        long j2 = 1;
        long c2 = c(xmlPullParser2, "timescale", bVar2 != null ? bVar2.f8579b : 1);
        long c3 = c(xmlPullParser2, "presentationTimeOffset", bVar2 != null ? bVar2.f8580c : 0);
        long c4 = c(xmlPullParser2, "duration", bVar2 != null ? bVar2.f8582e : -9223372036854775807L);
        if (bVar2 != null) {
            j2 = bVar2.f8581d;
        }
        long c5 = c(xmlPullParser2, "startNumber", j2);
        List list = null;
        h hVar = null;
        List<k.d> list2 = null;
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser2, "Initialization")) {
                hVar = h(xmlPullParser);
            } else if (J.d(xmlPullParser2, "SegmentTimeline")) {
                list2 = j(xmlPullParser);
            } else if (J.d(xmlPullParser2, "SegmentURL")) {
                if (list == null) {
                    list = new ArrayList();
                }
                list.add(k(xmlPullParser));
            } else {
                a(xmlPullParser);
            }
        } while (!J.c(xmlPullParser2, "SegmentList"));
        if (bVar2 != null) {
            if (hVar == null) {
                hVar = bVar2.f8578a;
            }
            if (list2 == null) {
                list2 = bVar2.f8583f;
            }
            if (list == null) {
                list = bVar2.f8584g;
            }
        }
        return a(hVar, c2, c3, c5, c4, list2, list);
    }

    public k.b a(h hVar, long j2, long j3, long j4, long j5, List<k.d> list, List<h> list2) {
        k.b bVar = new k.b(hVar, j2, j3, j4, j5, list, list2);
        return bVar;
    }

    public k.c a(XmlPullParser xmlPullParser, k.c cVar) {
        XmlPullParser xmlPullParser2 = xmlPullParser;
        k.c cVar2 = cVar;
        long j2 = 1;
        long c2 = c(xmlPullParser2, "timescale", cVar2 != null ? cVar2.f8579b : 1);
        long c3 = c(xmlPullParser2, "presentationTimeOffset", cVar2 != null ? cVar2.f8580c : 0);
        long c4 = c(xmlPullParser2, "duration", cVar2 != null ? cVar2.f8582e : -9223372036854775807L);
        if (cVar2 != null) {
            j2 = cVar2.f8581d;
        }
        long c5 = c(xmlPullParser2, "startNumber", j2);
        h hVar = null;
        m a2 = a(xmlPullParser2, "media", cVar2 != null ? cVar2.f8586h : null);
        m a3 = a(xmlPullParser2, "initialization", cVar2 != null ? cVar2.f8585g : null);
        List<k.d> list = null;
        do {
            xmlPullParser.next();
            if (J.d(xmlPullParser2, "Initialization")) {
                hVar = h(xmlPullParser);
            } else if (J.d(xmlPullParser2, "SegmentTimeline")) {
                list = j(xmlPullParser);
            } else {
                a(xmlPullParser);
            }
        } while (!J.c(xmlPullParser2, "SegmentTemplate"));
        if (cVar2 != null) {
            if (hVar == null) {
                hVar = cVar2.f8578a;
            }
            if (list == null) {
                list = cVar2.f8583f;
            }
        }
        return a(hVar, c2, c3, c5, c4, list, a3, a2);
    }

    public k.c a(h hVar, long j2, long j3, long j4, long j5, List<k.d> list, m mVar, m mVar2) {
        k.c cVar = new k.c(hVar, j2, j3, j4, j5, list, mVar, mVar2);
        return cVar;
    }

    public e a(String str, String str2, long j2, long[] jArr, EventMessage[] eventMessageArr) {
        e eVar = new e(str, str2, j2, jArr, eventMessageArr);
        return eVar;
    }

    public Pair<Long, EventMessage> a(XmlPullParser xmlPullParser, String str, String str2, long j2, ByteArrayOutputStream byteArrayOutputStream) {
        XmlPullParser xmlPullParser2 = xmlPullParser;
        long c2 = c(xmlPullParser2, "id", 0);
        long c3 = c(xmlPullParser2, "duration", -9223372036854775807L);
        long c4 = c(xmlPullParser2, "presentationTime", 0);
        long c5 = I.c(c3, 1000, j2);
        long c6 = I.c(c4, RetryManager.NANOSECONDS_IN_MS, j2);
        String b2 = b(xmlPullParser2, "messageData", (String) null);
        byte[] a2 = a(xmlPullParser2, byteArrayOutputStream);
        Long valueOf = Long.valueOf(c6);
        if (b2 != null) {
            a2 = I.e(b2);
        }
        return Pair.create(valueOf, a(str, str2, c2, c5, a2));
    }

    public byte[] a(XmlPullParser xmlPullParser, ByteArrayOutputStream byteArrayOutputStream) {
        byteArrayOutputStream.reset();
        XmlSerializer newSerializer = Xml.newSerializer();
        newSerializer.setOutput(byteArrayOutputStream, "UTF-8");
        xmlPullParser.nextToken();
        while (!J.c(xmlPullParser, "Event")) {
            switch (xmlPullParser.getEventType()) {
                case 0:
                    newSerializer.startDocument(null, false);
                    break;
                case 1:
                    newSerializer.endDocument();
                    break;
                case 2:
                    newSerializer.startTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    for (int i2 = 0; i2 < xmlPullParser.getAttributeCount(); i2++) {
                        newSerializer.attribute(xmlPullParser.getAttributeNamespace(i2), xmlPullParser.getAttributeName(i2), xmlPullParser.getAttributeValue(i2));
                    }
                    break;
                case 3:
                    newSerializer.endTag(xmlPullParser.getNamespace(), xmlPullParser.getName());
                    break;
                case 4:
                    newSerializer.text(xmlPullParser.getText());
                    break;
                case 5:
                    newSerializer.cdsect(xmlPullParser.getText());
                    break;
                case 6:
                    newSerializer.entityRef(xmlPullParser.getText());
                    break;
                case 7:
                    newSerializer.ignorableWhitespace(xmlPullParser.getText());
                    break;
                case 8:
                    newSerializer.processingInstruction(xmlPullParser.getText());
                    break;
                case 9:
                    newSerializer.comment(xmlPullParser.getText());
                    break;
                case 10:
                    newSerializer.docdecl(xmlPullParser.getText());
                    break;
            }
            xmlPullParser.nextToken();
        }
        newSerializer.flush();
        return byteArrayOutputStream.toByteArray();
    }

    public EventMessage a(String str, String str2, long j2, long j3, byte[] bArr) {
        EventMessage eventMessage = new EventMessage(str, str2, j3, j2, bArr);
        return eventMessage;
    }

    public k.d a(long j2, long j3) {
        return new k.d(j2, j3);
    }

    public m a(XmlPullParser xmlPullParser, String str, m mVar) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue != null ? m.a(attributeValue) : mVar;
    }

    public h a(XmlPullParser xmlPullParser, String str, String str2) {
        long j2;
        long j3;
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        String attributeValue2 = xmlPullParser.getAttributeValue(null, str2);
        if (attributeValue2 != null) {
            String[] split = attributeValue2.split("-");
            j3 = Long.parseLong(split[0]);
            if (split.length == 2) {
                j2 = (Long.parseLong(split[1]) - j3) + 1;
                return a(attributeValue, j3, j2);
            }
        } else {
            j3 = 0;
        }
        j2 = -1;
        return a(attributeValue, j3, j2);
    }

    public h a(String str, long j2, long j3) {
        h hVar = new h(str, j2, j3);
        return hVar;
    }

    public static void a(XmlPullParser xmlPullParser) {
        if (J.b(xmlPullParser)) {
            int i2 = 1;
            while (i2 != 0) {
                xmlPullParser.next();
                if (J.b(xmlPullParser)) {
                    i2++;
                } else if (J.a(xmlPullParser)) {
                    i2--;
                }
            }
        }
    }

    public static void a(ArrayList<DrmInitData.SchemeData> arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            DrmInitData.SchemeData schemeData = arrayList.get(size);
            if (!schemeData.a()) {
                int i2 = 0;
                while (true) {
                    if (i2 >= arrayList.size()) {
                        break;
                    } else if (arrayList.get(i2).b(schemeData)) {
                        arrayList.remove(size);
                        break;
                    } else {
                        i2++;
                    }
                }
            }
        }
    }

    public static boolean a(String str) {
        return s.k(str) || "application/ttml+xml".equals(str) || "application/x-mp4-vtt".equals(str) || "application/cea-708".equals(str) || "application/cea-608".equals(str);
    }

    public static int a(int i2, int i3) {
        if (i2 == -1) {
            return i3;
        }
        if (i3 == -1) {
            return i2;
        }
        C0737e.b(i2 == i3);
        return i2;
    }

    public static int a(List<d> list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            d dVar = list.get(i2);
            if ("urn:scte:dash:cc:cea-608:2015".equals(dVar.f8545a)) {
                String str = dVar.f8546b;
                if (str != null) {
                    Matcher matcher = f8535b.matcher(str);
                    if (matcher.matches()) {
                        return Integer.parseInt(matcher.group(1));
                    }
                    p.d("MpdParser", "Unable to parse CEA-608 channel number from: " + dVar.f8546b);
                } else {
                    continue;
                }
            }
        }
        return -1;
    }

    public static float a(XmlPullParser xmlPullParser, float f2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, "frameRate");
        if (attributeValue == null) {
            return f2;
        }
        Matcher matcher = f8534a.matcher(attributeValue);
        if (!matcher.matches()) {
            return f2;
        }
        int parseInt = Integer.parseInt(matcher.group(1));
        String group = matcher.group(2);
        return !TextUtils.isEmpty(group) ? ((float) parseInt) / ((float) Integer.parseInt(group)) : (float) parseInt;
    }

    public static long a(XmlPullParser xmlPullParser, String str, long j2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue == null) {
            return j2;
        }
        return I.i(attributeValue);
    }

    public static String a(XmlPullParser xmlPullParser, String str) {
        xmlPullParser.next();
        return H.a(str, xmlPullParser.getText());
    }

    public static int a(XmlPullParser xmlPullParser, String str, int i2) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        return attributeValue == null ? i2 : Integer.parseInt(attributeValue);
    }
}
