package b.i.b.a;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import b.i.g;
import com.crashlytics.android.answers.SessionEventTransform;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: GradientColorInflaterCompat */
public final class d {

    /* compiled from: GradientColorInflaterCompat */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int[] f2613a;

        /* renamed from: b  reason: collision with root package name */
        public final float[] f2614b;

        public a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f2613a = new int[size];
            this.f2614b = new float[size];
            for (int i2 = 0; i2 < size; i2++) {
                this.f2613a[i2] = list.get(i2).intValue();
                this.f2614b[i2] = list2.get(i2).floatValue();
            }
        }

        public a(int i2, int i3) {
            this.f2613a = new int[]{i2, i3};
            this.f2614b = new float[]{0.0f, 1.0f};
        }

        public a(int i2, int i3, int i4) {
            this.f2613a = new int[]{i2, i3, i4};
            this.f2614b = new float[]{0.0f, 0.5f, 1.0f};
        }
    }

    public static Shader a(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
        XmlPullParser xmlPullParser2 = xmlPullParser;
        String name = xmlPullParser.getName();
        if (name.equals("gradient")) {
            Resources.Theme theme2 = theme;
            TypedArray a2 = i.a(resources, theme2, attributeSet, g.GradientColor);
            float a3 = i.a(a2, xmlPullParser2, "startX", g.GradientColor_android_startX, 0.0f);
            float a4 = i.a(a2, xmlPullParser2, "startY", g.GradientColor_android_startY, 0.0f);
            float a5 = i.a(a2, xmlPullParser2, "endX", g.GradientColor_android_endX, 0.0f);
            float a6 = i.a(a2, xmlPullParser2, "endY", g.GradientColor_android_endY, 0.0f);
            float a7 = i.a(a2, xmlPullParser2, "centerX", g.GradientColor_android_centerX, 0.0f);
            float a8 = i.a(a2, xmlPullParser2, "centerY", g.GradientColor_android_centerY, 0.0f);
            int b2 = i.b(a2, xmlPullParser2, SessionEventTransform.TYPE_KEY, g.GradientColor_android_type, 0);
            int a9 = i.a(a2, xmlPullParser2, "startColor", g.GradientColor_android_startColor, 0);
            boolean a10 = i.a(xmlPullParser2, "centerColor");
            int a11 = i.a(a2, xmlPullParser2, "centerColor", g.GradientColor_android_centerColor, 0);
            int a12 = i.a(a2, xmlPullParser2, "endColor", g.GradientColor_android_endColor, 0);
            int b3 = i.b(a2, xmlPullParser2, "tileMode", g.GradientColor_android_tileMode, 0);
            float f2 = a7;
            float a13 = i.a(a2, xmlPullParser2, "gradientRadius", g.GradientColor_android_gradientRadius, 0.0f);
            a2.recycle();
            a a14 = a(b(resources, xmlPullParser, attributeSet, theme), a9, a12, a10, a11);
            if (b2 == 1) {
                float f3 = f2;
                if (a13 > 0.0f) {
                    int[] iArr = a14.f2613a;
                    RadialGradient radialGradient = new RadialGradient(f3, a8, a13, iArr, a14.f2614b, a(b3));
                    return radialGradient;
                }
                throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
            } else if (b2 != 2) {
                LinearGradient linearGradient = new LinearGradient(a3, a4, a5, a6, a14.f2613a, a14.f2614b, a(b3));
                return linearGradient;
            } else {
                return new SweepGradient(f2, a8, a14.f2613a, a14.f2614b);
            }
        } else {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0084, code lost:
        throw new org.xmlpull.v1.XmlPullParserException(r9.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static b.i.b.a.d.a b(android.content.res.Resources r8, org.xmlpull.v1.XmlPullParser r9, android.util.AttributeSet r10, android.content.res.Resources.Theme r11) {
        /*
            int r0 = r9.getDepth()
            r1 = 1
            int r0 = r0 + r1
            java.util.ArrayList r2 = new java.util.ArrayList
            r3 = 20
            r2.<init>(r3)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>(r3)
        L_0x0012:
            int r3 = r9.next()
            if (r3 == r1) goto L_0x0085
            int r5 = r9.getDepth()
            if (r5 >= r0) goto L_0x0021
            r6 = 3
            if (r3 == r6) goto L_0x0085
        L_0x0021:
            r6 = 2
            if (r3 == r6) goto L_0x0025
            goto L_0x0012
        L_0x0025:
            if (r5 > r0) goto L_0x0012
            java.lang.String r3 = r9.getName()
            java.lang.String r5 = "item"
            boolean r3 = r3.equals(r5)
            if (r3 != 0) goto L_0x0034
            goto L_0x0012
        L_0x0034:
            int[] r3 = b.i.g.GradientColorItem
            android.content.res.TypedArray r3 = b.i.b.a.i.a((android.content.res.Resources) r8, (android.content.res.Resources.Theme) r11, (android.util.AttributeSet) r10, (int[]) r3)
            int r5 = b.i.g.GradientColorItem_android_color
            boolean r5 = r3.hasValue(r5)
            int r6 = b.i.g.GradientColorItem_android_offset
            boolean r6 = r3.hasValue(r6)
            if (r5 == 0) goto L_0x006a
            if (r6 == 0) goto L_0x006a
            int r5 = b.i.g.GradientColorItem_android_color
            r6 = 0
            int r5 = r3.getColor(r5, r6)
            int r6 = b.i.g.GradientColorItem_android_offset
            r7 = 0
            float r6 = r3.getFloat(r6, r7)
            r3.recycle()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r5)
            r4.add(r3)
            java.lang.Float r3 = java.lang.Float.valueOf(r6)
            r2.add(r3)
            goto L_0x0012
        L_0x006a:
            org.xmlpull.v1.XmlPullParserException r8 = new org.xmlpull.v1.XmlPullParserException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            java.lang.String r9 = r9.getPositionDescription()
            r10.append(r9)
            java.lang.String r9 = ": <item> tag requires a 'color' attribute and a 'offset' attribute!"
            r10.append(r9)
            java.lang.String r9 = r10.toString()
            r8.<init>(r9)
            throw r8
        L_0x0085:
            int r8 = r4.size()
            if (r8 <= 0) goto L_0x0091
            b.i.b.a.d$a r8 = new b.i.b.a.d$a
            r8.<init>((java.util.List<java.lang.Integer>) r4, (java.util.List<java.lang.Float>) r2)
            return r8
        L_0x0091:
            r8 = 0
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: b.i.b.a.d.b(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):b.i.b.a.d$a");
    }

    public static a a(a aVar, int i2, int i3, boolean z, int i4) {
        if (aVar != null) {
            return aVar;
        }
        if (z) {
            return new a(i2, i4, i3);
        }
        return new a(i2, i3);
    }

    public static Shader.TileMode a(int i2) {
        if (i2 == 1) {
            return Shader.TileMode.REPEAT;
        }
        if (i2 != 2) {
            return Shader.TileMode.CLAMP;
        }
        return Shader.TileMode.MIRROR;
    }
}
