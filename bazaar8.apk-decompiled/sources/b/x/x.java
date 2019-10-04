package b.x;

import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.SwitchPreference;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: PreferenceInflater */
public class x {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?>[] f3387a = {Context.class, AttributeSet.class};

    /* renamed from: b  reason: collision with root package name */
    public static final HashMap<String, Constructor> f3388b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    public final Context f3389c;

    /* renamed from: d  reason: collision with root package name */
    public final Object[] f3390d = new Object[2];

    /* renamed from: e  reason: collision with root package name */
    public y f3391e;

    /* renamed from: f  reason: collision with root package name */
    public String[] f3392f;

    public x(Context context, y yVar) {
        this.f3389c = context;
        a(yVar);
    }

    public final void a(y yVar) {
        this.f3391e = yVar;
        a(new String[]{Preference.class.getPackage().getName() + ".", SwitchPreference.class.getPackage().getName() + "."});
    }

    public Preference b(String str, AttributeSet attributeSet) {
        return a(str, this.f3392f, attributeSet);
    }

    public void a(String[] strArr) {
        this.f3392f = strArr;
    }

    public Context a() {
        return this.f3389c;
    }

    public Preference a(int i2, PreferenceGroup preferenceGroup) {
        XmlResourceParser xml = a().getResources().getXml(i2);
        try {
            return a((XmlPullParser) xml, preferenceGroup);
        } finally {
            xml.close();
        }
    }

    public Preference a(XmlPullParser xmlPullParser, PreferenceGroup preferenceGroup) {
        int next;
        PreferenceGroup a2;
        synchronized (this.f3390d) {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
            this.f3390d[0] = this.f3389c;
            do {
                try {
                    next = xmlPullParser.next();
                    if (next == 2) {
                        break;
                    }
                } catch (InflateException e2) {
                    throw e2;
                } catch (XmlPullParserException e3) {
                    InflateException inflateException = new InflateException(e3.getMessage());
                    inflateException.initCause(e3);
                    throw inflateException;
                } catch (IOException e4) {
                    InflateException inflateException2 = new InflateException(xmlPullParser.getPositionDescription() + ": " + e4.getMessage());
                    inflateException2.initCause(e4);
                    throw inflateException2;
                }
            } while (next != 1);
            if (next == 2) {
                a2 = a(preferenceGroup, (PreferenceGroup) a(xmlPullParser.getName(), asAttributeSet));
                a(xmlPullParser, (Preference) a2, asAttributeSet);
            } else {
                throw new InflateException(xmlPullParser.getPositionDescription() + ": No start tag found!");
            }
        }
        return a2;
    }

