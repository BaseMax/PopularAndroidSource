package com.a.a.c;

import android.os.AsyncTask;
import androidx.exifinterface.media.ExifInterface;
import io.fabric.sdk.android.c;

public final class g {
    public final void throwRuntimeException(String str) {
        throw new RuntimeException(str);
    }

    public final int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public final void indexOutOfBounds() {
        c.getLogger().d(j.TAG, "Out of bounds value: ".concat(String.valueOf(new int[2][10])));
    }

    public final void crashAsyncTask(final long j) {
        new AsyncTask<Void, Void, Void>() {
            /* access modifiers changed from: protected */
            public final /* synthetic */ Object doInBackground(Object[] objArr) {
                return a();
            }

            private Void a() {
                try {
                    Thread.sleep(j);
                } catch (InterruptedException unused) {
                }
                g.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute(new Void[]{null});
    }

    public final void throwFiveChainedExceptions() {
        try {
            throw new RuntimeException("1");
        } catch (Exception e) {
            throw new RuntimeException(ExifInterface.GPS_MEASUREMENT_2D, e);
        } catch (Exception e2) {
            try {
                throw new RuntimeException(ExifInterface.GPS_MEASUREMENT_3D, e2);
            } catch (Exception e3) {
                try {
                    throw new RuntimeException("4", e3);
                } catch (Exception e4) {
                    throw new RuntimeException("5", e4);
                }
            }
        }
    }
}
