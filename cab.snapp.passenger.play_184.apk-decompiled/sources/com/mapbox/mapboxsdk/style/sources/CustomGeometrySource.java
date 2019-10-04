package com.mapbox.mapboxsdk.style.sources;

import com.mapbox.geojson.Feature;
import com.mapbox.geojson.FeatureCollection;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.style.expressions.Expression;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class CustomGeometrySource extends Source {
    public static final int THREAD_POOL_LIMIT = 4;
    public static final String THREAD_PREFIX = "CustomGeom";
    /* access modifiers changed from: private */
    public static final AtomicInteger poolCount = new AtomicInteger();
    private final Map<TileID, GeometryTileRequest> awaitingTasksMap;
    /* access modifiers changed from: private */
    public ThreadPoolExecutor executor;
    private final Lock executorLock;
    private final Map<TileID, AtomicBoolean> inProgressTasksMap;
    private GeometryTileProvider provider;

    static class GeometryTileRequest implements Runnable {
        private final Map<TileID, GeometryTileRequest> awaiting;
        private final AtomicBoolean cancelled;
        private final TileID id;
        private final Map<TileID, AtomicBoolean> inProgress;
        private final GeometryTileProvider provider;
        private final WeakReference<CustomGeometrySource> sourceRef;

        GeometryTileRequest(TileID tileID, GeometryTileProvider geometryTileProvider, Map<TileID, GeometryTileRequest> map, Map<TileID, AtomicBoolean> map2, CustomGeometrySource customGeometrySource, AtomicBoolean atomicBoolean) {
            this.id = tileID;
            this.provider = geometryTileProvider;
            this.awaiting = map;
            this.inProgress = map2;
            this.sourceRef = new WeakReference<>(customGeometrySource);
            this.cancelled = atomicBoolean;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0023, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:21:0x0037, code lost:
            if (isCancelled().booleanValue() != false) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:22:0x0039, code lost:
            r0 = r5.provider.getFeaturesForBounds(com.mapbox.mapboxsdk.geometry.LatLngBounds.from(r5.id.z, r5.id.x, r5.id.y), r5.id.z);
            r1 = (com.mapbox.mapboxsdk.style.sources.CustomGeometrySource) r5.sourceRef.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:23:0x0063, code lost:
            if (isCancelled().booleanValue() != false) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0065, code lost:
            if (r1 == null) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x0067, code lost:
            if (r0 == null) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0069, code lost:
            com.mapbox.mapboxsdk.style.sources.CustomGeometrySource.access$100(r1, r5.id, r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x006e, code lost:
            r1 = r5.awaiting;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x0070, code lost:
            monitor-enter(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
            r0 = r5.inProgress;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0073, code lost:
            monitor-enter(r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
            r5.inProgress.remove(r5.id);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:34:0x0083, code lost:
            if (r5.awaiting.containsKey(r5.id) == false) goto L_0x00a9;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:35:0x0085, code lost:
            r2 = r5.awaiting.get(r5.id);
            r3 = (com.mapbox.mapboxsdk.style.sources.CustomGeometrySource) r5.sourceRef.get();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:36:0x0097, code lost:
            if (r3 == null) goto L_0x00a2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:37:0x0099, code lost:
            if (r2 == null) goto L_0x00a2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:38:0x009b, code lost:
            com.mapbox.mapboxsdk.style.sources.CustomGeometrySource.access$200(r3).execute(r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:39:0x00a2, code lost:
            r5.awaiting.remove(r5.id);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:40:0x00a9, code lost:
            monitor-exit(r0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:42:?, code lost:
            monitor-exit(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:43:0x00ab, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r5 = this;
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r0 = r5.awaiting
                monitor-enter(r0)
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, java.util.concurrent.atomic.AtomicBoolean> r1 = r5.inProgress     // Catch:{ all -> 0x00b5 }
                monitor-enter(r1)     // Catch:{ all -> 0x00b5 }
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, java.util.concurrent.atomic.AtomicBoolean> r2 = r5.inProgress     // Catch:{ all -> 0x00b2 }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00b2 }
                boolean r2 = r2.containsKey(r3)     // Catch:{ all -> 0x00b2 }
                if (r2 == 0) goto L_0x0024
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r2 = r5.awaiting     // Catch:{ all -> 0x00b2 }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00b2 }
                boolean r2 = r2.containsKey(r3)     // Catch:{ all -> 0x00b2 }
                if (r2 != 0) goto L_0x0021
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r2 = r5.awaiting     // Catch:{ all -> 0x00b2 }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00b2 }
                r2.put(r3, r5)     // Catch:{ all -> 0x00b2 }
            L_0x0021:
                monitor-exit(r1)     // Catch:{ all -> 0x00b2 }
                monitor-exit(r0)     // Catch:{ all -> 0x00b5 }
                return
            L_0x0024:
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, java.util.concurrent.atomic.AtomicBoolean> r2 = r5.inProgress     // Catch:{ all -> 0x00b2 }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00b2 }
                java.util.concurrent.atomic.AtomicBoolean r4 = r5.cancelled     // Catch:{ all -> 0x00b2 }
                r2.put(r3, r4)     // Catch:{ all -> 0x00b2 }
                monitor-exit(r1)     // Catch:{ all -> 0x00b2 }
                monitor-exit(r0)     // Catch:{ all -> 0x00b5 }
                java.lang.Boolean r0 = r5.isCancelled()
                boolean r0 = r0.booleanValue()
                if (r0 != 0) goto L_0x006e
                com.mapbox.mapboxsdk.style.sources.GeometryTileProvider r0 = r5.provider
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r1 = r5.id
                int r1 = r1.z
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r2 = r5.id
                int r2 = r2.x
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id
                int r3 = r3.y
                com.mapbox.mapboxsdk.geometry.LatLngBounds r1 = com.mapbox.mapboxsdk.geometry.LatLngBounds.from(r1, r2, r3)
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r2 = r5.id
                int r2 = r2.z
                com.mapbox.geojson.FeatureCollection r0 = r0.getFeaturesForBounds(r1, r2)
                java.lang.ref.WeakReference<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource> r1 = r5.sourceRef
                java.lang.Object r1 = r1.get()
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource r1 = (com.mapbox.mapboxsdk.style.sources.CustomGeometrySource) r1
                java.lang.Boolean r2 = r5.isCancelled()
                boolean r2 = r2.booleanValue()
                if (r2 != 0) goto L_0x006e
                if (r1 == 0) goto L_0x006e
                if (r0 == 0) goto L_0x006e
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r2 = r5.id
                r1.setTileData(r2, r0)
            L_0x006e:
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r1 = r5.awaiting
                monitor-enter(r1)
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, java.util.concurrent.atomic.AtomicBoolean> r0 = r5.inProgress     // Catch:{ all -> 0x00af }
                monitor-enter(r0)     // Catch:{ all -> 0x00af }
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, java.util.concurrent.atomic.AtomicBoolean> r2 = r5.inProgress     // Catch:{ all -> 0x00ac }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00ac }
                r2.remove(r3)     // Catch:{ all -> 0x00ac }
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r2 = r5.awaiting     // Catch:{ all -> 0x00ac }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00ac }
                boolean r2 = r2.containsKey(r3)     // Catch:{ all -> 0x00ac }
                if (r2 == 0) goto L_0x00a9
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r2 = r5.awaiting     // Catch:{ all -> 0x00ac }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00ac }
                java.lang.Object r2 = r2.get(r3)     // Catch:{ all -> 0x00ac }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest r2 = (com.mapbox.mapboxsdk.style.sources.CustomGeometrySource.GeometryTileRequest) r2     // Catch:{ all -> 0x00ac }
                java.lang.ref.WeakReference<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource> r3 = r5.sourceRef     // Catch:{ all -> 0x00ac }
                java.lang.Object r3 = r3.get()     // Catch:{ all -> 0x00ac }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource r3 = (com.mapbox.mapboxsdk.style.sources.CustomGeometrySource) r3     // Catch:{ all -> 0x00ac }
                if (r3 == 0) goto L_0x00a2
                if (r2 == 0) goto L_0x00a2
                java.util.concurrent.ThreadPoolExecutor r3 = r3.executor     // Catch:{ all -> 0x00ac }
                r3.execute(r2)     // Catch:{ all -> 0x00ac }
            L_0x00a2:
                java.util.Map<com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID, com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$GeometryTileRequest> r2 = r5.awaiting     // Catch:{ all -> 0x00ac }
                com.mapbox.mapboxsdk.style.sources.CustomGeometrySource$TileID r3 = r5.id     // Catch:{ all -> 0x00ac }
                r2.remove(r3)     // Catch:{ all -> 0x00ac }
            L_0x00a9:
                monitor-exit(r0)     // Catch:{ all -> 0x00ac }
                monitor-exit(r1)     // Catch:{ all -> 0x00af }
                return
            L_0x00ac:
                r2 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x00ac }
                throw r2     // Catch:{ all -> 0x00af }
            L_0x00af:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x00af }
                throw r0
            L_0x00b2:
                r2 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x00b2 }
                throw r2     // Catch:{ all -> 0x00b5 }
            L_0x00b5:
                r1 = move-exception
                monitor-exit(r0)     // Catch:{ all -> 0x00b5 }
                throw r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.style.sources.CustomGeometrySource.GeometryTileRequest.run():void");
        }

        private Boolean isCancelled() {
            return Boolean.valueOf(this.cancelled.get());
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.id.equals(((GeometryTileRequest) obj).id);
        }
    }

    static class TileID {
        public int x;
        public int y;
        public int z;

        TileID(int i, int i2, int i3) {
            this.z = i;
            this.x = i2;
            this.y = i3;
        }

        public int hashCode() {
            return Arrays.hashCode(new int[]{this.z, this.x, this.y});
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj != null && getClass() == obj.getClass() && (obj instanceof TileID)) {
                TileID tileID = (TileID) obj;
                return this.z == tileID.z && this.x == tileID.x && this.y == tileID.y;
            }
        }
    }

    private native void nativeInvalidateBounds(LatLngBounds latLngBounds);

    private native void nativeInvalidateTile(int i, int i2, int i3);

    private native void nativeSetTileData(int i, int i2, int i3, FeatureCollection featureCollection);

    private native Feature[] querySourceFeatures(Object[] objArr);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    /* access modifiers changed from: protected */
    public native void initialize(String str, Object obj);

    public CustomGeometrySource(String str, GeometryTileProvider geometryTileProvider) {
        this(str, new CustomGeometrySourceOptions(), geometryTileProvider);
    }

    public CustomGeometrySource(String str, CustomGeometrySourceOptions customGeometrySourceOptions, GeometryTileProvider geometryTileProvider) {
        this.executorLock = new ReentrantLock();
        this.awaitingTasksMap = new HashMap();
        this.inProgressTasksMap = new HashMap();
        this.provider = geometryTileProvider;
        initialize(str, customGeometrySourceOptions);
    }

    public void invalidateRegion(LatLngBounds latLngBounds) {
        nativeInvalidateBounds(latLngBounds);
    }

    public void invalidateTile(int i, int i2, int i3) {
        nativeInvalidateTile(i, i2, i3);
    }

    public void setTileData(int i, int i2, int i3, FeatureCollection featureCollection) {
        nativeSetTileData(i, i2, i3, featureCollection);
    }

    public List<Feature> querySourceFeatures(Expression expression) {
        checkThread();
        Feature[] querySourceFeatures = querySourceFeatures(expression != null ? expression.toArray() : null);
        return querySourceFeatures != null ? Arrays.asList(querySourceFeatures) : new ArrayList();
    }

    /* access modifiers changed from: private */
    public void setTileData(TileID tileID, FeatureCollection featureCollection) {
        nativeSetTileData(tileID.z, tileID.x, tileID.y, featureCollection);
    }

    private void fetchTile(int i, int i2, int i3) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        TileID tileID = new TileID(i, i2, i3);
        GeometryTileRequest geometryTileRequest = new GeometryTileRequest(tileID, this.provider, this.awaitingTasksMap, this.inProgressTasksMap, this, atomicBoolean);
        synchronized (this.awaitingTasksMap) {
            synchronized (this.inProgressTasksMap) {
                if (this.executor.getQueue().contains(geometryTileRequest)) {
                    this.executor.remove(geometryTileRequest);
                } else if (this.inProgressTasksMap.containsKey(tileID)) {
                    this.awaitingTasksMap.put(tileID, geometryTileRequest);
                }
                executeRequest(geometryTileRequest);
            }
        }
    }

    private void executeRequest(GeometryTileRequest geometryTileRequest) {
        this.executorLock.lock();
        try {
            if (this.executor != null && !this.executor.isShutdown()) {
                this.executor.execute(geometryTileRequest);
            }
        } finally {
            this.executorLock.unlock();
        }
    }

    private void cancelTile(int i, int i2, int i3) {
        TileID tileID = new TileID(i, i2, i3);
        synchronized (this.awaitingTasksMap) {
            synchronized (this.inProgressTasksMap) {
                AtomicBoolean atomicBoolean = this.inProgressTasksMap.get(tileID);
                if (atomicBoolean == null || !atomicBoolean.compareAndSet(false, true)) {
                    GeometryTileRequest geometryTileRequest = new GeometryTileRequest(tileID, null, null, null, null, null);
                    if (!this.executor.getQueue().remove(geometryTileRequest)) {
                        this.awaitingTasksMap.remove(tileID);
                    }
                }
            }
        }
    }

    private void startThreads() {
        this.executorLock.lock();
        try {
            if (this.executor != null && !this.executor.isShutdown()) {
                this.executor.shutdownNow();
            }
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(4, 4, 0, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new ThreadFactory() {
                final int poolId = CustomGeometrySource.poolCount.getAndIncrement();
                final AtomicInteger threadCount = new AtomicInteger();

                public Thread newThread(Runnable runnable) {
                    return new Thread(runnable, String.format(Locale.US, "%s-%d-%d", new Object[]{CustomGeometrySource.THREAD_PREFIX, Integer.valueOf(this.poolId), Integer.valueOf(this.threadCount.getAndIncrement())}));
                }
            });
            this.executor = threadPoolExecutor;
        } finally {
            this.executorLock.unlock();
        }
    }

    private void releaseThreads() {
        this.executorLock.lock();
        try {
            this.executor.shutdownNow();
        } finally {
            this.executorLock.unlock();
        }
    }

    private boolean isCancelled(int i, int i2, int i3) {
        return this.inProgressTasksMap.get(new TileID(i, i2, i3)).get();
    }
}
