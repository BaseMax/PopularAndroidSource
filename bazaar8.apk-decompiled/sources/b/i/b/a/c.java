package b.i.b.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import b.i.g;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: FontResourcesParserCompat */
public class c {

    /* compiled from: FontResourcesParserCompat */
    public interface a {
    }

    /* compiled from: FontResourcesParserCompat */
    public static final class b implements a {

        /* renamed from: a  reason: collision with root package name */
        public final C0028c[] f2603a;

        public b(C0028c[] cVarArr) {
            this.f2603a = cVarArr;
        }

        public C0028c[] a() {
            return this.f2603a;
        }
    }

    /* renamed from: b.i.b.a.c$c  reason: collision with other inner class name */
    /* compiled from: FontResourcesParserCompat */
    public static final class C0028c {

        /* renamed from: a  reason: collision with root package name */
        public final String f2604a;

        /* renamed from: b  reason: collision with root package name */
        public int f2605b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f2606c;

        /* renamed from: d  reason: collision with root package name */
        public String f2607d;

        /* renamed from: e  reason: collision with root package name */
        public int f2608e;

        /* renamed from: f  reason: collision with root package name */
        public int f2609f;

        public C0028c(String str, int i2, boolean z, String str2, int i3, int i4) {
            this.f2604a = str;
            this.f2605b = i2;
            this.f2606c = z;
            this.f2607d = str2;
            this.f2608e = i3;
            this.f2609f = i4;
        }

        public String a() {
            return this.f2604a;
        }

        public int b() {
            return this.f2609f;
        }

        public int c() {
            return this.f2608e;
        }

        public String d() {
            return this.f2607d;
        }

        public int e() {
            return this.f2605b;
        }

        public boolean f() {
            return this.f2606c;
        }
    }

    /* compiled from: FontResourcesParserCompat */
    public static final class d implements a {

        /* renamed from: a  reason: collision with root package name */
        public final b.i.h.a f2610a;

        /* renamed from: b  reason: collision with root package name */
        public final int f2611b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2612c;

        public d(b.i.h.a aVar, int i2, int i3) {
            this.f2610a = aVar;
            this.f2612c = i2;
            this.f2611b = i3;
        }

        public int a() {
            return this.f2612c;
        }

        public b.i.h.a b() {
            return this.f2610a;
        }

        public int c() {
            return this.f2611b;
        }
    }

    public static a a(XmlPullParser xmlPullParser, Resources resources) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return b(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static a b(XmlPullParser xmlPullParser, Resources resources) {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return c(xmlPullParser, resources);
        }
        a(xmlPullParser);
        return null;
    }

    public static a c(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), g.FontFamily);
        String string = obtainAttributes.getString(g.FontFamily_fontProviderAuthority);
        String string2 = obtainAttributes.getString(g.FontFamily_fontProviderPackage);
        String string3 = obtainAttributes.getString(g.FontFamily_fontProviderQuery);
        int resourceId = obtainAttributes.getResourceId(g.FontFamily_fontProviderCerts, 0);
        int integer = obtainAttributes.getInteger(g.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = obtainAttributes.getInteger(g.FontFamily_fontProviderFetchTimeout, 500);
        obtainAttributes.recycle();
        if (string == null || string2 == null || string3 == null) {
            ArrayList arrayList = new ArrayList();
            while (xmlPullParser.next() != 3) {
                if (xmlPullParser.getEventType() == 2) {
                    if (xmlPullParser.getName().equals("font")) {
                        arrayList.add(d(xmlPullParser, resources));
                    } else {
                        a(xmlPullParser);
                    }
                }
            }
            if (arrayList.isEmpty()) {
                return null;
            }
            return new b((C0028c[]) arrayList.toArray(new C0028c[arrayList.size()]));
        }
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        return new d(new b.i.h.a(string, string2, string3, a(resources, resourceId)), integer, integer2);
    }

    public static C0028c d(XmlPullParser xmlPullParser, Resources resources) {
        TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), g.FontFamilyFont);
        int i2 = obtainAttributes.getInt(obtainAttributes.hasValue(g.FontFamilyFont_fontWeight) ? g.FontFamilyFont_fontWeight : g.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == obtainAttributes.getInt(obtainAttributes.hasValue(g.FontFamilyFont_fontStyle) ? g.FontFamilyFont_fontStyle : g.FontFamilyFont_android_fontStyle, 0);
        int i3 = obtainAttributes.hasValue(g.FontFamilyFont_ttcIndex) ? g.FontFamilyFont_ttcIndex : g.FontFamilyFont_android_ttcIndex;
        String string = obtainAttributes.getString(obtainAttributes.hasValue(g.FontFamilyFont_fontVariationSettings) ? g.FontFamilyFont_fontVariationSettings : g.FontFamilyFont_android_fontVariationSettings);
        int i4 = obtainAttributes.getInt(i3, 0);
        int i5 = obtainAttributes.hasValue(g.FontFamilyFont_font) ? g.FontFamilyFont_font : g.FontFamilyFont_android_font;
        int resourceId = obtainAttributes.getResourceId(i5, 0);
        String string2 = obtainAttributes.getString(i5);
        obtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            a(xmlPullParser);
        }
        C0028c cVar = new C0028c(string2, i2, z, string, i4, resourceId);
        return cVar;
    }

    public static int a(TypedArray typedArray, int i2) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i2);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i2, typedValue);
        return typedValue.type;
    }

    public static List<List<byte[]>> a(Resources resources, int i2) {
        if (i2 == 0) {
            return Collections.emptyList();
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(obtainTypedArray, 0) == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        arrayList.add(a(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(a(resources.getStringArray(i2)));
            }
            obtainTypedArray.recycle();
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static List<byte[]> a(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String decode : strArr) {
            arrayList.add(Base64.decode(decode, 0));
        }
        return arrayList;
    }

    public static void a(XmlPullParser xmlPullParser) {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i2++;
            } else if (next == 3) {
                i2--;
            }
        }
    }
}
