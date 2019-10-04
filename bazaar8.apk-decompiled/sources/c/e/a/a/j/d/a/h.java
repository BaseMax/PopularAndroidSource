package c.e.a.a.j.d.a;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Base64;
import c.e.a.a.C0744q;
import c.e.a.a.e.e.l;
import c.e.a.a.j.d.a.e;
import c.e.a.a.j.d.a.f;
import c.e.a.a.n.y;
import c.e.a.a.o.I;
import com.crashlytics.android.answers.RetryManager;
import com.crashlytics.android.core.CodedOutputStream;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.source.UnrecognizedInputFormatException;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: HlsPlaylistParser */
public final class h implements y.a<g> {
    public static final Pattern A = Pattern.compile("NAME=\"(.+?)\"");
    public static final Pattern B = Pattern.compile("GROUP-ID=\"(.+?)\"");
    public static final Pattern C = Pattern.compile("CHARACTERISTICS=\"(.+?)\"");
    public static final Pattern D = Pattern.compile("INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\"");
    public static final Pattern E = a("AUTOSELECT");
    public static final Pattern F = a("DEFAULT");
    public static final Pattern G = a("FORCED");
    public static final Pattern H = Pattern.compile("VALUE=\"(.+?)\"");
    public static final Pattern I = Pattern.compile("IMPORT=\"(.+?)\"");
    public static final Pattern J = Pattern.compile("\\{\\$([a-zA-Z0-9\\-_]+)\\}");

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8772a = Pattern.compile("AVERAGE-BANDWIDTH=(\\d+)\\b");

    /* renamed from: b  reason: collision with root package name */
    public static final Pattern f8773b = Pattern.compile("VIDEO=\"(.+?)\"");

    /* renamed from: c  reason: collision with root package name */
    public static final Pattern f8774c = Pattern.compile("AUDIO=\"(.+?)\"");

    /* renamed from: d  reason: collision with root package name */
    public static final Pattern f8775d = Pattern.compile("SUBTITLES=\"(.+?)\"");

    /* renamed from: e  reason: collision with root package name */
    public static final Pattern f8776e = Pattern.compile("CLOSED-CAPTIONS=\"(.+?)\"");

    /* renamed from: f  reason: collision with root package name */
    public static final Pattern f8777f = Pattern.compile("[^-]BANDWIDTH=(\\d+)\\b");

    /* renamed from: g  reason: collision with root package name */
    public static final Pattern f8778g = Pattern.compile("CHANNELS=\"(.+?)\"");

    /* renamed from: h  reason: collision with root package name */
    public static final Pattern f8779h = Pattern.compile("CODECS=\"(.+?)\"");

    /* renamed from: i  reason: collision with root package name */
    public static final Pattern f8780i = Pattern.compile("RESOLUTION=(\\d+x\\d+)");

    /* renamed from: j  reason: collision with root package name */
    public static final Pattern f8781j = Pattern.compile("FRAME-RATE=([\\d\\.]+)\\b");

    /* renamed from: k  reason: collision with root package name */
    public static final Pattern f8782k = Pattern.compile("#EXT-X-TARGETDURATION:(\\d+)\\b");

    /* renamed from: l  reason: collision with root package name */
    public static final Pattern f8783l = Pattern.compile("#EXT-X-VERSION:(\\d+)\\b");
    public static final Pattern m = Pattern.compile("#EXT-X-PLAYLIST-TYPE:(.+)\\b");
    public static final Pattern n = Pattern.compile("#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b");
    public static final Pattern o = Pattern.compile("#EXTINF:([\\d\\.]+)\\b");
    public static final Pattern p = Pattern.compile("#EXTINF:[\\d\\.]+\\b,(.+)");
    public static final Pattern q = Pattern.compile("TIME-OFFSET=(-?[\\d\\.]+)\\b");
    public static final Pattern r = Pattern.compile("#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b");
    public static final Pattern s = Pattern.compile("BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\"");
    public static final Pattern t = Pattern.compile("METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)");
    public static final Pattern u = Pattern.compile("KEYFORMAT=\"(.+?)\"");
    public static final Pattern v = Pattern.compile("KEYFORMATVERSIONS=\"(.+?)\"");
    public static final Pattern w = Pattern.compile("URI=\"(.+?)\"");
    public static final Pattern x = Pattern.compile("IV=([^,.*]+)");
    public static final Pattern y = Pattern.compile("TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)");
    public static final Pattern z = Pattern.compile("LANGUAGE=\"(.+?)\"");
    public final e K;

    /* compiled from: HlsPlaylistParser */
    private static class a {

        /* renamed from: a  reason: collision with root package name */
        public final BufferedReader f8784a;

        /* renamed from: b  reason: collision with root package name */
        public final Queue<String> f8785b;

        /* renamed from: c  reason: collision with root package name */
        public String f8786c;

        public a(Queue<String> queue, BufferedReader bufferedReader) {
            this.f8785b = queue;
            this.f8784a = bufferedReader;
        }

