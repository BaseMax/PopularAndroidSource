package com.mapbox.mapboxsdk.maps;

import android.os.Handler;
import android.os.Message;
import com.mapbox.mapboxsdk.maps.MapboxMap;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

class CameraChangeDispatcher implements MapboxMap.OnCameraIdleListener, MapboxMap.OnCameraMoveCanceledListener, MapboxMap.OnCameraMoveListener, MapboxMap.OnCameraMoveStartedListener {
    private static final int IDLE = 3;
    private static final int MOVE = 1;
    private static final int MOVE_CANCELED = 2;
    private static final int MOVE_STARTED = 0;
    private final CameraChangeHandler handler = new CameraChangeHandler(this);
    /* access modifiers changed from: private */
    public boolean idle = true;
    private int moveStartedReason;
    private final CopyOnWriteArrayList<MapboxMap.OnCameraIdleListener> onCameraIdle = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnCameraMoveListener> onCameraMove = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnCameraMoveCanceledListener> onCameraMoveCanceled = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<MapboxMap.OnCameraMoveStartedListener> onCameraMoveStarted = new CopyOnWriteArrayList<>();

    static class CameraChangeHandler extends Handler {
        private WeakReference<CameraChangeDispatcher> dispatcherWeakReference;

        CameraChangeHandler(CameraChangeDispatcher cameraChangeDispatcher) {
            this.dispatcherWeakReference = new WeakReference<>(cameraChangeDispatcher);
        }

        public void handleMessage(Message message) {
            CameraChangeDispatcher cameraChangeDispatcher = (CameraChangeDispatcher) this.dispatcherWeakReference.get();
            if (cameraChangeDispatcher != null) {
                int i = message.what;
                if (i == 0) {
                    cameraChangeDispatcher.executeOnCameraMoveStarted();
                } else if (i == 1) {
                    cameraChangeDispatcher.executeOnCameraMove();
                } else if (i == 2) {
                    cameraChangeDispatcher.executeOnCameraMoveCancelled();
                } else if (i == 3) {
                    cameraChangeDispatcher.executeOnCameraIdle();
                }
            }
        }

        /* access modifiers changed from: package-private */
        public void scheduleMessage(int i) {
            CameraChangeDispatcher cameraChangeDispatcher = (CameraChangeDispatcher) this.dispatcherWeakReference.get();
            if (cameraChangeDispatcher != null) {
                if (i == 0) {
                    boolean z = !cameraChangeDispatcher.idle && (hasMessages(3) || hasMessages(2));
                    removeMessages(3);
                    removeMessages(2);
                    if (z) {
                        return;
                    }
                }
                Message message = new Message();
                message.what = i;
                sendMessage(message);
            }
        }
    }

    CameraChangeDispatcher() {
    }

    public void onCameraMoveStarted(int i) {
        this.moveStartedReason = i;
        this.handler.scheduleMessage(0);
    }

    public void onCameraMove() {
        this.handler.scheduleMessage(1);
    }

    public void onCameraMoveCanceled() {
        this.handler.scheduleMessage(2);
    }

    public void onCameraIdle() {
        this.handler.scheduleMessage(3);
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraIdleListener(MapboxMap.OnCameraIdleListener onCameraIdleListener) {
        this.onCameraIdle.add(onCameraIdleListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraIdleListener(MapboxMap.OnCameraIdleListener onCameraIdleListener) {
        if (this.onCameraIdle.contains(onCameraIdleListener)) {
            this.onCameraIdle.remove(onCameraIdleListener);
        }
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraMoveCancelListener(MapboxMap.OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        this.onCameraMoveCanceled.add(onCameraMoveCanceledListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraMoveCancelListener(MapboxMap.OnCameraMoveCanceledListener onCameraMoveCanceledListener) {
        if (this.onCameraMoveCanceled.contains(onCameraMoveCanceledListener)) {
            this.onCameraMoveCanceled.remove(onCameraMoveCanceledListener);
        }
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraMoveStartedListener(MapboxMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        this.onCameraMoveStarted.add(onCameraMoveStartedListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraMoveStartedListener(MapboxMap.OnCameraMoveStartedListener onCameraMoveStartedListener) {
        if (this.onCameraMoveStarted.contains(onCameraMoveStartedListener)) {
            this.onCameraMoveStarted.remove(onCameraMoveStartedListener);
        }
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraMoveListener(MapboxMap.OnCameraMoveListener onCameraMoveListener) {
        this.onCameraMove.add(onCameraMoveListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraMoveListener(MapboxMap.OnCameraMoveListener onCameraMoveListener) {
        if (this.onCameraMove.contains(onCameraMoveListener)) {
            this.onCameraMove.remove(onCameraMoveListener);
        }
    }

    /* access modifiers changed from: private */
    public void executeOnCameraMoveStarted() {
        if (this.idle) {
            this.idle = false;
            if (!this.onCameraMoveStarted.isEmpty()) {
                Iterator<MapboxMap.OnCameraMoveStartedListener> it = this.onCameraMoveStarted.iterator();
                while (it.hasNext()) {
                    it.next().onCameraMoveStarted(this.moveStartedReason);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void executeOnCameraMove() {
        if (!this.onCameraMove.isEmpty() && !this.idle) {
            Iterator<MapboxMap.OnCameraMoveListener> it = this.onCameraMove.iterator();
            while (it.hasNext()) {
                it.next().onCameraMove();
            }
        }
    }

    /* access modifiers changed from: private */
    public void executeOnCameraMoveCancelled() {
        if (!this.onCameraMoveCanceled.isEmpty() && !this.idle) {
            Iterator<MapboxMap.OnCameraMoveCanceledListener> it = this.onCameraMoveCanceled.iterator();
            while (it.hasNext()) {
                it.next().onCameraMoveCanceled();
            }
        }
    }

    /* access modifiers changed from: private */
    public void executeOnCameraIdle() {
        if (!this.idle) {
            this.idle = true;
            if (!this.onCameraIdle.isEmpty()) {
                Iterator<MapboxMap.OnCameraIdleListener> it = this.onCameraIdle.iterator();
                while (it.hasNext()) {
                    it.next().onCameraIdle();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void onDestroy() {
        this.handler.removeCallbacksAndMessages(null);
        this.onCameraMoveStarted.clear();
        this.onCameraMoveCanceled.clear();
        this.onCameraMove.clear();
        this.onCameraIdle.clear();
    }
}