    public final PreferenceGroup a(PreferenceGroup preferenceGroup, PreferenceGroup preferenceGroup2) {
        if (preferenceGroup != null) {
            return preferenceGroup;
        }
        preferenceGroup2.a(this.f3391e);
        return preferenceGroup2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0077, code lost:
        r11 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0078, code lost:
        r0 = new android.view.InflateException(r12.getPositionDescription() + ": Error inflating class " + r10);
        r0.initCause(r11);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0096, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0097, code lost:
        r10 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0099, code lost:
        throw r10;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0077 A[ExcHandler: Exception (r11v4 'e' java.lang.Exception A[CUSTOM_DECLARE]), Splitter:B:2:0x000d] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final androidx.preference.Preference a(java.lang.String r10, java.lang.String[] r11, android.util.AttributeSet r12) {
        /*
            r9 = this;
            java.util.HashMap<java.lang.String, java.lang.reflect.Constructor> r0 = f3388b
            java.lang.Object r0 = r0.get(r10)
            java.lang.reflect.Constructor r0 = (java.lang.reflect.Constructor) r0
            java.lang.String r1 = ": Error inflating class "
            r2 = 1
            if (r0 != 0) goto L_0x006c
            android.content.Context r0 = r9.f3389c     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.ClassLoader r0 = r0.getClassLoader()     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            if (r11 == 0) goto L_0x005a
            int r3 = r11.length     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            if (r3 != 0) goto L_0x0019
            goto L_0x005a
        L_0x0019:
            int r3 = r11.length     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r4 = 0
            r5 = 0
            r6 = r5
        L_0x001d:
            if (r4 >= r3) goto L_0x0039
            r7 = r11[r4]     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch:{ ClassNotFoundException -> 0x0035, Exception -> 0x0077 }
            r8.<init>()     // Catch:{ ClassNotFoundException -> 0x0035, Exception -> 0x0077 }
            r8.append(r7)     // Catch:{ ClassNotFoundException -> 0x0035, Exception -> 0x0077 }
            r8.append(r10)     // Catch:{ ClassNotFoundException -> 0x0035, Exception -> 0x0077 }
            java.lang.String r7 = r8.toString()     // Catch:{ ClassNotFoundException -> 0x0035, Exception -> 0x0077 }
            java.lang.Class r5 = r0.loadClass(r7)     // Catch:{ ClassNotFoundException -> 0x0035, Exception -> 0x0077 }
            goto L_0x0039
        L_0x0035:
            r6 = move-exception
            int r4 = r4 + 1
            goto L_0x001d
        L_0x0039:
            if (r5 != 0) goto L_0x005e
            if (r6 != 0) goto L_0x0059
            android.view.InflateException r11 = new android.view.InflateException     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r0.<init>()     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.String r2 = r12.getPositionDescription()     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r0.append(r2)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r0.append(r1)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r0.append(r10)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.String r0 = r0.toString()     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r11.<init>(r0)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            throw r11     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
        L_0x0059:
            throw r6     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
        L_0x005a:
            java.lang.Class r5 = r0.loadClass(r10)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
        L_0x005e:
            java.lang.Class<?>[] r11 = f3387a     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.reflect.Constructor r0 = r5.getConstructor(r11)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r0.setAccessible(r2)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.util.HashMap<java.lang.String, java.lang.reflect.Constructor> r11 = f3388b     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r11.put(r10, r0)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
        L_0x006c:
            java.lang.Object[] r11 = r9.f3390d     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            r11[r2] = r12     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            java.lang.Object r11 = r0.newInstance(r11)     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            androidx.preference.Preference r11 = (androidx.preference.Preference) r11     // Catch:{ ClassNotFoundException -> 0x0097, Exception -> 0x0077 }
            return r11
        L_0x0077:
            r11 = move-exception
            android.view.InflateException r0 = new android.view.InflateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r12 = r12.getPositionDescription()
            r2.append(r12)
            r2.append(r1)
            r2.append(r10)
            java.lang.String r10 = r2.toString()
            r0.<init>(r10)
            r0.initCause(r11)
            throw r0
        L_0x0097:
            r10 = move-exception
            goto L_0x009a
        L_0x0099:
            throw r10
        L_0x009a:
            goto L_0x0099
        */
        throw new UnsupportedOperationException("Method not decompiled: b.x.x.a(java.lang.String, java.lang.String[], android.util.AttributeSet):androidx.preference.Preference");
    }

    public final Preference a(String str, AttributeSet attributeSet) {
        try {
            if (-1 == str.indexOf(46)) {
                return b(str, attributeSet);
            }
            return a(str, (String[]) null, attributeSet);
        } catch (InflateException e2) {
            throw e2;
        } catch (ClassNotFoundException e3) {
            InflateException inflateException = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class (not found)" + str);
            inflateException.initCause(e3);
            throw inflateException;
        } catch (Exception e4) {
            InflateException inflateException2 = new InflateException(attributeSet.getPositionDescription() + ": Error inflating class " + str);
            inflateException2.initCause(e4);
            throw inflateException2;
        }
    }

    public final void a(XmlPullParser xmlPullParser, Preference preference, AttributeSet attributeSet) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                String name = xmlPullParser.getName();
                if ("intent".equals(name)) {
                    try {
                        preference.a(Intent.parseIntent(a().getResources(), xmlPullParser, attributeSet));
                    } catch (IOException e2) {
                        XmlPullParserException xmlPullParserException = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException.initCause(e2);
                        throw xmlPullParserException;
                    }
                } else if ("extra".equals(name)) {
                    a().getResources().parseBundleExtra("extra", attributeSet, preference.i());
                    try {
                        a(xmlPullParser);
                    } catch (IOException e3) {
                        XmlPullParserException xmlPullParserException2 = new XmlPullParserException("Error parsing preference");
                        xmlPullParserException2.initCause(e3);
                        throw xmlPullParserException2;
                    }
                } else {
                    Preference a2 = a(name, attributeSet);
                    ((PreferenceGroup) preference).d(a2);
                    a(xmlPullParser, a2, attributeSet);
                }
            }
        }
    }

    public static void a(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1) {
                return;
            }
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                return;
            }
        }
    }
}
