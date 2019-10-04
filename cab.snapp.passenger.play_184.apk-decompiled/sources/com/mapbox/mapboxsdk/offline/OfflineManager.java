package com.mapbox.mapboxsdk.offline;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mapbox.mapboxsdk.LibraryLoader;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.R;
import com.mapbox.mapboxsdk.geometry.LatLngBounds;
import com.mapbox.mapboxsdk.maps.TelemetryDefinition;
import com.mapbox.mapboxsdk.net.ConnectivityReceiver;
import com.mapbox.mapboxsdk.storage.FileSource;
import com.mapbox.mapboxsdk.utils.FileUtils;
import java.io.File;

public class OfflineManager {
    private static final String TAG = "Mbgl - OfflineManager";
    private static OfflineManager instance;
    /* access modifiers changed from: private */
    public Context context;
    /* access modifiers changed from: private */
    public final FileSource fileSource;
    /* access modifiers changed from: private */
    public final Handler handler = new Handler(Looper.getMainLooper());
    private long nativePtr;

    public interface CreateOfflineRegionCallback {
        void onCreate(OfflineRegion offlineRegion);

        void onError(String str);
    }

    public interface FileSourceCallback {
        void onError(String str);

        void onSuccess();
    }

    public interface ListOfflineRegionsCallback {
        void onError(String str);

        void onList(OfflineRegion[] offlineRegionArr);
    }

    public interface MergeOfflineRegionsCallback {
        void onError(String str);

        void onMerge(OfflineRegion[] offlineRegionArr);
    }

    private native void createOfflineRegion(FileSource fileSource2, OfflineRegionDefinition offlineRegionDefinition, byte[] bArr, CreateOfflineRegionCallback createOfflineRegionCallback);

    private native void initialize(FileSource fileSource2);

    private native void listOfflineRegions(FileSource fileSource2, ListOfflineRegionsCallback listOfflineRegionsCallback);

    private native void mergeOfflineRegions(FileSource fileSource2, String str, MergeOfflineRegionsCallback mergeOfflineRegionsCallback);

    private native void nativeClearAmbientCache(FileSourceCallback fileSourceCallback);

    private native void nativeInvalidateAmbientCache(FileSourceCallback fileSourceCallback);

    private native void nativeResetDatabase(FileSourceCallback fileSourceCallback);

    private native void nativeSetMaximumAmbientCacheSize(long j, FileSourceCallback fileSourceCallback);

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    public native void putResourceWithUrl(String str, byte[] bArr, long j, long j2, String str2, boolean z);

    public native void setOfflineMapboxTileCountLimit(long j);

    static {
        LibraryLoader.load();
    }

    private OfflineManager(Context context2) {
        this.context = context2.getApplicationContext();
        this.fileSource = FileSource.getInstance(this.context);
        initialize(this.fileSource);
        deleteAmbientDatabase(this.context);
    }

    private void deleteAmbientDatabase(Context context2) {
        FileUtils.deleteFile(FileSource.getInternalCachePath(context2) + File.separator + "mbgl-cache.db");
    }

    public static synchronized OfflineManager getInstance(Context context2) {
        OfflineManager offlineManager;
        synchronized (OfflineManager.class) {
            if (instance == null) {
                instance = new OfflineManager(context2);
            }
            offlineManager = instance;
        }
        return offlineManager;
    }

