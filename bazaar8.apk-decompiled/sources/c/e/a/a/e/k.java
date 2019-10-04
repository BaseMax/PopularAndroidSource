package c.e.a.a.e;

import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.CommentFrame;
import com.google.android.exoplayer2.metadata.id3.InternalFrame;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: GaplessInfoHolder */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static final Pattern f8304a = Pattern.compile("^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})");

    /* renamed from: b  reason: collision with root package name */
    public int f8305b = -1;

    /* renamed from: c  reason: collision with root package name */
    public int f8306c = -1;

    public boolean a(int i2) {
        int i3 = i2 >> 12;
        int i4 = i2 & 4095;
        if (i3 <= 0 && i4 <= 0) {
            return false;
        }
        this.f8305b = i3;
        this.f8306c = i4;
        return true;
    }

    public boolean a(Metadata metadata) {
        for (int i2 = 0; i2 < metadata.a(); i2++) {
            Metadata.Entry a2 = metadata.a(i2);
            if (a2 instanceof CommentFrame) {
                CommentFrame commentFrame = (CommentFrame) a2;
                if ("iTunSMPB".equals(commentFrame.f12626c) && a(commentFrame.f12627d)) {
                    return true;
                }
            } else if (a2 instanceof InternalFrame) {
                InternalFrame internalFrame = (InternalFrame) a2;
                if ("com.apple.iTunes".equals(internalFrame.f12633b) && "iTunSMPB".equals(internalFrame.f12634c) && a(internalFrame.f12635d)) {
                    return true;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    public final boolean a(String str) {
        Matcher matcher = f8304a.matcher(str);
        if (matcher.find()) {
            try {
                int parseInt = Integer.parseInt(matcher.group(1), 16);
                int parseInt2 = Integer.parseInt(matcher.group(2), 16);
                if (parseInt > 0 || parseInt2 > 0) {
                    this.f8305b = parseInt;
                    this.f8306c = parseInt2;
                    return true;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return false;
    }

    public boolean a() {
        return (this.f8305b == -1 || this.f8306c == -1) ? false : true;
    }
}
