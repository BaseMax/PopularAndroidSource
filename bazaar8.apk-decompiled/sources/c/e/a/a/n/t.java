package c.e.a.a.n;

import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.crashlytics.android.answers.BackgroundManager;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.upstream.HttpDataSource;
import com.google.android.exoplayer2.upstream.Loader;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: DefaultLoadErrorHandlingPolicy */
public class t implements v {

    /* renamed from: a  reason: collision with root package name */
    public final int f9529a;

    public t() {
        this(-1);
    }

    public long a(int i2, long j2, IOException iOException, int i3) {
        if ((iOException instanceof ParserException) || (iOException instanceof FileNotFoundException) || (iOException instanceof Loader.UnexpectedLoaderException)) {
            return -9223372036854775807L;
        }
        return (long) Math.min((i3 - 1) * AnswersRetryFilesSender.BACKOFF_MS, BackgroundManager.BACKGROUND_DELAY);
    }

    public long b(int i2, long j2, IOException iOException, int i3) {
        if (!(iOException instanceof HttpDataSource.InvalidResponseCodeException)) {
            return -9223372036854775807L;
        }
        int i4 = ((HttpDataSource.InvalidResponseCodeException) iOException).responseCode;
        if (i4 == 404 || i4 == 410) {
            return 60000;
        }
        return -9223372036854775807L;
    }

    public t(int i2) {
        this.f9529a = i2;
    }

    public int a(int i2) {
        int i3 = this.f9529a;
        if (i3 != -1) {
            return i3;
        }
        return i2 == 7 ? 6 : 3;
    }
}
