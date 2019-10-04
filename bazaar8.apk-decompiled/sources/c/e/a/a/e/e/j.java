package c.e.a.a.e.e;

import c.e.a.a.e.k;
import c.e.a.a.o.I;
import c.e.a.a.o.p;
import c.e.a.a.o.v;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.extractor.mp4.MdtaMetadataEntry;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.Id3Frame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import com.google.android.exoplayer2.metadata.id3.TextInformationFrame;
import java.nio.ByteBuffer;

/* compiled from: MetadataUtil */
public final class j {
    public static final int A = I.b("sosn");
    public static final int B = I.b("tvsh");
    public static final int C = I.b("----");
    public static final String[] D = {"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "BritPop", "Negerpunk", "Polsk Punk", "Beat", "Christian Gangsta Rap", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "Jpop", "Synthpop"};

    /* renamed from: a  reason: collision with root package name */
    public static final int f7832a = I.b("nam");

    /* renamed from: b  reason: collision with root package name */
    public static final int f7833b = I.b("trk");

    /* renamed from: c  reason: collision with root package name */
    public static final int f7834c = I.b("cmt");

    /* renamed from: d  reason: collision with root package name */
    public static final int f7835d = I.b("day");

    /* renamed from: e  reason: collision with root package name */
    public static final int f7836e = I.b("ART");

    /* renamed from: f  reason: collision with root package name */
    public static final int f7837f = I.b("too");

    /* renamed from: g  reason: collision with root package name */
    public static final int f7838g = I.b("alb");

    /* renamed from: h  reason: collision with root package name */
    public static final int f7839h = I.b("com");

    /* renamed from: i  reason: collision with root package name */
    public static final int f7840i = I.b("wrt");

    /* renamed from: j  reason: collision with root package name */
    public static final int f7841j = I.b("lyr");

    /* renamed from: k  reason: collision with root package name */
    public static final int f7842k = I.b("gen");

    /* renamed from: l  reason: collision with root package name */
    public static final int f7843l = I.b("covr");
    public static final int m = I.b("gnre");
    public static final int n = I.b("grp");
    public static final int o = I.b("disk");
    public static final int p = I.b("trkn");
    public static final int q = I.b("tmpo");
    public static final int r = I.b("cpil");
    public static final int s = I.b("aART");
    public static final int t = I.b("sonm");
    public static final int u = I.b("soal");
    public static final int v = I.b("soar");
    public static final int w = I.b("soaa");
    public static final int x = I.b("soco");
    public static final int y = I.b("rtng");
    public static final int z = I.b("pgap");

    public static Format a(int i2, Format format, Metadata metadata, Metadata metadata2, k kVar) {
        if (i2 == 1) {
            if (kVar.a()) {
                format = format.a(kVar.f8305b, kVar.f8306c);
            }
            if (metadata != null) {
                return format.a(metadata);
            }
            return format;
        } else if (i2 != 2 || metadata2 == null) {
            return format;
        } else {
            Format format2 = format;
            for (int i3 = 0; i3 < metadata2.a(); i3++) {
                Metadata.Entry a2 = metadata2.a(i3);
                if (a2 instanceof MdtaMetadataEntry) {
                    MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) a2;
                    if ("com.android.capture.fps".equals(mdtaMetadataEntry.f12573a) && mdtaMetadataEntry.f12576d == 23) {
                        try {
                            format2 = format2.a(ByteBuffer.wrap(mdtaMetadataEntry.f12574b).asFloatBuffer().get()).a(new Metadata(mdtaMetadataEntry));
                        } catch (NumberFormatException unused) {
                            p.d("MetadataUtil", "Ignoring invalid framerate");
                        }
                    }
                }
            }
            return format2;
        }
    }

