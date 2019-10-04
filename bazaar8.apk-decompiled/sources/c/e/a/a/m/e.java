package c.e.a.a.m;

import android.content.res.Resources;
import android.text.TextUtils;
import c.e.a.a.o.C0737e;
import c.e.a.a.o.I;
import c.e.a.a.o.s;
import com.google.android.exoplayer2.Format;
import java.util.Locale;

/* compiled from: DefaultTrackNameProvider */
public class e implements q {

    /* renamed from: a  reason: collision with root package name */
    public final Resources f9417a;

    public e(Resources resources) {
        C0737e.a(resources);
        this.f9417a = resources;
    }

    public static int i(Format format) {
        int f2 = s.f(format.f12514i);
        if (f2 != -1) {
            return f2;
        }
        if (s.i(format.f12511f) != null) {
            return 2;
        }
        if (s.a(format.f12511f) != null) {
            return 1;
        }
        if (format.n != -1 || format.o != -1) {
            return 2;
        }
        if (format.v == -1 && format.w == -1) {
            return -1;
        }
        return 1;
    }

    public String a(Format format) {
        String str;
        int i2 = i(format);
        if (i2 == 2) {
            str = a(h(format), g(format), c(format));
        } else if (i2 == 1) {
            str = a(e(format), b(format), c(format));
        } else {
            str = e(format);
        }
        return str.length() == 0 ? this.f9417a.getString(m.exo_track_unknown) : str;
    }

    public final String b(Format format) {
        int i2 = format.v;
        if (i2 == -1 || i2 < 1) {
            return "";
        }
        if (i2 == 1) {
            return this.f9417a.getString(m.exo_track_mono);
        }
        if (i2 == 2) {
            return this.f9417a.getString(m.exo_track_stereo);
        }
        if (i2 == 6 || i2 == 7) {
            return this.f9417a.getString(m.exo_track_surround_5_point_1);
        }
        if (i2 != 8) {
            return this.f9417a.getString(m.exo_track_surround);
        }
        return this.f9417a.getString(m.exo_track_surround_7_point_1);
    }

    public final String c(Format format) {
        int i2 = format.f12510e;
        if (i2 == -1) {
            return "";
        }
        return this.f9417a.getString(m.exo_track_bitrate, new Object[]{Float.valueOf(((float) i2) / 1000000.0f)});
    }

    public final String d(Format format) {
        return TextUtils.isEmpty(format.f12507b) ? "" : format.f12507b;
    }

    public final String e(Format format) {
        String a2 = a(f(format), h(format));
        return TextUtils.isEmpty(a2) ? d(format) : a2;
    }

    public final String f(Format format) {
        String str = format.A;
        if (TextUtils.isEmpty(str) || "und".equals(str)) {
            return "";
        }
        return (I.f9565a >= 21 ? Locale.forLanguageTag(str) : new Locale(str)).getDisplayName();
    }

    public final String g(Format format) {
        int i2 = format.n;
        int i3 = format.o;
        if (i2 == -1 || i3 == -1) {
            return "";
        }
        return this.f9417a.getString(m.exo_track_resolution, new Object[]{Integer.valueOf(i2), Integer.valueOf(i3)});
    }

    public final String h(Format format) {
        String string = (format.f12509d & 2) != 0 ? this.f9417a.getString(m.exo_track_role_alternate) : "";
        if ((format.f12509d & 4) != 0) {
            string = a(string, this.f9417a.getString(m.exo_track_role_supplementary));
        }
        if ((format.f12509d & 8) != 0) {
            string = a(string, this.f9417a.getString(m.exo_track_role_commentary));
        }
        if ((format.f12509d & 1088) == 0) {
            return string;
        }
        return a(string, this.f9417a.getString(m.exo_track_role_closed_captions));
    }

    public final String a(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (str2.length() > 0) {
                if (TextUtils.isEmpty(str)) {
                    str = str2;
                } else {
                    str = this.f9417a.getString(m.exo_item_list, new Object[]{str, str2});
                }
            }
        }
        return str;
    }
}