        public boolean a() {
            if (this.f8786c != null) {
                return true;
            }
            if (!this.f8785b.isEmpty()) {
                this.f8786c = this.f8785b.poll();
                return true;
            }
            do {
                String readLine = this.f8784a.readLine();
                this.f8786c = readLine;
                if (readLine == null) {
                    return false;
                }
                this.f8786c = this.f8786c.trim();
            } while (this.f8786c.isEmpty());
            return true;
        }

        public String b() {
            if (!a()) {
                return null;
            }
            String str = this.f8786c;
            this.f8786c = null;
            return str;
        }
    }

    public h() {
        this(e.f8729d);
    }

    public static e.b b(ArrayList<e.b> arrayList, String str) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            e.b bVar = arrayList.get(i2);
            if (str.equals(bVar.f8744c)) {
                return bVar;
            }
        }
        return null;
    }

    public static int c(String str) {
        int i2 = a(str, F, false) ? 1 : 0;
        if (a(str, G, false)) {
            i2 |= 2;
        }
        return a(str, E, false) ? i2 | 4 : i2;
    }

    public h(e eVar) {
        this.K = eVar;
    }

    public g a(Uri uri, InputStream inputStream) {
        String trim;
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        ArrayDeque arrayDeque = new ArrayDeque();
        try {
            if (a(bufferedReader)) {
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        trim = readLine.trim();
                        if (!trim.isEmpty()) {
                            if (!trim.startsWith("#EXT-X-STREAM-INF")) {
                                if (trim.startsWith("#EXT-X-TARGETDURATION") || trim.startsWith("#EXT-X-MEDIA-SEQUENCE") || trim.startsWith("#EXTINF") || trim.startsWith("#EXT-X-KEY") || trim.startsWith("#EXT-X-BYTERANGE") || trim.equals("#EXT-X-DISCONTINUITY") || trim.equals("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                                    break;
                                } else if (trim.equals("#EXT-X-ENDLIST")) {
                                    break;
                                } else {
                                    arrayDeque.add(trim);
                                }
                            } else {
                                arrayDeque.add(trim);
                                e a2 = a(new a(arrayDeque, bufferedReader), uri.toString());
                                I.a((Closeable) bufferedReader);
                                return a2;
                            }
                        }
                    } else {
                        I.a((Closeable) bufferedReader);
                        throw new ParserException("Failed to parse the playlist, could not identify any tags.");
                    }
                }
                arrayDeque.add(trim);
                return a(this.K, new a(arrayDeque, bufferedReader), uri.toString());
            }
            throw new UnrecognizedInputFormatException("Input does not start with the #EXTM3U header.", uri);
        } finally {
            I.a((Closeable) bufferedReader);
        }
    }

    public static int b(String str, Map<String, String> map) {
        String a2 = a(str, C, map);
        int i2 = 0;
        if (TextUtils.isEmpty(a2)) {
            return 0;
        }
        String[] a3 = I.a(a2, ",");
        if (I.a((Object[]) a3, (Object) "public.accessibility.describes-video")) {
            i2 = 512;
        }
        if (I.a((Object[]) a3, (Object) "public.accessibility.transcribes-spoken-dialog")) {
            i2 |= CodedOutputStream.DEFAULT_BUFFER_SIZE;
        }
        if (I.a((Object[]) a3, (Object) "public.accessibility.describes-music-and-sound")) {
            i2 |= 1024;
        }
        if (I.a((Object[]) a3, (Object) "public.easy-to-read")) {
            i2 |= 8192;
        }
        return i2;
    }

    public static long c(String str, Pattern pattern) {
        return Long.parseLong(b(str, pattern, Collections.emptyMap()));
    }

    public static String c(String str, Map<String, String> map) {
        Matcher matcher = J.matcher(str);
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            String group = matcher.group(1);
            if (map.containsKey(group)) {
                matcher.appendReplacement(stringBuffer, Matcher.quoteReplacement(map.get(group)));
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static String b(String str) {
        return ("SAMPLE-AES-CENC".equals(str) || "SAMPLE-AES-CTR".equals(str)) ? "cenc" : "cbcs";
    }

    public static int b(String str, Pattern pattern) {
        return Integer.parseInt(b(str, pattern, Collections.emptyMap()));
    }

    public static String b(String str, Pattern pattern, Map<String, String> map) {
        String a2 = a(str, pattern, map);
        if (a2 != null) {
            return a2;
        }
        throw new ParserException("Couldn't match " + pattern.pattern() + " in " + str);
    }

    public static boolean a(BufferedReader bufferedReader) {
        int read = bufferedReader.read();
        if (read == 239) {
            if (bufferedReader.read() != 187 || bufferedReader.read() != 191) {
                return false;
            }
            read = bufferedReader.read();
        }
        int a2 = a(bufferedReader, true, read);
        for (int i2 = 0; i2 < 7; i2++) {
            if (a2 != "#EXTM3U".charAt(i2)) {
                return false;
            }
            a2 = bufferedReader.read();
        }
        return I.g(a(bufferedReader, false, a2));
    }

    public static int a(BufferedReader bufferedReader, boolean z2, int i2) {
        while (i2 != -1 && Character.isWhitespace(i2) && (z2 || !I.g(i2))) {
            i2 = bufferedReader.read();
        }
        return i2;
    }

    /* JADX WARNING: Can't fix incorrect switch cases order */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static c.e.a.a.j.d.a.e a(c.e.a.a.j.d.a.h.a r38, java.lang.String r39) {
        /*
            r1 = r39
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            java.util.HashMap r11 = new java.util.HashMap
            r11.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            java.util.ArrayList r5 = new java.util.ArrayList
            r5.<init>()
            java.util.ArrayList r6 = new java.util.ArrayList
            r6.<init>()
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>()
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            r13 = 0
            r14 = 0
        L_0x0036:
            boolean r15 = r38.a()
            r16 = -1082130432(0xffffffffbf800000, float:-1.0)
            r17 = -1
            if (r15 == 0) goto L_0x01c1
            java.lang.String r15 = r38.b()
            java.lang.String r9 = "#EXT"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x004f
            r8.add(r15)
        L_0x004f:
            java.lang.String r9 = "#EXT-X-DEFINE"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x0070
            java.util.regex.Pattern r9 = A
            java.lang.String r9 = b(r15, r9, r11)
            java.util.regex.Pattern r10 = H
            java.lang.String r10 = b(r15, r10, r11)
            r11.put(r9, r10)
        L_0x0066:
            r19 = r7
            r21 = r8
            r20 = r12
            r18 = r14
            goto L_0x01b7
        L_0x0070:
            java.lang.String r9 = "#EXT-X-INDEPENDENT-SEGMENTS"
            boolean r9 = r15.equals(r9)
            if (r9 == 0) goto L_0x007a
            r14 = 1
            goto L_0x0036
        L_0x007a:
            java.lang.String r9 = "#EXT-X-MEDIA"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x0086
            r3.add(r15)
            goto L_0x0066
        L_0x0086:
            java.lang.String r9 = "#EXT-X-SESSION-KEY"
            boolean r9 = r15.startsWith(r9)
            if (r9 == 0) goto L_0x00c0
            java.util.regex.Pattern r9 = u
            java.lang.String r10 = "identity"
            java.lang.String r9 = a(r15, r9, r10, r11)
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData r9 = a((java.lang.String) r15, (java.lang.String) r9, (java.util.Map<java.lang.String, java.lang.String>) r11)
            if (r9 == 0) goto L_0x00ba
            java.util.regex.Pattern r10 = t
            java.lang.String r10 = b(r15, r10, r11)
            java.lang.String r10 = b(r10)
            com.google.android.exoplayer2.drm.DrmInitData r15 = new com.google.android.exoplayer2.drm.DrmInitData
            r19 = r7
            r18 = r14
            r14 = 1
            com.google.android.exoplayer2.drm.DrmInitData$SchemeData[] r7 = new com.google.android.exoplayer2.drm.DrmInitData.SchemeData[r14]
            r14 = 0
            r7[r14] = r9
            r15.<init>((java.lang.String) r10, (com.google.android.exoplayer2.drm.DrmInitData.SchemeData[]) r7)
            r12.add(r15)
            goto L_0x01b3
        L_0x00ba:
            r19 = r7
            r18 = r14
            goto L_0x01b3
        L_0x00c0:
            r19 = r7
            r18 = r14
            java.lang.String r7 = "#EXT-X-STREAM-INF"
            boolean r7 = r15.startsWith(r7)
            if (r7 == 0) goto L_0x01b3
            java.lang.String r7 = "CLOSED-CAPTIONS=NONE"
            boolean r7 = r15.contains(r7)
            r13 = r13 | r7
            java.util.regex.Pattern r7 = f8777f
            int r7 = b((java.lang.String) r15, (java.util.regex.Pattern) r7)
            java.util.regex.Pattern r9 = f8772a
            java.lang.String r9 = a((java.lang.String) r15, (java.util.regex.Pattern) r9, (java.util.Map<java.lang.String, java.lang.String>) r11)
            if (r9 == 0) goto L_0x00e5
            int r7 = java.lang.Integer.parseInt(r9)
        L_0x00e5:
            java.util.regex.Pattern r9 = f8779h
            java.lang.String r24 = a((java.lang.String) r15, (java.util.regex.Pattern) r9, (java.util.Map<java.lang.String, java.lang.String>) r11)
            java.util.regex.Pattern r9 = f8780i
            java.lang.String r9 = a((java.lang.String) r15, (java.util.regex.Pattern) r9, (java.util.Map<java.lang.String, java.lang.String>) r11)
            if (r9 == 0) goto L_0x0115
            java.lang.String r10 = "x"
            java.lang.String[] r9 = r9.split(r10)
            r10 = 0
            r14 = r9[r10]
            int r10 = java.lang.Integer.parseInt(r14)
            r14 = 1
            r9 = r9[r14]
            int r9 = java.lang.Integer.parseInt(r9)
            if (r10 <= 0) goto L_0x010f
            if (r9 > 0) goto L_0x010c
            goto L_0x010f
        L_0x010c:
            r17 = r9
            goto L_0x0110
        L_0x010f:
            r10 = -1
        L_0x0110:
            r26 = r10
            r27 = r17
            goto L_0x0119
        L_0x0115:
            r26 = -1
            r27 = -1
        L_0x0119:
            java.util.regex.Pattern r9 = f8781j
            java.lang.String r9 = a((java.lang.String) r15, (java.util.regex.Pattern) r9, (java.util.Map<java.lang.String, java.lang.String>) r11)
            if (r9 == 0) goto L_0x0128
            float r16 = java.lang.Float.parseFloat(r9)
            r28 = r16
            goto L_0x012a
        L_0x0128:
            r28 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x012a:
            java.util.regex.Pattern r9 = f8773b
            java.lang.String r9 = a((java.lang.String) r15, (java.util.regex.Pattern) r9, (java.util.Map<java.lang.String, java.lang.String>) r11)
            java.util.regex.Pattern r10 = f8774c
            java.lang.String r10 = a((java.lang.String) r15, (java.util.regex.Pattern) r10, (java.util.Map<java.lang.String, java.lang.String>) r11)
            java.util.regex.Pattern r14 = f8775d
            java.lang.String r14 = a((java.lang.String) r15, (java.util.regex.Pattern) r14, (java.util.Map<java.lang.String, java.lang.String>) r11)
            r36 = r13
            java.util.regex.Pattern r13 = f8776e
            java.lang.String r13 = a((java.lang.String) r15, (java.util.regex.Pattern) r13, (java.util.Map<java.lang.String, java.lang.String>) r11)
            java.lang.String r15 = r38.b()
            java.lang.String r15 = c((java.lang.String) r15, (java.util.Map<java.lang.String, java.lang.String>) r11)
            android.net.Uri r15 = c.e.a.a.o.H.b(r1, r15)
            int r16 = r2.size()
            java.lang.String r20 = java.lang.Integer.toString(r16)
            r21 = 0
            r23 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            java.lang.String r22 = "application/x-mpegURL"
            r25 = r7
            com.google.android.exoplayer2.Format r31 = com.google.android.exoplayer2.Format.a((java.lang.String) r20, (java.lang.String) r21, (java.lang.String) r22, (java.lang.String) r23, (java.lang.String) r24, (int) r25, (int) r26, (int) r27, (float) r28, (java.util.List<byte[]>) r29, (int) r30, (int) r31)
            r20 = r12
            c.e.a.a.j.d.a.e$b r12 = new c.e.a.a.j.d.a.e$b
            r29 = r12
            r30 = r15
            r32 = r9
            r33 = r10
            r34 = r14
            r35 = r13
            r29.<init>(r30, r31, r32, r33, r34, r35)
            r2.add(r12)
            java.lang.Object r12 = r0.get(r15)
            java.util.ArrayList r12 = (java.util.ArrayList) r12
            if (r12 != 0) goto L_0x0190
            java.util.ArrayList r12 = new java.util.ArrayList
            r12.<init>()
            r0.put(r15, r12)
        L_0x0190:
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo r15 = new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo
            r21 = r8
            long r7 = (long) r7
            r29 = r15
            r30 = r7
            r32 = r9
            r33 = r10
            r34 = r14
            r35 = r13
            r29.<init>(r30, r32, r33, r34, r35)
            r12.add(r15)
            r14 = r18
            r7 = r19
            r12 = r20
            r8 = r21
            r13 = r36
            goto L_0x0036
        L_0x01b3:
            r21 = r8
            r20 = r12
        L_0x01b7:
            r14 = r18
            r7 = r19
            r12 = r20
            r8 = r21
            goto L_0x0036
        L_0x01c1:
            r19 = r7
            r21 = r8
            r20 = r12
            r18 = r14
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.HashSet r8 = new java.util.HashSet
            r8.<init>()
            r9 = 0
        L_0x01d4:
            int r10 = r2.size()
            r12 = 0
            if (r9 >= r10) goto L_0x022a
            java.lang.Object r10 = r2.get(r9)
            c.e.a.a.j.d.a.e$b r10 = (c.e.a.a.j.d.a.e.b) r10
            android.net.Uri r14 = r10.f8742a
            boolean r14 = r8.add(r14)
            if (r14 == 0) goto L_0x021f
            com.google.android.exoplayer2.Format r14 = r10.f8743b
            com.google.android.exoplayer2.metadata.Metadata r14 = r14.f12512g
            if (r14 != 0) goto L_0x01f1
            r14 = 1
            goto L_0x01f2
        L_0x01f1:
            r14 = 0
        L_0x01f2:
            c.e.a.a.o.C0737e.b(r14)
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry r14 = new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry
            android.net.Uri r15 = r10.f8742a
            java.lang.Object r15 = r0.get(r15)
            java.util.List r15 = (java.util.List) r15
            r14.<init>(r12, r12, r15)
            com.google.android.exoplayer2.Format r12 = r10.f8743b
            com.google.android.exoplayer2.metadata.Metadata r15 = new com.google.android.exoplayer2.metadata.Metadata
            r22 = r0
            r38 = r8
            r0 = 1
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r8 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r0]
            r0 = 0
            r8[r0] = r14
            r15.<init>((com.google.android.exoplayer2.metadata.Metadata.Entry[]) r8)
            com.google.android.exoplayer2.Format r0 = r12.a((com.google.android.exoplayer2.metadata.Metadata) r15)
            c.e.a.a.j.d.a.e$b r0 = r10.a((com.google.android.exoplayer2.Format) r0)
            r7.add(r0)
            goto L_0x0223
        L_0x021f:
            r22 = r0
            r38 = r8
        L_0x0223:
            int r9 = r9 + 1
            r8 = r38
            r0 = r22
            goto L_0x01d4
        L_0x022a:
            r8 = r12
            r9 = r8
            r0 = 0
        L_0x022d:
            int r10 = r3.size()
            if (r0 >= r10) goto L_0x03e1
            java.lang.Object r10 = r3.get(r0)
            java.lang.String r10 = (java.lang.String) r10
            java.util.regex.Pattern r14 = B
            java.lang.String r14 = b(r10, r14, r11)
            java.util.regex.Pattern r15 = A
            java.lang.String r15 = b(r10, r15, r11)
            java.util.regex.Pattern r12 = w
            java.lang.String r12 = a((java.lang.String) r10, (java.util.regex.Pattern) r12, (java.util.Map<java.lang.String, java.lang.String>) r11)
            if (r12 != 0) goto L_0x024f
            r12 = 0
            goto L_0x0253
        L_0x024f:
            android.net.Uri r12 = c.e.a.a.o.H.b(r1, r12)
        L_0x0253:
            java.util.regex.Pattern r1 = z
            java.lang.String r33 = a((java.lang.String) r10, (java.util.regex.Pattern) r1, (java.util.Map<java.lang.String, java.lang.String>) r11)
            int r32 = c(r10)
            int r1 = b((java.lang.String) r10, (java.util.Map<java.lang.String, java.lang.String>) r11)
            r34 = r3
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r14)
            r35 = r8
            java.lang.String r8 = ":"
            r3.append(r8)
            r3.append(r15)
            java.lang.String r22 = r3.toString()
            com.google.android.exoplayer2.metadata.Metadata r3 = new com.google.android.exoplayer2.metadata.Metadata
            r36 = r7
            r8 = 1
            com.google.android.exoplayer2.metadata.Metadata$Entry[] r7 = new com.google.android.exoplayer2.metadata.Metadata.Entry[r8]
            com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry r8 = new com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry
            r37 = r13
            java.util.List r13 = java.util.Collections.emptyList()
            r8.<init>(r14, r15, r13)
            r13 = 0
            r7[r13] = r8
            r3.<init>((com.google.android.exoplayer2.metadata.Metadata.Entry[]) r7)
            java.util.regex.Pattern r7 = y
            java.lang.String r7 = b(r10, r7, r11)
            int r8 = r7.hashCode()
            r13 = 2
            switch(r8) {
                case -959297733: goto L_0x02be;
                case -333210994: goto L_0x02b4;
                case 62628790: goto L_0x02aa;
                case 81665115: goto L_0x02a0;
                default: goto L_0x029f;
            }
        L_0x029f:
            goto L_0x02c8
        L_0x02a0:
            java.lang.String r8 = "VIDEO"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 0
            goto L_0x02c9
        L_0x02aa:
            java.lang.String r8 = "AUDIO"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 1
            goto L_0x02c9
        L_0x02b4:
            java.lang.String r8 = "CLOSED-CAPTIONS"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 3
            goto L_0x02c9
        L_0x02be:
            java.lang.String r8 = "SUBTITLES"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto L_0x02c8
            r7 = 2
            goto L_0x02c9
        L_0x02c8:
            r7 = -1
        L_0x02c9:
            if (r7 == 0) goto L_0x0384
            r8 = 1
            if (r7 == r8) goto L_0x033d
            if (r7 == r13) goto L_0x031b
            r8 = 3
            if (r7 == r8) goto L_0x02d5
            goto L_0x03d2
        L_0x02d5:
            java.util.regex.Pattern r3 = D
            java.lang.String r3 = b(r10, r3, r11)
            java.lang.String r7 = "CC"
            boolean r7 = r3.startsWith(r7)
            if (r7 == 0) goto L_0x02ee
            java.lang.String r3 = r3.substring(r13)
            int r3 = java.lang.Integer.parseInt(r3)
            java.lang.String r7 = "application/cea-608"
            goto L_0x02f9
        L_0x02ee:
            r7 = 7
            java.lang.String r3 = r3.substring(r7)
            int r3 = java.lang.Integer.parseInt(r3)
            java.lang.String r7 = "application/cea-708"
        L_0x02f9:
            r31 = r3
            r25 = r7
            if (r9 != 0) goto L_0x0304
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
        L_0x0304:
            r24 = 0
            r26 = 0
            r27 = -1
            r23 = r15
            r28 = r32
            r29 = r1
            r30 = r33
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r22, (java.lang.String) r23, (java.lang.String) r24, (java.lang.String) r25, (java.lang.String) r26, (int) r27, (int) r28, (int) r29, (java.lang.String) r30, (int) r31)
            r9.add(r1)
            goto L_0x03d2
        L_0x031b:
            r26 = 0
            r27 = -1
            java.lang.String r24 = "application/x-mpegURL"
            java.lang.String r25 = "text/vtt"
            r23 = r15
            r28 = r32
            r29 = r1
            r30 = r33
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.b(r22, r23, r24, r25, r26, r27, r28, r29, r30)
            com.google.android.exoplayer2.Format r1 = r1.a((com.google.android.exoplayer2.metadata.Metadata) r3)
            c.e.a.a.j.d.a.e$a r3 = new c.e.a.a.j.d.a.e$a
            r3.<init>(r12, r1, r14, r15)
            r6.add(r3)
            goto L_0x03d2
        L_0x033d:
            c.e.a.a.j.d.a.e$b r7 = a((java.util.ArrayList<c.e.a.a.j.d.a.e.b>) r2, (java.lang.String) r14)
            if (r7 == 0) goto L_0x034f
            com.google.android.exoplayer2.Format r7 = r7.f8743b
            java.lang.String r7 = r7.f12511f
            r8 = 1
            java.lang.String r7 = c.e.a.a.o.I.a((java.lang.String) r7, (int) r8)
            r26 = r7
            goto L_0x0352
        L_0x034f:
            r8 = 1
            r26 = 0
        L_0x0352:
            if (r26 == 0) goto L_0x035b
            java.lang.String r7 = c.e.a.a.o.s.d(r26)
            r25 = r7
            goto L_0x035d
        L_0x035b:
            r25 = 0
        L_0x035d:
            int r28 = a((java.lang.String) r10, (java.util.Map<java.lang.String, java.lang.String>) r11)
            r27 = -1
            r29 = -1
            r30 = 0
            java.lang.String r24 = "application/x-mpegURL"
            r23 = r15
            r31 = r32
            r32 = r1
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r22, (java.lang.String) r23, (java.lang.String) r24, (java.lang.String) r25, (java.lang.String) r26, (int) r27, (int) r28, (int) r29, (java.util.List<byte[]>) r30, (int) r31, (int) r32, (java.lang.String) r33)
            if (r12 != 0) goto L_0x0377
            r8 = r1
            goto L_0x03d4
        L_0x0377:
            c.e.a.a.j.d.a.e$a r7 = new c.e.a.a.j.d.a.e$a
            com.google.android.exoplayer2.Format r1 = r1.a((com.google.android.exoplayer2.metadata.Metadata) r3)
            r7.<init>(r12, r1, r14, r15)
            r5.add(r7)
            goto L_0x03d2
        L_0x0384:
            r8 = 1
            c.e.a.a.j.d.a.e$b r7 = b((java.util.ArrayList<c.e.a.a.j.d.a.e.b>) r2, (java.lang.String) r14)
            if (r7 == 0) goto L_0x03a2
            com.google.android.exoplayer2.Format r7 = r7.f8743b
            java.lang.String r10 = r7.f12511f
            java.lang.String r10 = c.e.a.a.o.I.a((java.lang.String) r10, (int) r13)
            int r13 = r7.n
            int r8 = r7.o
            float r7 = r7.p
            r30 = r7
            r29 = r8
            r26 = r10
            r28 = r13
            goto L_0x03aa
        L_0x03a2:
            r26 = 0
            r28 = -1
            r29 = -1
            r30 = -1082130432(0xffffffffbf800000, float:-1.0)
        L_0x03aa:
            if (r26 == 0) goto L_0x03b3
            java.lang.String r7 = c.e.a.a.o.s.d(r26)
            r25 = r7
            goto L_0x03b5
        L_0x03b3:
            r25 = 0
        L_0x03b5:
            r27 = -1
            r31 = 0
            java.lang.String r24 = "application/x-mpegURL"
            r23 = r15
            r33 = r1
            com.google.android.exoplayer2.Format r1 = com.google.android.exoplayer2.Format.a((java.lang.String) r22, (java.lang.String) r23, (java.lang.String) r24, (java.lang.String) r25, (java.lang.String) r26, (int) r27, (int) r28, (int) r29, (float) r30, (java.util.List<byte[]>) r31, (int) r32, (int) r33)
            com.google.android.exoplayer2.Format r1 = r1.a((com.google.android.exoplayer2.metadata.Metadata) r3)
            if (r12 != 0) goto L_0x03ca
            goto L_0x03d2
        L_0x03ca:
            c.e.a.a.j.d.a.e$a r3 = new c.e.a.a.j.d.a.e$a
            r3.<init>(r12, r1, r14, r15)
            r4.add(r3)
        L_0x03d2:
            r8 = r35
        L_0x03d4:
            int r0 = r0 + 1
            r1 = r39
            r3 = r34
            r7 = r36
            r13 = r37
            r12 = 0
            goto L_0x022d
        L_0x03e1:
            r36 = r7
            r35 = r8
            r37 = r13
            if (r37 == 0) goto L_0x03ee
            java.util.List r0 = java.util.Collections.emptyList()
            r9 = r0
        L_0x03ee:
            c.e.a.a.j.d.a.e r13 = new c.e.a.a.j.d.a.e
            r0 = r13
            r1 = r39
            r2 = r21
            r3 = r36
            r7 = r19
            r8 = r35
            r10 = r18
            r12 = r20
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            return r13
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.j.d.a.h.a(c.e.a.a.j.d.a.h$a, java.lang.String):c.e.a.a.j.d.a.e");
    }

    public static e.b a(ArrayList<e.b> arrayList, String str) {
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            e.b bVar = arrayList.get(i2);
            if (str.equals(bVar.f8745d)) {
                return bVar;
            }
        }
        return null;
    }

    public static f a(e eVar, a aVar, String str) {
        String str2;
        TreeMap treeMap;
        DrmInitData drmInitData;
        long j2;
        long j3;
        e eVar2 = eVar;
        boolean z2 = eVar2.f8771c;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        TreeMap treeMap2 = new TreeMap();
        String str3 = "";
        char c2 = 0;
        int i2 = 1;
        boolean z3 = z2;
        long j4 = -9223372036854775807L;
        long j5 = -9223372036854775807L;
        String str4 = str3;
        boolean z4 = false;
        int i3 = 0;
        String str5 = null;
        String str6 = null;
        long j6 = 0;
        int i4 = 0;
        long j7 = 0;
        int i5 = 1;
        boolean z5 = false;
        DrmInitData drmInitData2 = null;
        long j8 = 0;
        long j9 = 0;
        DrmInitData drmInitData3 = null;
        boolean z6 = false;
        String str7 = null;
        long j10 = -1;
        int i6 = 0;
        long j11 = 0;
        f.a aVar2 = null;
        while (true) {
            long j12 = 0;
            while (aVar.a()) {
                String b2 = aVar.b();
                if (b2.startsWith("#EXT")) {
                    arrayList2.add(b2);
                }
                if (b2.startsWith("#EXT-X-PLAYLIST-TYPE")) {
                    String b3 = b(b2, m, hashMap);
                    if ("VOD".equals(b3)) {
                        i3 = 1;
                    } else if ("EVENT".equals(b3)) {
                        i3 = 2;
                    }
                } else if (b2.startsWith("#EXT-X-START")) {
                    j4 = (long) (a(b2, q) * 1000000.0d);
                } else if (b2.startsWith("#EXT-X-MAP")) {
                    String b4 = b(b2, w, hashMap);
                    String a2 = a(b2, s, (Map<String, String>) hashMap);
                    if (a2 != null) {
                        String[] split = a2.split("@");
                        long parseLong = Long.parseLong(split[c2]);
                        if (split.length > i2) {
                            j8 = Long.parseLong(split[i2]);
                        }
                        j2 = parseLong;
                        j3 = j8;
                    } else {
                        j3 = j8;
                        j2 = j10;
                    }
                    if (str5 == null || str7 != null) {
                        aVar2 = new f.a(b4, j3, j2, str5, str7);
                        c2 = 0;
                        j8 = 0;
                        j10 = -1;
                    } else {
                        throw new ParserException("The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128.");
                    }
                } else {
                    if (b2.startsWith("#EXT-X-TARGETDURATION")) {
                        j5 = ((long) b(b2, f8782k)) * RetryManager.NANOSECONDS_IN_MS;
                    } else if (b2.startsWith("#EXT-X-MEDIA-SEQUENCE")) {
                        j9 = c(b2, n);
                        j7 = j9;
                    } else if (b2.startsWith("#EXT-X-VERSION")) {
                        i5 = b(b2, f8783l);
                    } else {
                        if (b2.startsWith("#EXT-X-DEFINE")) {
                            String a3 = a(b2, I, (Map<String, String>) hashMap);
                            if (a3 != null) {
                                String str8 = eVar2.m.get(a3);
                                if (str8 != null) {
                                    hashMap.put(a3, str8);
                                }
                            } else {
                                hashMap.put(b(b2, A, hashMap), b(b2, H, hashMap));
                            }
                        } else if (b2.startsWith("#EXTINF")) {
                            str4 = a(b2, p, str3, hashMap);
                            j12 = (long) (a(b2, o) * 1000000.0d);
                        } else if (b2.startsWith("#EXT-X-KEY")) {
                            String b5 = b(b2, t, hashMap);
                            String a4 = a(b2, u, "identity", hashMap);
                            if ("NONE".equals(b5)) {
                                treeMap2.clear();
                                str5 = null;
                                drmInitData3 = null;
                                str7 = null;
                            } else {
                                String a5 = a(b2, x, (Map<String, String>) hashMap);
                                if (!"identity".equals(a4)) {
                                    if (str6 == null) {
                                        str6 = b(b5);
                                    }
                                    DrmInitData.SchemeData a6 = a(b2, a4, (Map<String, String>) hashMap);
                                    if (a6 != null) {
                                        treeMap2.put(a4, a6);
                                        str7 = a5;
                                        str5 = null;
                                        drmInitData3 = null;
                                    }
                                } else if ("AES-128".equals(b5)) {
                                    str5 = b(b2, w, hashMap);
                                    str7 = a5;
                                }
                                str7 = a5;
                                str5 = null;
                            }
                        } else if (b2.startsWith("#EXT-X-BYTERANGE")) {
                            String[] split2 = b(b2, r, hashMap).split("@");
                            j10 = Long.parseLong(split2[0]);
                            if (split2.length > i2) {
                                j8 = Long.parseLong(split2[i2]);
                            }
                        } else if (b2.startsWith("#EXT-X-DISCONTINUITY-SEQUENCE")) {
                            i4 = Integer.parseInt(b2.substring(b2.indexOf(58) + i2));
                            z4 = true;
                        } else if (b2.equals("#EXT-X-DISCONTINUITY")) {
                            i6++;
                        } else if (b2.startsWith("#EXT-X-PROGRAM-DATE-TIME")) {
                            if (j6 == 0) {
                                j6 = C0744q.a(I.i(b2.substring(b2.indexOf(58) + i2))) - j11;
                            }
                        } else if (b2.equals("#EXT-X-GAP")) {
                            c2 = 0;
                            z6 = true;
                        } else if (b2.equals("#EXT-X-INDEPENDENT-SEGMENTS")) {
                            c2 = 0;
                            z3 = true;
                        } else if (b2.equals("#EXT-X-ENDLIST")) {
                            c2 = 0;
                            z5 = true;
                        } else if (!b2.startsWith("#")) {
                            String hexString = str5 == null ? null : str7 != null ? str7 : Long.toHexString(j9);
                            long j13 = j9 + 1;
                            long j14 = j10 == -1 ? 0 : j8;
                            if (drmInitData3 != null || treeMap2.isEmpty()) {
                                treeMap = treeMap2;
                                str2 = str3;
                                drmInitData = drmInitData3;
                            } else {
                                DrmInitData.SchemeData[] schemeDataArr = (DrmInitData.SchemeData[]) treeMap2.values().toArray(new DrmInitData.SchemeData[0]);
                                drmInitData = new DrmInitData(str6, schemeDataArr);
                                if (drmInitData2 == null) {
                                    DrmInitData.SchemeData[] schemeDataArr2 = new DrmInitData.SchemeData[schemeDataArr.length];
                                    treeMap = treeMap2;
                                    str2 = str3;
                                    int i7 = 0;
                                    while (i7 < schemeDataArr.length) {
                                        schemeDataArr2[i7] = schemeDataArr[i7].a((byte[]) null);
                                        i7++;
                                        schemeDataArr = schemeDataArr;
                                    }
                                    drmInitData2 = new DrmInitData(str6, schemeDataArr2);
                                } else {
                                    treeMap = treeMap2;
                                    str2 = str3;
                                }
                            }
                            f.a aVar3 = new f.a(c(b2, (Map<String, String>) hashMap), aVar2, str4, j12, i6, j11, drmInitData, str5, hexString, j14, j10, z6);
                            arrayList.add(aVar3);
                            j11 += j12;
                            if (j10 != -1) {
                                j14 += j10;
                            }
                            j8 = j14;
                            eVar2 = eVar;
                            j10 = -1;
                            j9 = j13;
                            drmInitData3 = drmInitData;
                            treeMap2 = treeMap;
                            str3 = str2;
                            str4 = str3;
                            c2 = 0;
                            i2 = 1;
                            z6 = false;
                        }
                        eVar2 = eVar;
                        treeMap2 = treeMap2;
                        str3 = str3;
                        c2 = 0;
                        i2 = 1;
                    }
                    c2 = 0;
                }
            }
            f fVar = new f(i3, str, arrayList2, j4, j6, z4, i4, j7, i5, j5, z3, z5, j6 != 0, drmInitData2, arrayList);
            return fVar;
        }
    }

    public static int a(String str, Map<String, String> map) {
        String a2 = a(str, f8778g, map);
        if (a2 != null) {
            return Integer.parseInt(I.b(a2, "/")[0]);
        }
        return -1;
    }

    public static DrmInitData.SchemeData a(String str, String str2, Map<String, String> map) {
        String a2 = a(str, v, "1", map);
        if ("urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed".equals(str2)) {
            String b2 = b(str, w, map);
            return new DrmInitData.SchemeData(C0744q.f9731d, "video/mp4", Base64.decode(b2.substring(b2.indexOf(44)), 0));
        } else if ("com.widevine".equals(str2)) {
            return new DrmInitData.SchemeData(C0744q.f9731d, "hls", I.e(str));
        } else {
            if (!"com.microsoft.playready".equals(str2) || !"1".equals(a2)) {
                return null;
            }
            String b3 = b(str, w, map);
            return new DrmInitData.SchemeData(C0744q.f9732e, "video/mp4", l.a(C0744q.f9732e, Base64.decode(b3.substring(b3.indexOf(44)), 0)));
        }
    }

    public static double a(String str, Pattern pattern) {
        return Double.parseDouble(b(str, pattern, Collections.emptyMap()));
    }

    public static String a(String str, Pattern pattern, Map<String, String> map) {
        return a(str, pattern, null, map);
    }

    public static String a(String str, Pattern pattern, String str2, Map<String, String> map) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find()) {
            str2 = matcher.group(1);
        }
        return (map.isEmpty() || str2 == null) ? str2 : c(str2, map);
    }

    public static boolean a(String str, Pattern pattern, boolean z2) {
        Matcher matcher = pattern.matcher(str);
        return matcher.find() ? matcher.group(1).equals("YES") : z2;
    }

    public static Pattern a(String str) {
        return Pattern.compile(str + "=(" + "NO" + "|" + "YES" + ")");
    }
}
