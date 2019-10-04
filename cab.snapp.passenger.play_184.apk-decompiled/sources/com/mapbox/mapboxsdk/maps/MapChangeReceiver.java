package com.mapbox.mapboxsdk.maps;

import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.maps.MapView;
import com.mapbox.mapboxsdk.maps.NativeMapView;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

class MapChangeReceiver implements NativeMapView.StateCallback {
    private static final String TAG = "Mbgl-MapChangeReceiver";
    private final List<MapView.OnCameraDidChangeListener> onCameraDidChangeListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnCameraIsChangingListener> onCameraIsChangingListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnCameraWillChangeListener> onCameraWillChangeListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnCanRemoveUnusedStyleImageListener> onCanRemoveUnusedStyleImageListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnDidBecomeIdleListener> onDidBecomeIdleListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnDidFailLoadingMapListener> onDidFailLoadingMapListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnDidFinishLoadingMapListener> onDidFinishLoadingMapListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnDidFinishLoadingStyleListener> onDidFinishLoadingStyleListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnDidFinishRenderingFrameListener> onDidFinishRenderingFrameList = new CopyOnWriteArrayList();
    private final List<MapView.OnDidFinishRenderingMapListener> onDidFinishRenderingMapListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnSourceChangedListener> onSourceChangedListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnStyleImageMissingListener> onStyleImageMissingListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnWillStartLoadingMapListener> onWillStartLoadingMapListenerList = new CopyOnWriteArrayList();
    private final List<MapView.OnWillStartRenderingFrameListener> onWillStartRenderingFrameList = new CopyOnWriteArrayList();
    private final List<MapView.OnWillStartRenderingMapListener> onWillStartRenderingMapListenerList = new CopyOnWriteArrayList();

    MapChangeReceiver() {
    }

