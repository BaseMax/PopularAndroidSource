package com.crashlytics.android.core;

import android.os.AsyncTask;
import e.a.a.a.f;
import e.a.a.a.o;

public class CrashTest {
    private void privateMethodThatThrowsException(String str) {
        throw new RuntimeException(str);
    }

    public void crashAsyncTask(final long j2) {
        new AsyncTask<Void, Void, Void>() {
            public Void doInBackground(Void... voidArr) {
                try {
                    Thread.sleep(j2);
                } catch (InterruptedException unused) {
                }
                CrashTest.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute(new Void[]{null});
    }

    public void indexOutOfBounds() {
        int i2 = new int[2][10];
        o e2 = f.e();
        e2.d(CrashlyticsCore.TAG, "Out of bounds value: " + i2);
    }

    public int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public void throwFiveChainedExceptions() {
        try {
            privateMethodThatThrowsException("1");
            throw null;
        } catch (Exception e2) {
            throw new RuntimeException("2", e2);
        } catch (Exception e3) {
            try {
                throw new RuntimeException("3", e3);
            } catch (Exception e4) {
                try {
                    throw new RuntimeException("4", e4);
                } catch (Exception e5) {
                    throw new RuntimeException("5", e5);
                }
            }
        }
    }

    public void throwRuntimeException(String str) {
        throw new RuntimeException(str);
    }
}
