package c.e.a.a.k.h;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.AlignmentSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import c.e.a.a.k.h.f;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: WebvttCueParser */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f9272a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)(.*)?$");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f9273b = Pattern.compile("(\\S+?):(\\S+)");

    /* renamed from: c  reason: collision with root package name */
    public final StringBuilder f9274c = new StringBuilder();

    /* compiled from: WebvttCueParser */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final String[] f9275a = new String[0];

        /* renamed from: b  reason: collision with root package name */
        public final String f9276b;

        /* renamed from: c  reason: collision with root package name */
        public final int f9277c;

        /* renamed from: d  reason: collision with root package name */
        public final String f9278d;

        /* renamed from: e  reason: collision with root package name */
        public final String[] f9279e;

        public a(String str, int i2, String str2, String[] strArr) {
            this.f9277c = i2;
            this.f9276b = str;
            this.f9278d = str2;
            this.f9279e = strArr;
        }

        public static a a(String str, int i2) {
            String str2;
            String[] strArr;
            String trim = str.trim();
            if (trim.isEmpty()) {
                return null;
            }
            int indexOf = trim.indexOf(" ");
            if (indexOf == -1) {
                str2 = "";
            } else {
                String trim2 = trim.substring(indexOf).trim();
                trim = trim.substring(0, indexOf);
                str2 = trim2;
            }
            String[] a2 = I.a(trim, "\\.");
            String str3 = a2[0];
            if (a2.length > 1) {
                strArr = (String[]) Arrays.copyOfRange(a2, 1, a2.length);
            } else {
                strArr = f9275a;
            }
            return new a(str3, i2, str2, strArr);
        }

        public static a a() {
            return new a("", 0, "", new String[0]);
        }
    }

    /* compiled from: WebvttCueParser */
    private static final class b implements Comparable<b> {

        /* renamed from: a  reason: collision with root package name */
        public final int f9280a;

        /* renamed from: b  reason: collision with root package name */
        public final d f9281b;

        public b(int i2, d dVar) {
            this.f9280a = i2;
            this.f9281b = dVar;
        }

        /* renamed from: a */
        public int compareTo(b bVar) {
            return this.f9280a - bVar.f9280a;
        }
    }

    public static void b(String str, f.a aVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            aVar.a(c(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            aVar.a(Integer.MIN_VALUE);
        }
        if (str.endsWith("%")) {
            aVar.a(i.a(str));
            aVar.b(0);
            return;
        }
        int parseInt = Integer.parseInt(str);
        if (parseInt < 0) {
            parseInt--;
        }
        aVar.a((float) parseInt);
        aVar.b(1);
    }

    public static void c(String str, f.a aVar) {
        int indexOf = str.indexOf(44);
        if (indexOf != -1) {
            aVar.c(c(str.substring(indexOf + 1)));
            str = str.substring(0, indexOf);
        } else {
            aVar.c(Integer.MIN_VALUE);
        }
        aVar.b(i.a(str));
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static android.text.Layout.Alignment d(java.lang.String r6) {
        /*
            int r0 = r6.hashCode()
            r1 = 5
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            switch(r0) {
                case -1364013995: goto L_0x003f;
                case -1074341483: goto L_0x0035;
                case 100571: goto L_0x002b;
                case 3317767: goto L_0x0021;
                case 108511772: goto L_0x0017;
                case 109757538: goto L_0x000d;
                default: goto L_0x000c;
            }
        L_0x000c:
            goto L_0x0049
        L_0x000d:
            java.lang.String r0 = "start"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x0049
            r0 = 0
            goto L_0x004a
        L_0x0017:
            java.lang.String r0 = "right"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x0049
            r0 = 5
            goto L_0x004a
        L_0x0021:
            java.lang.String r0 = "left"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x0049
            r0 = 1
            goto L_0x004a
        L_0x002b:
            java.lang.String r0 = "end"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x0049
            r0 = 4
            goto L_0x004a
        L_0x0035:
            java.lang.String r0 = "middle"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x0049
            r0 = 3
            goto L_0x004a
        L_0x003f:
            java.lang.String r0 = "center"
            boolean r0 = r6.equals(r0)
            if (r0 == 0) goto L_0x0049
            r0 = 2
            goto L_0x004a
        L_0x0049:
            r0 = -1
        L_0x004a:
            if (r0 == 0) goto L_0x0074
            if (r0 == r5) goto L_0x0074
            if (r0 == r4) goto L_0x0071
            if (r0 == r3) goto L_0x0071
            if (r0 == r2) goto L_0x006e
            if (r0 == r1) goto L_0x006e
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid alignment value: "
            r0.append(r1)
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r0 = "WebvttCueParser"
            c.e.a.a.o.p.d(r0, r6)
            r6 = 0
            return r6
        L_0x006e:
            android.text.Layout$Alignment r6 = android.text.Layout.Alignment.ALIGN_OPPOSITE
            return r6
        L_0x0071:
            android.text.Layout$Alignment r6 = android.text.Layout.Alignment.ALIGN_CENTER
            return r6
        L_0x0074:
            android.text.Layout$Alignment r6 = android.text.Layout.Alignment.ALIGN_NORMAL
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.h.g.d(java.lang.String):android.text.Layout$Alignment");
    }

    public boolean a(v vVar, f.a aVar, List<d> list) {
        String k2 = vVar.k();
        if (k2 == null) {
            return false;
        }
        Matcher matcher = f9272a.matcher(k2);
        if (matcher.matches()) {
            return a(null, matcher, vVar, aVar, this.f9274c, list);
        }
        String k3 = vVar.k();
        if (k3 == null) {
            return false;
        }
        Matcher matcher2 = f9272a.matcher(k3);
        if (!matcher2.matches()) {
            return false;
        }
        return a(k2.trim(), matcher2, vVar, aVar, this.f9274c, list);
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int c(java.lang.String r5) {
        /*
            int r0 = r5.hashCode()
            r1 = 0
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1364013995: goto L_0x002a;
                case -1074341483: goto L_0x0020;
                case 100571: goto L_0x0016;
                case 109757538: goto L_0x000c;
                default: goto L_0x000b;
            }
        L_0x000b:
            goto L_0x0034
        L_0x000c:
            java.lang.String r0 = "start"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0034
            r0 = 0
            goto L_0x0035
        L_0x0016:
            java.lang.String r0 = "end"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0034
            r0 = 3
            goto L_0x0035
        L_0x0020:
            java.lang.String r0 = "middle"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0034
            r0 = 2
            goto L_0x0035
        L_0x002a:
            java.lang.String r0 = "center"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0034
            r0 = 1
            goto L_0x0035
        L_0x0034:
            r0 = -1
        L_0x0035:
            if (r0 == 0) goto L_0x0058
            if (r0 == r4) goto L_0x0057
            if (r0 == r3) goto L_0x0057
            if (r0 == r2) goto L_0x0056
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "Invalid anchor value: "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "WebvttCueParser"
            c.e.a.a.o.p.d(r0, r5)
            r5 = -2147483648(0xffffffff80000000, float:-0.0)
            return r5
        L_0x0056:
            return r3
        L_0x0057:
            return r4
        L_0x0058:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.h.g.c(java.lang.String):int");
    }

    public static void a(String str, f.a aVar) {
        Matcher matcher = f9273b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            try {
                if ("line".equals(group)) {
                    b(group2, aVar);
                } else if ("align".equals(group)) {
                    aVar.a(d(group2));
                } else if ("position".equals(group)) {
                    c(group2, aVar);
                } else if ("size".equals(group)) {
                    aVar.c(i.a(group2));
                } else {
                    p.d("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                }
            } catch (NumberFormatException unused) {
                p.d("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:32:0x0063 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean b(java.lang.String r8) {
        /*
            int r0 = r8.hashCode()
            r1 = 98
            r2 = 0
            r3 = 5
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            if (r0 == r1) goto L_0x0056
            r1 = 99
            if (r0 == r1) goto L_0x004c
            r1 = 105(0x69, float:1.47E-43)
            if (r0 == r1) goto L_0x0042
            r1 = 3314158(0x3291ee, float:4.644125E-39)
            if (r0 == r1) goto L_0x0038
            r1 = 117(0x75, float:1.64E-43)
            if (r0 == r1) goto L_0x002e
            r1 = 118(0x76, float:1.65E-43)
            if (r0 == r1) goto L_0x0024
            goto L_0x0060
        L_0x0024:
            java.lang.String r0 = "v"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L_0x0060
            r8 = 5
            goto L_0x0061
        L_0x002e:
            java.lang.String r0 = "u"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L_0x0060
            r8 = 4
            goto L_0x0061
        L_0x0038:
            java.lang.String r0 = "lang"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L_0x0060
            r8 = 3
            goto L_0x0061
        L_0x0042:
            java.lang.String r0 = "i"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L_0x0060
            r8 = 2
            goto L_0x0061
        L_0x004c:
            java.lang.String r0 = "c"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L_0x0060
            r8 = 1
            goto L_0x0061
        L_0x0056:
            java.lang.String r0 = "b"
            boolean r8 = r8.equals(r0)
            if (r8 == 0) goto L_0x0060
            r8 = 0
            goto L_0x0061
        L_0x0060:
            r8 = -1
        L_0x0061:
            if (r8 == 0) goto L_0x006e
            if (r8 == r7) goto L_0x006e
            if (r8 == r6) goto L_0x006e
            if (r8 == r5) goto L_0x006e
            if (r8 == r4) goto L_0x006e
            if (r8 == r3) goto L_0x006e
            return r2
        L_0x006e:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.h.g.b(java.lang.String):boolean");
    }

    public static void a(String str, String str2, f.a aVar, List<d> list) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < str2.length()) {
            char charAt = str2.charAt(i2);
            if (charAt == '&') {
                i2++;
                int indexOf = str2.indexOf(59, i2);
                int indexOf2 = str2.indexOf(32, i2);
                if (indexOf == -1) {
                    indexOf = indexOf2;
                } else if (indexOf2 != -1) {
                    indexOf = Math.min(indexOf, indexOf2);
                }
                if (indexOf != -1) {
                    a(str2.substring(i2, indexOf), spannableStringBuilder);
                    if (indexOf == indexOf2) {
                        spannableStringBuilder.append(" ");
                    }
                    i2 = indexOf + 1;
                } else {
                    spannableStringBuilder.append(charAt);
                }
            } else if (charAt != '<') {
                spannableStringBuilder.append(charAt);
                i2++;
            } else {
                int i3 = i2 + 1;
                if (i3 < str2.length()) {
                    int i4 = 1;
                    boolean z = str2.charAt(i3) == '/';
                    i3 = a(str2, i3);
                    int i5 = i3 - 2;
                    boolean z2 = str2.charAt(i5) == '/';
                    if (z) {
                        i4 = 2;
                    }
                    int i6 = i2 + i4;
                    if (!z2) {
                        i5 = i3 - 1;
                    }
                    String substring = str2.substring(i6, i5);
                    String a2 = a(substring);
                    if (a2 != null && b(a2)) {
                        if (z) {
                            while (!arrayDeque.isEmpty()) {
                                a aVar2 = (a) arrayDeque.pop();
                                a(str, aVar2, spannableStringBuilder, list, arrayList);
                                if (aVar2.f9276b.equals(a2)) {
                                    break;
                                }
                            }
                        } else if (!z2) {
                            arrayDeque.push(a.a(substring, spannableStringBuilder.length()));
                        }
                    }
                }
                i2 = i3;
            }
        }
        while (!arrayDeque.isEmpty()) {
            a(str, (a) arrayDeque.pop(), spannableStringBuilder, list, arrayList);
        }
        a(str, a.a(), spannableStringBuilder, list, arrayList);
        aVar.a(spannableStringBuilder);
    }

    public static boolean a(String str, Matcher matcher, v vVar, f.a aVar, StringBuilder sb, List<d> list) {
        try {
            aVar.b(i.b(matcher.group(1)));
            aVar.a(i.b(matcher.group(2)));
            a(matcher.group(3), aVar);
            sb.setLength(0);
            while (true) {
                String k2 = vVar.k();
                if (!TextUtils.isEmpty(k2)) {
                    if (sb.length() > 0) {
                        sb.append("\n");
                    }
                    sb.append(k2.trim());
                } else {
                    a(str, sb.toString(), aVar, list);
                    return true;
                }
            }
        } catch (NumberFormatException unused) {
            p.d("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return false;
        }
    }

    public static int a(String str, int i2) {
        int indexOf = str.indexOf(62, i2);
        return indexOf == -1 ? str.length() : indexOf + 1;
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0045  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0079  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r5, android.text.SpannableStringBuilder r6) {
        /*
            int r0 = r5.hashCode()
            r1 = 3309(0xced, float:4.637E-42)
            r2 = 3
            r3 = 2
            r4 = 1
            if (r0 == r1) goto L_0x0038
            r1 = 3464(0xd88, float:4.854E-42)
            if (r0 == r1) goto L_0x002e
            r1 = 96708(0x179c4, float:1.35517E-40)
            if (r0 == r1) goto L_0x0024
            r1 = 3374865(0x337f11, float:4.729193E-39)
            if (r0 == r1) goto L_0x001a
            goto L_0x0042
        L_0x001a:
            java.lang.String r0 = "nbsp"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0042
            r0 = 2
            goto L_0x0043
        L_0x0024:
            java.lang.String r0 = "amp"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0042
            r0 = 3
            goto L_0x0043
        L_0x002e:
            java.lang.String r0 = "lt"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0042
            r0 = 0
            goto L_0x0043
        L_0x0038:
            java.lang.String r0 = "gt"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0042
            r0 = 1
            goto L_0x0043
        L_0x0042:
            r0 = -1
        L_0x0043:
            if (r0 == 0) goto L_0x0079
            if (r0 == r4) goto L_0x0073
            if (r0 == r3) goto L_0x006d
            if (r0 == r2) goto L_0x0067
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.String r0 = "ignoring unsupported entity: '&"
            r6.append(r0)
            r6.append(r5)
            java.lang.String r5 = ";'"
            r6.append(r5)
            java.lang.String r5 = r6.toString()
            java.lang.String r6 = "WebvttCueParser"
            c.e.a.a.o.p.d(r6, r5)
            goto L_0x007e
        L_0x0067:
            r5 = 38
            r6.append(r5)
            goto L_0x007e
        L_0x006d:
            r5 = 32
            r6.append(r5)
            goto L_0x007e
        L_0x0073:
            r5 = 62
            r6.append(r5)
            goto L_0x007e
        L_0x0079:
            r5 = 60
            r6.append(r5)
        L_0x007e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.h.g.a(java.lang.String, android.text.SpannableStringBuilder):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x0077 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0078  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0081  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:44:0x009e A[LOOP:0: B:43:0x009c->B:44:0x009e, LOOP_END] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.lang.String r8, c.e.a.a.k.h.g.a r9, android.text.SpannableStringBuilder r10, java.util.List<c.e.a.a.k.h.d> r11, java.util.List<c.e.a.a.k.h.g.b> r12) {
        /*
            int r0 = r9.f9277c
            int r1 = r10.length()
            java.lang.String r2 = r9.f9276b
            int r3 = r2.hashCode()
            r4 = 0
            r5 = 2
            r6 = 1
            if (r3 == 0) goto L_0x0067
            r7 = 105(0x69, float:1.47E-43)
            if (r3 == r7) goto L_0x005d
            r7 = 3314158(0x3291ee, float:4.644125E-39)
            if (r3 == r7) goto L_0x0053
            r7 = 98
            if (r3 == r7) goto L_0x0049
            r7 = 99
            if (r3 == r7) goto L_0x003f
            r7 = 117(0x75, float:1.64E-43)
            if (r3 == r7) goto L_0x0035
            r7 = 118(0x76, float:1.65E-43)
            if (r3 == r7) goto L_0x002b
            goto L_0x0071
        L_0x002b:
            java.lang.String r3 = "v"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 5
            goto L_0x0072
        L_0x0035:
            java.lang.String r3 = "u"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 2
            goto L_0x0072
        L_0x003f:
            java.lang.String r3 = "c"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 3
            goto L_0x0072
        L_0x0049:
            java.lang.String r3 = "b"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 0
            goto L_0x0072
        L_0x0053:
            java.lang.String r3 = "lang"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 4
            goto L_0x0072
        L_0x005d:
            java.lang.String r3 = "i"
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 1
            goto L_0x0072
        L_0x0067:
            java.lang.String r3 = ""
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto L_0x0071
            r2 = 6
            goto L_0x0072
        L_0x0071:
            r2 = -1
        L_0x0072:
            r3 = 33
            switch(r2) {
                case 0: goto L_0x008a;
                case 1: goto L_0x0081;
                case 2: goto L_0x0078;
                case 3: goto L_0x0092;
                case 4: goto L_0x0092;
                case 5: goto L_0x0092;
                case 6: goto L_0x0092;
                default: goto L_0x0077;
            }
        L_0x0077:
            return
        L_0x0078:
            android.text.style.UnderlineSpan r2 = new android.text.style.UnderlineSpan
            r2.<init>()
            r10.setSpan(r2, r0, r1, r3)
            goto L_0x0092
        L_0x0081:
            android.text.style.StyleSpan r2 = new android.text.style.StyleSpan
            r2.<init>(r5)
            r10.setSpan(r2, r0, r1, r3)
            goto L_0x0092
        L_0x008a:
            android.text.style.StyleSpan r2 = new android.text.style.StyleSpan
            r2.<init>(r6)
            r10.setSpan(r2, r0, r1, r3)
        L_0x0092:
            r12.clear()
            a((java.util.List<c.e.a.a.k.h.d>) r11, (java.lang.String) r8, (c.e.a.a.k.h.g.a) r9, (java.util.List<c.e.a.a.k.h.g.b>) r12)
            int r8 = r12.size()
        L_0x009c:
            if (r4 >= r8) goto L_0x00ac
            java.lang.Object r9 = r12.get(r4)
            c.e.a.a.k.h.g$b r9 = (c.e.a.a.k.h.g.b) r9
            c.e.a.a.k.h.d r9 = r9.f9281b
            a((android.text.SpannableStringBuilder) r10, (c.e.a.a.k.h.d) r9, (int) r0, (int) r1)
            int r4 = r4 + 1
            goto L_0x009c
        L_0x00ac:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.k.h.g.a(java.lang.String, c.e.a.a.k.h.g$a, android.text.SpannableStringBuilder, java.util.List, java.util.List):void");
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, d dVar, int i2, int i3) {
        if (dVar != null) {
            if (dVar.f() != -1) {
                spannableStringBuilder.setSpan(new StyleSpan(dVar.f()), i2, i3, 33);
            }
            if (dVar.j()) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i2, i3, 33);
            }
            if (dVar.k()) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i2, i3, 33);
            }
            if (dVar.i()) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(dVar.b()), i2, i3, 33);
            }
            if (dVar.h()) {
                spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.a()), i2, i3, 33);
            }
            if (dVar.c() != null) {
                spannableStringBuilder.setSpan(new TypefaceSpan(dVar.c()), i2, i3, 33);
            }
            if (dVar.g() != null) {
                spannableStringBuilder.setSpan(new AlignmentSpan.Standard(dVar.g()), i2, i3, 33);
            }
            int e2 = dVar.e();
            if (e2 == 1) {
                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.d(), true), i2, i3, 33);
            } else if (e2 == 2) {
                spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.d()), i2, i3, 33);
            } else if (e2 == 3) {
                spannableStringBuilder.setSpan(new RelativeSizeSpan(dVar.d() / 100.0f), i2, i3, 33);
            }
        }
    }

    public static String a(String str) {
        String trim = str.trim();
        if (trim.isEmpty()) {
            return null;
        }
        return I.b(trim, "[ \\.]")[0];
    }

    public static void a(List<d> list, String str, a aVar, List<b> list2) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            d dVar = list.get(i2);
            int a2 = dVar.a(str, aVar.f9276b, aVar.f9279e, aVar.f9278d);
            if (a2 > 0) {
                list2.add(new b(a2, dVar));
            }
        }
        Collections.sort(list2);
    }
}