    public void onCameraWillChange(boolean z) {
        try {
            if (!this.onCameraWillChangeListenerList.isEmpty()) {
                for (MapView.OnCameraWillChangeListener onCameraWillChange : this.onCameraWillChangeListenerList) {
                    onCameraWillChange.onCameraWillChange(z);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onCameraWillChange", th);
            throw th;
        }
    }

    public void onCameraIsChanging() {
        try {
            if (!this.onCameraIsChangingListenerList.isEmpty()) {
                for (MapView.OnCameraIsChangingListener onCameraIsChanging : this.onCameraIsChangingListenerList) {
                    onCameraIsChanging.onCameraIsChanging();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onCameraIsChanging", th);
            throw th;
        }
    }

    public void onCameraDidChange(boolean z) {
        try {
            if (!this.onCameraDidChangeListenerList.isEmpty()) {
                for (MapView.OnCameraDidChangeListener onCameraDidChange : this.onCameraDidChangeListenerList) {
                    onCameraDidChange.onCameraDidChange(z);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onCameraDidChange", th);
            throw th;
        }
    }

    public void onWillStartLoadingMap() {
        try {
            if (!this.onWillStartLoadingMapListenerList.isEmpty()) {
                for (MapView.OnWillStartLoadingMapListener onWillStartLoadingMap : this.onWillStartLoadingMapListenerList) {
                    onWillStartLoadingMap.onWillStartLoadingMap();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onWillStartLoadingMap", th);
            throw th;
        }
    }

    public void onDidFinishLoadingMap() {
        try {
            if (!this.onDidFinishLoadingMapListenerList.isEmpty()) {
                for (MapView.OnDidFinishLoadingMapListener onDidFinishLoadingMap : this.onDidFinishLoadingMapListenerList) {
                    onDidFinishLoadingMap.onDidFinishLoadingMap();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onDidFinishLoadingMap", th);
            throw th;
        }
    }

    public void onDidFailLoadingMap(String str) {
        try {
            if (!this.onDidFailLoadingMapListenerList.isEmpty()) {
                for (MapView.OnDidFailLoadingMapListener onDidFailLoadingMap : this.onDidFailLoadingMapListenerList) {
                    onDidFailLoadingMap.onDidFailLoadingMap(str);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onDidFailLoadingMap", th);
            throw th;
        }
    }

    public void onWillStartRenderingFrame() {
        try {
            if (!this.onWillStartRenderingFrameList.isEmpty()) {
                for (MapView.OnWillStartRenderingFrameListener onWillStartRenderingFrame : this.onWillStartRenderingFrameList) {
                    onWillStartRenderingFrame.onWillStartRenderingFrame();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onWillStartRenderingFrame", th);
            throw th;
        }
    }

    public void onDidFinishRenderingFrame(boolean z) {
        try {
            if (!this.onDidFinishRenderingFrameList.isEmpty()) {
                for (MapView.OnDidFinishRenderingFrameListener onDidFinishRenderingFrame : this.onDidFinishRenderingFrameList) {
                    onDidFinishRenderingFrame.onDidFinishRenderingFrame(z);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onDidFinishRenderingFrame", th);
            throw th;
        }
    }

    public void onWillStartRenderingMap() {
        try {
            if (!this.onWillStartRenderingMapListenerList.isEmpty()) {
                for (MapView.OnWillStartRenderingMapListener onWillStartRenderingMap : this.onWillStartRenderingMapListenerList) {
                    onWillStartRenderingMap.onWillStartRenderingMap();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onWillStartRenderingMap", th);
            throw th;
        }
    }

    public void onDidFinishRenderingMap(boolean z) {
        try {
            if (!this.onDidFinishRenderingMapListenerList.isEmpty()) {
                for (MapView.OnDidFinishRenderingMapListener onDidFinishRenderingMap : this.onDidFinishRenderingMapListenerList) {
                    onDidFinishRenderingMap.onDidFinishRenderingMap(z);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onDidFinishRenderingMap", th);
            throw th;
        }
    }

    public void onDidBecomeIdle() {
        try {
            if (!this.onDidBecomeIdleListenerList.isEmpty()) {
                for (MapView.OnDidBecomeIdleListener onDidBecomeIdle : this.onDidBecomeIdleListenerList) {
                    onDidBecomeIdle.onDidBecomeIdle();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onDidBecomeIdle", th);
            throw th;
        }
    }

    public void onDidFinishLoadingStyle() {
        try {
            if (!this.onDidFinishLoadingStyleListenerList.isEmpty()) {
                for (MapView.OnDidFinishLoadingStyleListener onDidFinishLoadingStyle : this.onDidFinishLoadingStyleListenerList) {
                    onDidFinishLoadingStyle.onDidFinishLoadingStyle();
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onDidFinishLoadingStyle", th);
            throw th;
        }
    }

    public void onSourceChanged(String str) {
        try {
            if (!this.onSourceChangedListenerList.isEmpty()) {
                for (MapView.OnSourceChangedListener onSourceChangedListener : this.onSourceChangedListenerList) {
                    onSourceChangedListener.onSourceChangedListener(str);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onSourceChanged", th);
            throw th;
        }
    }

    public void onStyleImageMissing(String str) {
        try {
            if (!this.onStyleImageMissingListenerList.isEmpty()) {
                for (MapView.OnStyleImageMissingListener onStyleImageMissing : this.onStyleImageMissingListenerList) {
                    onStyleImageMissing.onStyleImageMissing(str);
                }
            }
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onStyleImageMissing", th);
            throw th;
        }
    }

    public boolean onCanRemoveUnusedStyleImage(String str) {
        boolean z = true;
        if (this.onCanRemoveUnusedStyleImageListenerList.isEmpty()) {
            return true;
        }
        try {
            if (!this.onCanRemoveUnusedStyleImageListenerList.isEmpty()) {
                for (MapView.OnCanRemoveUnusedStyleImageListener onCanRemoveUnusedStyleImage : this.onCanRemoveUnusedStyleImageListenerList) {
                    z &= onCanRemoveUnusedStyleImage.onCanRemoveUnusedStyleImage(str);
                }
            }
            return z;
        } catch (Throwable th) {
            Logger.e(TAG, "Exception in onCanRemoveUnusedStyleImage", th);
            throw th;
        }
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraWillChangeListener(MapView.OnCameraWillChangeListener onCameraWillChangeListener) {
        this.onCameraWillChangeListenerList.add(onCameraWillChangeListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraWillChangeListener(MapView.OnCameraWillChangeListener onCameraWillChangeListener) {
        this.onCameraWillChangeListenerList.remove(onCameraWillChangeListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraIsChangingListener(MapView.OnCameraIsChangingListener onCameraIsChangingListener) {
        this.onCameraIsChangingListenerList.add(onCameraIsChangingListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraIsChangingListener(MapView.OnCameraIsChangingListener onCameraIsChangingListener) {
        this.onCameraIsChangingListenerList.remove(onCameraIsChangingListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnCameraDidChangeListener(MapView.OnCameraDidChangeListener onCameraDidChangeListener) {
        this.onCameraDidChangeListenerList.add(onCameraDidChangeListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCameraDidChangeListener(MapView.OnCameraDidChangeListener onCameraDidChangeListener) {
        this.onCameraDidChangeListenerList.remove(onCameraDidChangeListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnWillStartLoadingMapListener(MapView.OnWillStartLoadingMapListener onWillStartLoadingMapListener) {
        this.onWillStartLoadingMapListenerList.add(onWillStartLoadingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnWillStartLoadingMapListener(MapView.OnWillStartLoadingMapListener onWillStartLoadingMapListener) {
        this.onWillStartLoadingMapListenerList.remove(onWillStartLoadingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnDidFinishLoadingMapListener(MapView.OnDidFinishLoadingMapListener onDidFinishLoadingMapListener) {
        this.onDidFinishLoadingMapListenerList.add(onDidFinishLoadingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnDidFinishLoadingMapListener(MapView.OnDidFinishLoadingMapListener onDidFinishLoadingMapListener) {
        this.onDidFinishLoadingMapListenerList.remove(onDidFinishLoadingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnDidFailLoadingMapListener(MapView.OnDidFailLoadingMapListener onDidFailLoadingMapListener) {
        this.onDidFailLoadingMapListenerList.add(onDidFailLoadingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnDidFailLoadingMapListener(MapView.OnDidFailLoadingMapListener onDidFailLoadingMapListener) {
        this.onDidFailLoadingMapListenerList.remove(onDidFailLoadingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnWillStartRenderingFrameListener(MapView.OnWillStartRenderingFrameListener onWillStartRenderingFrameListener) {
        this.onWillStartRenderingFrameList.add(onWillStartRenderingFrameListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnWillStartRenderingFrameListener(MapView.OnWillStartRenderingFrameListener onWillStartRenderingFrameListener) {
        this.onWillStartRenderingFrameList.remove(onWillStartRenderingFrameListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnDidFinishRenderingFrameListener(MapView.OnDidFinishRenderingFrameListener onDidFinishRenderingFrameListener) {
        this.onDidFinishRenderingFrameList.add(onDidFinishRenderingFrameListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnDidFinishRenderingFrameListener(MapView.OnDidFinishRenderingFrameListener onDidFinishRenderingFrameListener) {
        this.onDidFinishRenderingFrameList.remove(onDidFinishRenderingFrameListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnWillStartRenderingMapListener(MapView.OnWillStartRenderingMapListener onWillStartRenderingMapListener) {
        this.onWillStartRenderingMapListenerList.add(onWillStartRenderingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnWillStartRenderingMapListener(MapView.OnWillStartRenderingMapListener onWillStartRenderingMapListener) {
        this.onWillStartRenderingMapListenerList.remove(onWillStartRenderingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnDidFinishRenderingMapListener(MapView.OnDidFinishRenderingMapListener onDidFinishRenderingMapListener) {
        this.onDidFinishRenderingMapListenerList.add(onDidFinishRenderingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnDidFinishRenderingMapListener(MapView.OnDidFinishRenderingMapListener onDidFinishRenderingMapListener) {
        this.onDidFinishRenderingMapListenerList.remove(onDidFinishRenderingMapListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnDidBecomeIdleListener(MapView.OnDidBecomeIdleListener onDidBecomeIdleListener) {
        this.onDidBecomeIdleListenerList.add(onDidBecomeIdleListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnDidBecomeIdleListener(MapView.OnDidBecomeIdleListener onDidBecomeIdleListener) {
        this.onDidBecomeIdleListenerList.remove(onDidBecomeIdleListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnDidFinishLoadingStyleListener(MapView.OnDidFinishLoadingStyleListener onDidFinishLoadingStyleListener) {
        this.onDidFinishLoadingStyleListenerList.add(onDidFinishLoadingStyleListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnDidFinishLoadingStyleListener(MapView.OnDidFinishLoadingStyleListener onDidFinishLoadingStyleListener) {
        this.onDidFinishLoadingStyleListenerList.remove(onDidFinishLoadingStyleListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnSourceChangedListener(MapView.OnSourceChangedListener onSourceChangedListener) {
        this.onSourceChangedListenerList.add(onSourceChangedListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnSourceChangedListener(MapView.OnSourceChangedListener onSourceChangedListener) {
        this.onSourceChangedListenerList.remove(onSourceChangedListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnStyleImageMissingListener(MapView.OnStyleImageMissingListener onStyleImageMissingListener) {
        this.onStyleImageMissingListenerList.add(onStyleImageMissingListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnStyleImageMissingListener(MapView.OnStyleImageMissingListener onStyleImageMissingListener) {
        this.onStyleImageMissingListenerList.remove(onStyleImageMissingListener);
    }

    /* access modifiers changed from: package-private */
    public void addOnCanRemoveUnusedStyleImageListener(MapView.OnCanRemoveUnusedStyleImageListener onCanRemoveUnusedStyleImageListener) {
        this.onCanRemoveUnusedStyleImageListenerList.add(onCanRemoveUnusedStyleImageListener);
    }

    /* access modifiers changed from: package-private */
    public void removeOnCanRemoveUnusedStyleImageListener(MapView.OnCanRemoveUnusedStyleImageListener onCanRemoveUnusedStyleImageListener) {
        this.onCanRemoveUnusedStyleImageListenerList.remove(onCanRemoveUnusedStyleImageListener);
    }

    /* access modifiers changed from: package-private */
    public void clear() {
        this.onCameraWillChangeListenerList.clear();
        this.onCameraIsChangingListenerList.clear();
        this.onCameraDidChangeListenerList.clear();
        this.onWillStartLoadingMapListenerList.clear();
        this.onDidFinishLoadingMapListenerList.clear();
        this.onDidFailLoadingMapListenerList.clear();
        this.onWillStartRenderingFrameList.clear();
        this.onDidFinishRenderingFrameList.clear();
        this.onWillStartRenderingMapListenerList.clear();
        this.onDidFinishRenderingMapListenerList.clear();
        this.onDidBecomeIdleListenerList.clear();
        this.onDidFinishLoadingStyleListenerList.clear();
        this.onSourceChangedListenerList.clear();
        this.onStyleImageMissingListenerList.clear();
        this.onCanRemoveUnusedStyleImageListenerList.clear();
    }
}
