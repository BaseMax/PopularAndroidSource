package com.mapbox.mapboxsdk.location;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

class StaleStateManager {
    private long delayTime;
    private final StaleMessageHandler handler;
    private final OnLocationStaleListener innerOnLocationStaleListeners;
    private boolean isEnabled;
    private boolean isStale = true;
    private final int staleStateMessage = 1;

    static class StaleMessageHandler extends Handler {
        private final WeakReference<StaleStateManager> managerWeakReference;

        private StaleMessageHandler(StaleStateManager staleStateManager) {
            this.managerWeakReference = new WeakReference<>(staleStateManager);
        }

        public void handleMessage(Message message) {
            StaleStateManager staleStateManager = (StaleStateManager) this.managerWeakReference.get();
            if (staleStateManager != null) {
                staleStateManager.setState(true);
            }
        }
    }

    StaleStateManager(OnLocationStaleListener onLocationStaleListener, LocationComponentOptions locationComponentOptions) {
        this.innerOnLocationStaleListeners = onLocationStaleListener;
        this.handler = new StaleMessageHandler();
        this.isEnabled = locationComponentOptions.enableStaleState();
        this.delayTime = locationComponentOptions.staleStateTimeout();
    }

    /* access modifiers changed from: package-private */
    public void setEnabled(boolean z) {
        if (z) {
            setState(this.isStale);
        } else if (this.isEnabled) {
            onStop();
            this.innerOnLocationStaleListeners.onStaleStateChange(false);
        }
        this.isEnabled = z;
    }

    /* access modifiers changed from: package-private */
    public boolean isStale() {
        return this.isStale;
    }

    /* access modifiers changed from: package-private */
    public void updateLatestLocationTime() {
        setState(false);
        postTheCallback();
    }

    /* access modifiers changed from: package-private */
    public void setDelayTime(long j) {
        this.delayTime = j;
        if (this.handler.hasMessages(1)) {
            postTheCallback();
        }
    }

    /* access modifiers changed from: package-private */
    public void onStart() {
        if (!this.isStale) {
            postTheCallback();
        }
    }

    /* access modifiers changed from: package-private */
    public void onStop() {
        this.handler.removeCallbacksAndMessages(null);
    }

    private void postTheCallback() {
        this.handler.removeCallbacksAndMessages(null);
        this.handler.sendEmptyMessageDelayed(1, this.delayTime);
    }

    /* access modifiers changed from: private */
    public void setState(boolean z) {
        if (z != this.isStale) {
            this.isStale = z;
            if (this.isEnabled) {
                this.innerOnLocationStaleListeners.onStaleStateChange(z);
            }
        }
    }
}