    public static Metadata.Entry b(v vVar) {
        int c2 = vVar.c() + vVar.i();
        int i2 = vVar.i();
        int i3 = (i2 >> 24) & 255;
        if (i3 == 169 || i3 == 253) {
            int i4 = 16777215 & i2;
            if (i4 == f7834c) {
                CommentFrame a2 = a(i2, vVar);
                vVar.e(c2);
                return a2;
            }
            if (i4 != f7832a) {
                if (i4 != f7833b) {
                    if (i4 != f7839h) {
                        if (i4 != f7840i) {
                            if (i4 == f7835d) {
                                TextInformationFrame b2 = b(i2, "TDRC", vVar);
                                vVar.e(c2);
                                return b2;
                            } else if (i4 == f7836e) {
                                TextInformationFrame b3 = b(i2, "TPE1", vVar);
                                vVar.e(c2);
                                return b3;
                            } else if (i4 == f7837f) {
                                TextInformationFrame b4 = b(i2, "TSSE", vVar);
                                vVar.e(c2);
                                return b4;
                            } else if (i4 == f7838g) {
                                TextInformationFrame b5 = b(i2, "TALB", vVar);
                                vVar.e(c2);
                                return b5;
                            } else if (i4 == f7841j) {
                                TextInformationFrame b6 = b(i2, "USLT", vVar);
                                vVar.e(c2);
                                return b6;
                            } else if (i4 == f7842k) {
                                TextInformationFrame b7 = b(i2, "TCON", vVar);
                                vVar.e(c2);
                                return b7;
                            } else if (i4 == n) {
                                TextInformationFrame b8 = b(i2, "TIT1", vVar);
                                vVar.e(c2);
                                return b8;
                            }
                        }
                    }
                    TextInformationFrame b9 = b(i2, "TCOM", vVar);
                    vVar.e(c2);
                    return b9;
                }
            }
            TextInformationFrame b10 = b(i2, "TIT2", vVar);
            vVar.e(c2);
            return b10;
        }
        try {
            if (i2 == m) {
                return c(vVar);
            }
            if (i2 == o) {
                TextInformationFrame a3 = a(i2, "TPOS", vVar);
                vVar.e(c2);
                return a3;
            } else if (i2 == p) {
                TextInformationFrame a4 = a(i2, "TRCK", vVar);
                vVar.e(c2);
                return a4;
            } else if (i2 == q) {
                Id3Frame a5 = a(i2, "TBPM", vVar, true, false);
                vVar.e(c2);
                return a5;
            } else if (i2 == r) {
                Id3Frame a6 = a(i2, "TCMP", vVar, true, true);
                vVar.e(c2);
                return a6;
            } else if (i2 == f7843l) {
                ApicFrame a7 = a(vVar);
                vVar.e(c2);
                return a7;
            } else if (i2 == s) {
                TextInformationFrame b11 = b(i2, "TPE2", vVar);
                vVar.e(c2);
                return b11;
            } else if (i2 == t) {
                TextInformationFrame b12 = b(i2, "TSOT", vVar);
                vVar.e(c2);
                return b12;
            } else if (i2 == u) {
                TextInformationFrame b13 = b(i2, "TSO2", vVar);
                vVar.e(c2);
                return b13;
            } else if (i2 == v) {
                TextInformationFrame b14 = b(i2, "TSOA", vVar);
                vVar.e(c2);
                return b14;
            } else if (i2 == w) {
                TextInformationFrame b15 = b(i2, "TSOP", vVar);
                vVar.e(c2);
                return b15;
            } else if (i2 == x) {
                TextInformationFrame b16 = b(i2, "TSOC", vVar);
                vVar.e(c2);
                return b16;
            } else if (i2 == y) {
                Id3Frame a8 = a(i2, "ITUNESADVISORY", vVar, false, false);
                vVar.e(c2);
                return a8;
            } else if (i2 == z) {
                Id3Frame a9 = a(i2, "ITUNESGAPLESS", vVar, false, true);
                vVar.e(c2);
                return a9;
            } else if (i2 == A) {
                TextInformationFrame b17 = b(i2, "TVSHOWSORT", vVar);
                vVar.e(c2);
                return b17;
            } else if (i2 == B) {
                TextInformationFrame b18 = b(i2, "TVSHOW", vVar);
                vVar.e(c2);
                return b18;
            } else if (i2 == C) {
                Id3Frame a10 = a(vVar, c2);
                vVar.e(c2);
                return a10;
            }
        } finally {
            vVar.e(c2);
        }
        p.a("MetadataUtil", "Skipped unknown metadata entry: " + c.a(i2));
        vVar.e(c2);
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:7:0x0014  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x001c  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static com.google.android.exoplayer2.metadata.id3.TextInformationFrame c(c.e.a.a.o.v r3) {
        /*
            int r3 = d(r3)
            r0 = 0
            if (r3 <= 0) goto L_0x0011
            java.lang.String[] r1 = D
            int r2 = r1.length
            if (r3 > r2) goto L_0x0011
            int r3 = r3 + -1
            r3 = r1[r3]
            goto L_0x0012
        L_0x0011:
            r3 = r0
        L_0x0012:
            if (r3 == 0) goto L_0x001c
            com.google.android.exoplayer2.metadata.id3.TextInformationFrame r1 = new com.google.android.exoplayer2.metadata.id3.TextInformationFrame
            java.lang.String r2 = "TCON"
            r1.<init>(r2, r0, r3)
            return r1
        L_0x001c:
            java.lang.String r3 = "MetadataUtil"
            java.lang.String r1 = "Failed to parse standard genre code"
            c.e.a.a.o.p.d(r3, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.a.e.e.j.c(c.e.a.a.o.v):com.google.android.exoplayer2.metadata.id3.TextInformationFrame");
    }

    public static int d(v vVar) {
        vVar.f(4);
        if (vVar.i() == c.Ta) {
            vVar.f(8);
            return vVar.u();
        }
        p.d("MetadataUtil", "Failed to parse uint8 attribute value");
        return -1;
    }

    public static MdtaMetadataEntry a(v vVar, int i2, String str) {
        while (true) {
            int c2 = vVar.c();
            if (c2 >= i2) {
                return null;
            }
            int i3 = vVar.i();
            if (vVar.i() == c.Ta) {
                int i4 = vVar.i();
                int i5 = vVar.i();
                int i6 = i3 - 16;
                byte[] bArr = new byte[i6];
                vVar.a(bArr, 0, i6);
                return new MdtaMetadataEntry(str, bArr, i5, i4);
            }
            vVar.e(c2 + i3);
        }
    }

    public static CommentFrame a(int i2, v vVar) {
        int i3 = vVar.i();
        if (vVar.i() == c.Ta) {
            vVar.f(8);
            String a2 = vVar.a(i3 - 16);
            return new CommentFrame("und", a2, a2);
        }
        p.d("MetadataUtil", "Failed to parse comment attribute: " + c.a(i2));
        return null;
    }

    public static Id3Frame a(int i2, String str, v vVar, boolean z2, boolean z3) {
        Id3Frame id3Frame;
        int d2 = d(vVar);
        if (z3) {
            d2 = Math.min(1, d2);
        }
        if (d2 >= 0) {
            if (z2) {
                id3Frame = new TextInformationFrame(str, null, Integer.toString(d2));
            } else {
                id3Frame = new CommentFrame("und", str, Integer.toString(d2));
            }
            return id3Frame;
        }
        p.d("MetadataUtil", "Failed to parse uint8 attribute: " + c.a(i2));
        return null;
    }

    public static TextInformationFrame a(int i2, String str, v vVar) {
        int i3 = vVar.i();
        if (vVar.i() == c.Ta && i3 >= 22) {
            vVar.f(10);
            if (vVar.A() > 0) {
                String str2 = "" + r0;
                if (vVar.A() > 0) {
                    str2 = str2 + "/" + r6;
                }
                return new TextInformationFrame(str, null, str2);
            }
        }
        p.d("MetadataUtil", "Failed to parse index/count attribute: " + c.a(i2));
        return null;
    }

    public static ApicFrame a(v vVar) {
        int i2 = vVar.i();
        if (vVar.i() == c.Ta) {
            int b2 = c.b(vVar.i());
            String str = b2 == 13 ? "image/jpeg" : b2 == 14 ? "image/png" : null;
            if (str == null) {
                p.d("MetadataUtil", "Unrecognized cover art flags: " + b2);
                return null;
            }
            vVar.f(4);
            byte[] bArr = new byte[(i2 - 16)];
            vVar.a(bArr, 0, bArr.length);
            return new ApicFrame(str, null, 3, bArr);
        }
        p.d("MetadataUtil", "Failed to parse cover art attribute");
        return null;
    }

    public static Id3Frame a(v vVar, int i2) {
        String str = null;
        String str2 = null;
        int i3 = -1;
        int i4 = -1;
        while (vVar.c() < i2) {
            int c2 = vVar.c();
            int i5 = vVar.i();
            int i6 = vVar.i();
            vVar.f(4);
            if (i6 == c.Ra) {
                str = vVar.a(i5 - 12);
            } else if (i6 == c.Sa) {
                str2 = vVar.a(i5 - 12);
            } else {
                if (i6 == c.Ta) {
                    i3 = c2;
                    i4 = i5;
                }
                vVar.f(i5 - 12);
            }
        }
        if (str == null || str2 == null || i3 == -1) {
            return null;
        }
        vVar.e(i3);
        vVar.f(16);
        return new InternalFrame(str, str2, vVar.a(i4 - 16));
    }

    public static TextInformationFrame b(int i2, String str, v vVar) {
        int i3 = vVar.i();
        if (vVar.i() == c.Ta) {
            vVar.f(8);
            return new TextInformationFrame(str, null, vVar.a(i3 - 16));
        }
        p.d("MetadataUtil", "Failed to parse text attribute: " + c.a(i2));
        return null;
    }
}
