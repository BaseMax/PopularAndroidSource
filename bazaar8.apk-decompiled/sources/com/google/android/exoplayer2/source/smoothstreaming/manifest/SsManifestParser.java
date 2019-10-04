package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Pair;
import c.e.a.a.e.e.l;
import c.e.a.a.e.e.o;
import c.e.a.a.j.e.a.a;
import c.e.a.a.n.y;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.C0739g;
import c.e.a.a.o.I;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

public class SsManifestParser implements y.a<c.e.a.a.j.e.a.a> {

    /* renamed from: a  reason: collision with root package name */
    public final XmlPullParserFactory f12729a;

    public static class MissingFieldException extends ParserException {
        public MissingFieldException(String str) {
            super("Missing required field: " + str);
        }
    }

    private static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f12730a;

        /* renamed from: b  reason: collision with root package name */
        public final String f12731b;

        /* renamed from: c  reason: collision with root package name */
        public final a f12732c;

        /* renamed from: d  reason: collision with root package name */
        public final List<Pair<String, Object>> f12733d = new LinkedList();

        public a(a aVar, String str, String str2) {
            this.f12732c = aVar;
            this.f12730a = str;
            this.f12731b = str2;
        }

        public abstract Object a();

        public final Object a(XmlPullParser xmlPullParser) {
            boolean z = false;
            int i2 = 0;
            while (true) {
                int eventType = xmlPullParser.getEventType();
                if (eventType == 1) {
                    return null;
                }
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (this.f12731b.equals(name)) {
                        c(xmlPullParser);
                        z = true;
                    } else if (z) {
                        if (i2 > 0) {
                            i2++;
                        } else if (b(name)) {
                            c(xmlPullParser);
                        } else {
                            a a2 = a(this, name, this.f12730a);
                            if (a2 == null) {
                                i2 = 1;
                            } else {
                                a(a2.a(xmlPullParser));
                            }
                        }
                    }
                } else if (eventType != 3) {
                    if (eventType == 4 && z && i2 == 0) {
                        d(xmlPullParser);
                    }
                } else if (!z) {
                    continue;
                } else if (i2 > 0) {
                    i2--;
                } else {
                    String name2 = xmlPullParser.getName();
                    b(xmlPullParser);
                    if (!b(name2)) {
                        return a();
                    }
                }
                xmlPullParser.next();
            }
        }

        public void a(Object obj) {
        }

        public final long b(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Long.parseLong(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new ParserException((Throwable) e2);
                }
            } else {
                throw new MissingFieldException(str);
            }
        }

        public void b(XmlPullParser xmlPullParser) {
        }

        public boolean b(String str) {
            return false;
        }

        public final String c(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                return attributeValue;
            }
            throw new MissingFieldException(str);
        }

        public abstract void c(XmlPullParser xmlPullParser);

        public void d(XmlPullParser xmlPullParser) {
        }

        public final a a(a aVar, String str, String str2) {
            if ("QualityLevel".equals(str)) {
                return new c(aVar, str2);
            }
            if ("Protection".equals(str)) {
                return new b(aVar, str2);
            }
            if ("StreamIndex".equals(str)) {
                return new e(aVar, str2);
            }
            return null;
        }

        public final void a(String str, Object obj) {
            this.f12733d.add(Pair.create(str, obj));
        }

        public final Object a(String str) {
            for (int i2 = 0; i2 < this.f12733d.size(); i2++) {
                Pair pair = this.f12733d.get(i2);
                if (((String) pair.first).equals(str)) {
                    return pair.second;
                }
            }
            a aVar = this.f12732c;
            return aVar == null ? null : aVar.a(str);
        }

        public final int a(XmlPullParser xmlPullParser, String str, int i2) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return i2;
            }
            try {
                return Integer.parseInt(attributeValue);
            } catch (NumberFormatException e2) {
                throw new ParserException((Throwable) e2);
            }
        }

        public final int a(XmlPullParser xmlPullParser, String str) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue != null) {
                try {
                    return Integer.parseInt(attributeValue);
                } catch (NumberFormatException e2) {
                    throw new ParserException((Throwable) e2);
                }
            } else {
                throw new MissingFieldException(str);
            }
        }

        public final long a(XmlPullParser xmlPullParser, String str, long j2) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            if (attributeValue == null) {
                return j2;
            }
            try {
                return Long.parseLong(attributeValue);
            } catch (NumberFormatException e2) {
                throw new ParserException((Throwable) e2);
            }
        }

        public final boolean a(XmlPullParser xmlPullParser, String str, boolean z) {
            String attributeValue = xmlPullParser.getAttributeValue(null, str);
            return attributeValue != null ? Boolean.parseBoolean(attributeValue) : z;
        }
    }

    private static class b extends a {

        /* renamed from: e  reason: collision with root package name */
        public boolean f12734e;

        /* renamed from: f  reason: collision with root package name */
        public UUID f12735f;

        /* renamed from: g  reason: collision with root package name */
        public byte[] f12736g;

        public b(a aVar, String str) {
            super(aVar, str, "Protection");
        }

        public Object a() {
            UUID uuid = this.f12735f;
            return new a.C0111a(uuid, l.a(uuid, this.f12736g), a(this.f12736g));
        }

        public boolean b(String str) {
            return "ProtectionHeader".equals(str);
        }

        public void c(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f12734e = true;
                this.f12735f = UUID.fromString(c(xmlPullParser.getAttributeValue(null, "SystemID")));
            }
        }

        public void d(XmlPullParser xmlPullParser) {
            if (this.f12734e) {
                this.f12736g = Base64.decode(xmlPullParser.getText(), 0);
            }
        }

        public void b(XmlPullParser xmlPullParser) {
            if ("ProtectionHeader".equals(xmlPullParser.getName())) {
                this.f12734e = false;
            }
        }

        public static o[] a(byte[] bArr) {
            o oVar = new o(true, null, 8, b(bArr), 0, 0, null);
            return new o[]{oVar};
        }

        public static byte[] b(byte[] bArr) {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < bArr.length; i2 += 2) {
                sb.append((char) bArr[i2]);
            }
            String sb2 = sb.toString();
            byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
            a(decode, 0, 3);
            a(decode, 1, 2);
            a(decode, 4, 5);
            a(decode, 6, 7);
            return decode;
        }

        public static void a(byte[] bArr, int i2, int i3) {
            byte b2 = bArr[i2];
            bArr[i2] = bArr[i3];
            bArr[i3] = b2;
        }

        public static String c(String str) {
            return (str.charAt(0) == '{' && str.charAt(str.length() - 1) == '}') ? str.substring(1, str.length() - 1) : str;
        }
    }

    private static class c extends a {

        /* renamed from: e  reason: collision with root package name */
        public Format f12737e;

        public c(a aVar, String str) {
            super(aVar, str, "QualityLevel");
        }

        public static String d(String str) {
            if (str.equalsIgnoreCase("H264") || str.equalsIgnoreCase("X264") || str.equalsIgnoreCase("AVC1") || str.equalsIgnoreCase("DAVC")) {
                return "video/avc";
            }
            if (str.equalsIgnoreCase("AAC") || str.equalsIgnoreCase("AACL") || str.equalsIgnoreCase("AACH") || str.equalsIgnoreCase("AACP")) {
                return "audio/mp4a-latm";
            }
            if (str.equalsIgnoreCase("TTML") || str.equalsIgnoreCase("DFXP")) {
                return "application/ttml+xml";
            }
            if (str.equalsIgnoreCase("ac-3") || str.equalsIgnoreCase("dac3")) {
                return "audio/ac3";
            }
            if (str.equalsIgnoreCase("ec-3") || str.equalsIgnoreCase("dec3")) {
                return "audio/eac3";
            }
            if (str.equalsIgnoreCase("dtsc")) {
                return "audio/vnd.dts";
            }
            if (str.equalsIgnoreCase("dtsh") || str.equalsIgnoreCase("dtsl")) {
                return "audio/vnd.dts.hd";
            }
            if (str.equalsIgnoreCase("dtse")) {
                return "audio/vnd.dts.hd;profile=lbr";
            }
            if (str.equalsIgnoreCase("opus")) {
                return "audio/opus";
            }
            return null;
        }

        public Object a() {
            return this.f12737e;
        }

        public void c(XmlPullParser xmlPullParser) {
            XmlPullParser xmlPullParser2 = xmlPullParser;
            int intValue = ((Integer) a("Type")).intValue();
            String attributeValue = xmlPullParser2.getAttributeValue(null, "Index");
            String str = (String) a("Name");
            int a2 = a(xmlPullParser2, "Bitrate");
            String d2 = d(c(xmlPullParser2, "FourCC"));
            if (intValue == 2) {
                this.f12737e = Format.a(attributeValue, str, "video/mp4", d2, (String) null, a2, a(xmlPullParser2, "MaxWidth"), a(xmlPullParser2, "MaxHeight"), -1.0f, c(xmlPullParser2.getAttributeValue(null, "CodecPrivateData")), 0, 0);
            } else if (intValue == 1) {
                if (d2 == null) {
                    d2 = "audio/mp4a-latm";
                }
                int a3 = a(xmlPullParser2, "Channels");
                int a4 = a(xmlPullParser2, "SamplingRate");
                List<byte[]> c2 = c(xmlPullParser2.getAttributeValue(null, "CodecPrivateData"));
                if (c2.isEmpty() && "audio/mp4a-latm".equals(d2)) {
                    c2 = Collections.singletonList(C0739g.a(a4, a3));
                }
                this.f12737e = Format.a(attributeValue, str, "audio/mp4", d2, (String) null, a2, a3, a4, c2, 0, 0, (String) a("Language"));
            } else if (intValue == 3) {
                this.f12737e = Format.b(attributeValue, str, "application/mp4", d2, null, a2, 0, 0, (String) a("Language"));
            } else {
                this.f12737e = Format.a(attributeValue, str, "application/mp4", d2, null, a2, 0, 0, null);
            }
        }

        public static List<byte[]> c(String str) {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(str)) {
                byte[] a2 = I.a(str);
                byte[][] b2 = C0739g.b(a2);
                if (b2 == null) {
                    arrayList.add(a2);
                } else {
                    Collections.addAll(arrayList, b2);
                }
            }
            return arrayList;
        }
    }

    private static class d extends a {

        /* renamed from: e  reason: collision with root package name */
        public final List<a.b> f12738e = new LinkedList();

        /* renamed from: f  reason: collision with root package name */
        public int f12739f;

        /* renamed from: g  reason: collision with root package name */
        public int f12740g;

        /* renamed from: h  reason: collision with root package name */
        public long f12741h;

        /* renamed from: i  reason: collision with root package name */
        public long f12742i;

        /* renamed from: j  reason: collision with root package name */
        public long f12743j;

        /* renamed from: k  reason: collision with root package name */
        public int f12744k = -1;

        /* renamed from: l  reason: collision with root package name */
        public boolean f12745l;
        public a.C0111a m = null;

        public d(a aVar, String str) {
            super(aVar, str, "SmoothStreamingMedia");
        }

        public void a(Object obj) {
            if (obj instanceof a.b) {
                this.f12738e.add((a.b) obj);
            } else if (obj instanceof a.C0111a) {
                C0737e.b(this.m == null);
                this.m = (a.C0111a) obj;
            }
        }

        public void c(XmlPullParser xmlPullParser) {
            this.f12739f = a(xmlPullParser, "MajorVersion");
            this.f12740g = a(xmlPullParser, "MinorVersion");
            this.f12741h = a(xmlPullParser, "TimeScale", 10000000);
            this.f12742i = b(xmlPullParser, "Duration");
            this.f12743j = a(xmlPullParser, "DVRWindowLength", 0);
            this.f12744k = a(xmlPullParser, "LookaheadCount", -1);
            this.f12745l = a(xmlPullParser, "IsLive", false);
            a("TimeScale", (Object) Long.valueOf(this.f12741h));
        }

        public Object a() {
            a.b[] bVarArr = new a.b[this.f12738e.size()];
            this.f12738e.toArray(bVarArr);
            a.C0111a aVar = this.m;
            if (aVar != null) {
                DrmInitData drmInitData = new DrmInitData(new DrmInitData.SchemeData(aVar.f8872a, "video/mp4", aVar.f8873b));
                for (a.b bVar : bVarArr) {
                    int i2 = bVar.f8875a;
                    if (i2 == 2 || i2 == 1) {
                        Format[] formatArr = bVar.f8884j;
                        for (int i3 = 0; i3 < formatArr.length; i3++) {
                            formatArr[i3] = formatArr[i3].a(drmInitData);
                        }
                    }
                }
            }
            c.e.a.a.j.e.a.a aVar2 = new c.e.a.a.j.e.a.a(this.f12739f, this.f12740g, this.f12741h, this.f12742i, this.f12743j, this.f12744k, this.f12745l, this.m, bVarArr);
            return aVar2;
        }
    }

    private static class e extends a {

        /* renamed from: e  reason: collision with root package name */
        public final String f12746e;

        /* renamed from: f  reason: collision with root package name */
        public final List<Format> f12747f = new LinkedList();

        /* renamed from: g  reason: collision with root package name */
        public int f12748g;

        /* renamed from: h  reason: collision with root package name */
        public String f12749h;

        /* renamed from: i  reason: collision with root package name */
        public long f12750i;

        /* renamed from: j  reason: collision with root package name */
        public String f12751j;

        /* renamed from: k  reason: collision with root package name */
        public String f12752k;

        /* renamed from: l  reason: collision with root package name */
        public int f12753l;
        public int m;
        public int n;
        public int o;
        public String p;
        public ArrayList<Long> q;
        public long r;

        public e(a aVar, String str) {
            super(aVar, str, "StreamIndex");
            this.f12746e = str;
        }

        public void a(Object obj) {
            if (obj instanceof Format) {
                this.f12747f.add((Format) obj);
            }
        }

        public boolean b(String str) {
            return "c".equals(str);
        }

        public void c(XmlPullParser xmlPullParser) {
            if ("c".equals(xmlPullParser.getName())) {
                f(xmlPullParser);
            } else {
                e(xmlPullParser);
            }
        }

        public final void e(XmlPullParser xmlPullParser) {
            this.f12748g = g(xmlPullParser);
            a("Type", (Object) Integer.valueOf(this.f12748g));
            if (this.f12748g == 3) {
                this.f12749h = c(xmlPullParser, "Subtype");
            } else {
                this.f12749h = xmlPullParser.getAttributeValue(null, "Subtype");
            }
            this.f12751j = xmlPullParser.getAttributeValue(null, "Name");
            this.f12752k = c(xmlPullParser, "Url");
            this.f12753l = a(xmlPullParser, "MaxWidth", -1);
            this.m = a(xmlPullParser, "MaxHeight", -1);
            this.n = a(xmlPullParser, "DisplayWidth", -1);
            this.o = a(xmlPullParser, "DisplayHeight", -1);
            this.p = xmlPullParser.getAttributeValue(null, "Language");
            a("Language", (Object) this.p);
            this.f12750i = (long) a(xmlPullParser, "TimeScale", -1);
            if (this.f12750i == -1) {
                this.f12750i = ((Long) a("TimeScale")).longValue();
            }
            this.q = new ArrayList<>();
        }

        public final void f(XmlPullParser xmlPullParser) {
            int size = this.q.size();
            long a2 = a(xmlPullParser, "t", -9223372036854775807L);
            int i2 = 1;
            if (a2 == -9223372036854775807L) {
                if (size == 0) {
                    a2 = 0;
                } else if (this.r != -1) {
                    a2 = this.q.get(size - 1).longValue() + this.r;
                } else {
                    throw new ParserException("Unable to infer start time");
                }
            }
            this.q.add(Long.valueOf(a2));
            this.r = a(xmlPullParser, "d", -9223372036854775807L);
            long a3 = a(xmlPullParser, "r", 1);
            if (a3 <= 1 || this.r != -9223372036854775807L) {
                while (true) {
                    long j2 = (long) i2;
                    if (j2 < a3) {
                        this.q.add(Long.valueOf((this.r * j2) + a2));
                        i2++;
                    } else {
                        return;
                    }
                }
            } else {
                throw new ParserException("Repeated chunk with unspecified duration");
            }
        }

        public final int g(XmlPullParser xmlPullParser) {
            String attributeValue = xmlPullParser.getAttributeValue(null, "Type");
            if (attributeValue == null) {
                throw new MissingFieldException("Type");
            } else if ("audio".equalsIgnoreCase(attributeValue)) {
                return 1;
            } else {
                if ("video".equalsIgnoreCase(attributeValue)) {
                    return 2;
                }
                if ("text".equalsIgnoreCase(attributeValue)) {
                    return 3;
                }
                throw new ParserException("Invalid key value[" + attributeValue + "]");
            }
        }

        public Object a() {
            Format[] formatArr = new Format[this.f12747f.size()];
            this.f12747f.toArray(formatArr);
            a.b bVar = r2;
            a.b bVar2 = new a.b(this.f12746e, this.f12752k, this.f12748g, this.f12749h, this.f12750i, this.f12751j, this.f12753l, this.m, this.n, this.o, this.p, formatArr, this.q, this.r);
            return bVar;
        }
    }

    public SsManifestParser() {
        try {
            this.f12729a = XmlPullParserFactory.newInstance();
        } catch (XmlPullParserException e2) {
            throw new RuntimeException("Couldn't create XmlPullParserFactory instance", e2);
        }
    }

    public c.e.a.a.j.e.a.a a(Uri uri, InputStream inputStream) {
        try {
            XmlPullParser newPullParser = this.f12729a.newPullParser();
            newPullParser.setInput(inputStream, null);
            return (c.e.a.a.j.e.a.a) new d(null, uri.toString()).a(newPullParser);
        } catch (XmlPullParserException e2) {
            throw new ParserException((Throwable) e2);
        }
    }
}