    public void listOfflineRegions(final ListOfflineRegionsCallback listOfflineRegionsCallback) {
        this.fileSource.activate();
        listOfflineRegions(this.fileSource, new ListOfflineRegionsCallback() {
            public void onList(final OfflineRegion[] offlineRegionArr) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        listOfflineRegionsCallback.onList(offlineRegionArr);
                    }
                });
            }

            public void onError(final String str) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        listOfflineRegionsCallback.onError(str);
                    }
                });
            }
        });
    }

    public void mergeOfflineRegions(String str, final MergeOfflineRegionsCallback mergeOfflineRegionsCallback) {
        final File file = new File(str);
        new Thread(new Runnable() {
            /* JADX WARNING: Removed duplicated region for block: B:13:0x0056  */
            /* JADX WARNING: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
            /* Code decompiled incorrectly, please refer to instructions dump. */
            public void run() {
                /*
                    r3 = this;
                    java.io.File r0 = r0
                    boolean r0 = r0.canWrite()
                    if (r0 == 0) goto L_0x0017
                    com.mapbox.mapboxsdk.offline.OfflineManager r0 = com.mapbox.mapboxsdk.offline.OfflineManager.this
                    android.os.Handler r0 = r0.handler
                    com.mapbox.mapboxsdk.offline.OfflineManager$2$1 r1 = new com.mapbox.mapboxsdk.offline.OfflineManager$2$1
                    r1.<init>()
                    r0.post(r1)
                    goto L_0x0047
                L_0x0017:
                    java.io.File r0 = r0
                    boolean r0 = r0.canRead()
                    if (r0 == 0) goto L_0x0052
                    java.io.File r0 = new java.io.File
                    com.mapbox.mapboxsdk.offline.OfflineManager r1 = com.mapbox.mapboxsdk.offline.OfflineManager.this
                    android.content.Context r1 = r1.context
                    java.lang.String r1 = com.mapbox.mapboxsdk.storage.FileSource.getInternalCachePath(r1)
                    java.io.File r2 = r0
                    java.lang.String r2 = r2.getName()
                    r0.<init>(r1, r2)
                    java.io.File r1 = r0     // Catch:{ IOException -> 0x0049 }
                    com.mapbox.mapboxsdk.offline.OfflineManager.copyTempDatabaseFile(r1, r0)     // Catch:{ IOException -> 0x0049 }
                    com.mapbox.mapboxsdk.offline.OfflineManager r1 = com.mapbox.mapboxsdk.offline.OfflineManager.this     // Catch:{ IOException -> 0x0049 }
                    android.os.Handler r1 = r1.handler     // Catch:{ IOException -> 0x0049 }
                    com.mapbox.mapboxsdk.offline.OfflineManager$2$2 r2 = new com.mapbox.mapboxsdk.offline.OfflineManager$2$2     // Catch:{ IOException -> 0x0049 }
                    r2.<init>(r0)     // Catch:{ IOException -> 0x0049 }
                    r1.post(r2)     // Catch:{ IOException -> 0x0049 }
                L_0x0047:
                    r0 = 0
                    goto L_0x0054
                L_0x0049:
                    r0 = move-exception
                    r0.printStackTrace()
                    java.lang.String r0 = r0.getMessage()
                    goto L_0x0054
                L_0x0052:
                    java.lang.String r0 = "Secondary database needs to be located in a readable path."
                L_0x0054:
                    if (r0 == 0) goto L_0x0064
                    com.mapbox.mapboxsdk.offline.OfflineManager r1 = com.mapbox.mapboxsdk.offline.OfflineManager.this
                    android.os.Handler r1 = r1.handler
                    com.mapbox.mapboxsdk.offline.OfflineManager$2$3 r2 = new com.mapbox.mapboxsdk.offline.OfflineManager$2$3
                    r2.<init>(r0)
                    r1.post(r2)
                L_0x0064:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.offline.OfflineManager.AnonymousClass2.run():void");
            }
        }).start();
    }

    public void resetDatabase(final FileSourceCallback fileSourceCallback) {
        this.fileSource.activate();
        nativeResetDatabase(new FileSourceCallback() {
            public void onSuccess() {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onSuccess();
                        }
                    }
                });
            }

            public void onError(final String str) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onError(str);
                        }
                    }
                });
            }
        });
    }

    public void invalidateAmbientCache(final FileSourceCallback fileSourceCallback) {
        this.fileSource.activate();
        nativeInvalidateAmbientCache(new FileSourceCallback() {
            public void onSuccess() {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onSuccess();
                        }
                    }
                });
            }

            public void onError(final String str) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onError(str);
                        }
                    }
                });
            }
        });
    }

    public void clearAmbientCache(final FileSourceCallback fileSourceCallback) {
        this.fileSource.activate();
        nativeClearAmbientCache(new FileSourceCallback() {
            public void onSuccess() {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onSuccess();
                        }
                    }
                });
            }

            public void onError(final String str) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onError(str);
                        }
                    }
                });
            }
        });
    }

    public void setMaximumAmbientCacheSize(long j, final FileSourceCallback fileSourceCallback) {
        this.fileSource.activate();
        nativeSetMaximumAmbientCacheSize(j, new FileSourceCallback() {
            public void onSuccess() {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onSuccess();
                        }
                    }
                });
            }

            public void onError(final String str) {
                OfflineManager.this.fileSource.activate();
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        if (fileSourceCallback != null) {
                            fileSourceCallback.onError(str);
                        }
                    }
                });
            }
        });
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0077  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void copyTempDatabaseFile(java.io.File r9, java.io.File r10) throws java.io.IOException {
        /*
            boolean r0 = r10.exists()
            if (r0 != 0) goto L_0x0015
            boolean r0 = r10.createNewFile()
            if (r0 == 0) goto L_0x000d
            goto L_0x0015
        L_0x000d:
            java.io.IOException r9 = new java.io.IOException
            java.lang.String r10 = "Unable to copy database file for merge."
            r9.<init>(r10)
            throw r9
        L_0x0015:
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            r1.<init>(r9)     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            java.nio.channels.FileChannel r9 = r1.getChannel()     // Catch:{ IOException -> 0x0057, all -> 0x0054 }
            java.io.FileOutputStream r1 = new java.io.FileOutputStream     // Catch:{ IOException -> 0x004e, all -> 0x0048 }
            r1.<init>(r10)     // Catch:{ IOException -> 0x004e, all -> 0x0048 }
            java.nio.channels.FileChannel r10 = r1.getChannel()     // Catch:{ IOException -> 0x004e, all -> 0x0048 }
            r4 = 0
            long r6 = r9.size()     // Catch:{ IOException -> 0x0043, all -> 0x003e }
            r2 = r10
            r3 = r9
            r2.transferFrom(r3, r4, r6)     // Catch:{ IOException -> 0x0043, all -> 0x003e }
            if (r9 == 0) goto L_0x0038
            r9.close()
        L_0x0038:
            if (r10 == 0) goto L_0x003d
            r10.close()
        L_0x003d:
            return
        L_0x003e:
            r0 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto L_0x0070
        L_0x0043:
            r0 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto L_0x0059
        L_0x0048:
            r10 = move-exception
            r8 = r0
            r0 = r9
            r9 = r10
            r10 = r8
            goto L_0x0070
        L_0x004e:
            r10 = move-exception
            r8 = r0
            r0 = r9
            r9 = r10
            r10 = r8
            goto L_0x0059
        L_0x0054:
            r9 = move-exception
            r10 = r0
            goto L_0x0070
        L_0x0057:
            r9 = move-exception
            r10 = r0
        L_0x0059:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x006f }
            java.lang.String r2 = "Unable to copy database file for merge. %s"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x006f }
            r4 = 0
            java.lang.String r9 = r9.getMessage()     // Catch:{ all -> 0x006f }
            r3[r4] = r9     // Catch:{ all -> 0x006f }
            java.lang.String r9 = java.lang.String.format(r2, r3)     // Catch:{ all -> 0x006f }
            r1.<init>(r9)     // Catch:{ all -> 0x006f }
            throw r1     // Catch:{ all -> 0x006f }
        L_0x006f:
            r9 = move-exception
        L_0x0070:
            if (r0 == 0) goto L_0x0075
            r0.close()
        L_0x0075:
            if (r10 == 0) goto L_0x007a
            r10.close()
        L_0x007a:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.offline.OfflineManager.copyTempDatabaseFile(java.io.File, java.io.File):void");
    }

    /* access modifiers changed from: private */
    public void mergeOfflineDatabaseFiles(final File file, final MergeOfflineRegionsCallback mergeOfflineRegionsCallback, final boolean z) {
        this.fileSource.activate();
        mergeOfflineRegions(this.fileSource, file.getAbsolutePath(), new MergeOfflineRegionsCallback() {
            public void onMerge(final OfflineRegion[] offlineRegionArr) {
                if (z) {
                    file.delete();
                }
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        mergeOfflineRegionsCallback.onMerge(offlineRegionArr);
                    }
                });
            }

            public void onError(final String str) {
                if (z) {
                    file.delete();
                }
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        OfflineManager.this.fileSource.deactivate();
                        mergeOfflineRegionsCallback.onError(str);
                    }
                });
            }
        });
    }

    public void createOfflineRegion(OfflineRegionDefinition offlineRegionDefinition, byte[] bArr, final CreateOfflineRegionCallback createOfflineRegionCallback) {
        if (!isValidOfflineRegionDefinition(offlineRegionDefinition)) {
            createOfflineRegionCallback.onError(String.format(this.context.getString(R.string.mapbox_offline_error_region_definition_invalid), new Object[]{offlineRegionDefinition.getBounds()}));
            return;
        }
        ConnectivityReceiver.instance(this.context).activate();
        FileSource.getInstance(this.context).activate();
        createOfflineRegion(this.fileSource, offlineRegionDefinition, bArr, new CreateOfflineRegionCallback() {
            public void onCreate(final OfflineRegion offlineRegion) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        ConnectivityReceiver.instance(OfflineManager.this.context).deactivate();
                        FileSource.getInstance(OfflineManager.this.context).deactivate();
                        createOfflineRegionCallback.onCreate(offlineRegion);
                    }
                });
            }

            public void onError(final String str) {
                OfflineManager.this.handler.post(new Runnable() {
                    public void run() {
                        ConnectivityReceiver.instance(OfflineManager.this.context).deactivate();
                        FileSource.getInstance(OfflineManager.this.context).deactivate();
                        createOfflineRegionCallback.onError(str);
                    }
                });
            }
        });
        TelemetryDefinition telemetry = Mapbox.getTelemetry();
        if (telemetry != null) {
            offlineRegionDefinition.getBounds();
            telemetry.onCreateOfflineRegion(offlineRegionDefinition);
        }
    }

    private boolean isValidOfflineRegionDefinition(OfflineRegionDefinition offlineRegionDefinition) {
        return LatLngBounds.world().contains(offlineRegionDefinition.getBounds());
    }
}
