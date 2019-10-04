package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar extends ProgressBar {
    private static final int MIN_DELAY = 500;
    private static final int MIN_SHOW_TIME = 500;
    private final Runnable mDelayedHide;
    private final Runnable mDelayedShow;
    boolean mDismissed;
    boolean mPostedHide;
    boolean mPostedShow;
    long mStartTime;

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mStartTime = -1;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() {
            public void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
                contentLoadingProgressBar.mPostedHide = false;
                contentLoadingProgressBar.mStartTime = -1;
                contentLoadingProgressBar.setVisibility(8);
            }
        };
        this.mDelayedShow = new Runnable() {
            public void run() {
                ContentLoadingProgressBar contentLoadingProgressBar = ContentLoadingProgressBar.this;
                contentLoadingProgressBar.mPostedShow = false;
                if (!contentLoadingProgressBar.mDismissed) {
                    ContentLoadingProgressBar.this.mStartTime = System.currentTimeMillis();
                    ContentLoadingProgressBar.this.setVisibility(0);
                }
            }
        };
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks();
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks();
    }

    private void removeCallbacks() {
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002f, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void hide() {
        /*
            r10 = this;
            monitor-enter(r10)
            r0 = 1
            r10.mDismissed = r0     // Catch:{ all -> 0x0037 }
            java.lang.Runnable r1 = r10.mDelayedShow     // Catch:{ all -> 0x0037 }
            r10.removeCallbacks(r1)     // Catch:{ all -> 0x0037 }
            r1 = 0
            r10.mPostedShow = r1     // Catch:{ all -> 0x0037 }
            long r1 = java.lang.System.currentTimeMillis()     // Catch:{ all -> 0x0037 }
            long r3 = r10.mStartTime     // Catch:{ all -> 0x0037 }
            long r1 = r1 - r3
            r3 = 500(0x1f4, double:2.47E-321)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 >= 0) goto L_0x0030
            long r5 = r10.mStartTime     // Catch:{ all -> 0x0037 }
            r7 = -1
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 != 0) goto L_0x0022
            goto L_0x0030
        L_0x0022:
            boolean r5 = r10.mPostedHide     // Catch:{ all -> 0x0037 }
            if (r5 != 0) goto L_0x002e
            java.lang.Runnable r5 = r10.mDelayedHide     // Catch:{ all -> 0x0037 }
            long r3 = r3 - r1
            r10.postDelayed(r5, r3)     // Catch:{ all -> 0x0037 }
            r10.mPostedHide = r0     // Catch:{ all -> 0x0037 }
        L_0x002e:
            monitor-exit(r10)
            return
        L_0x0030:
            r0 = 8
            r10.setVisibility(r0)     // Catch:{ all -> 0x0037 }
            monitor-exit(r10)
            return
        L_0x0037:
            r0 = move-exception
            monitor-exit(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.ContentLoadingProgressBar.hide():void");
    }

    public synchronized void show() {
        this.mStartTime = -1;
        this.mDismissed = false;
        removeCallbacks(this.mDelayedHide);
        this.mPostedHide = false;
        if (!this.mPostedShow) {
            postDelayed(this.mDelayedShow, 500);
            this.mPostedShow = true;
        }
    }
}
