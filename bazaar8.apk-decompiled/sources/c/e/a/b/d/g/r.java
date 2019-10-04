package c.e.a.b.d.g;

import com.crashlytics.android.answers.AnswersRetryFilesSender;

public final class r {
    public static int a(int i2) {
        if (i2 == -1) {
            return -1;
        }
        return i2 / AnswersRetryFilesSender.BACKOFF_MS;
    }
}
