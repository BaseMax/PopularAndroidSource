package com.mapbox.mapboxsdk.storage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.AsyncTask;
import android.os.Environment;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.constants.MapboxConstants;
import com.mapbox.mapboxsdk.log.Logger;
import com.mapbox.mapboxsdk.utils.FileUtils;
import com.mapbox.mapboxsdk.utils.ThreadUtils;
import java.io.File;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class FileSource {
    private static FileSource INSTANCE = null;
    private static final String MAPBOX_SHARED_PREFERENCE_RESOURCES_CACHE_PATH = "fileSourceResourcesCachePath";
    private static final String TAG = "Mbgl-FileSource";
    /* access modifiers changed from: private */
    public static String internalCachePath;
    private static final Lock internalCachePathLoaderLock = new ReentrantLock();
    /* access modifiers changed from: private */
    public static String resourcesCachePath;
    /* access modifiers changed from: private */
    public static final Lock resourcesCachePathLoaderLock = new ReentrantLock();
    private long nativePtr;

    static class FileDirsPathsTask extends AsyncTask<Context, Void, String[]> {
        private FileDirsPathsTask() {
        }

        /* access modifiers changed from: protected */
        public void onCancelled() {
            FileSource.unlockPathLoaders();
        }

        /* access modifiers changed from: protected */
        public String[] doInBackground(Context... contextArr) {
            return new String[]{FileSource.getCachePath(contextArr[0]), contextArr[0].getCacheDir().getAbsolutePath()};
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(String[] strArr) {
            String unused = FileSource.resourcesCachePath = strArr[0];
            String unused2 = FileSource.internalCachePath = strArr[1];
            FileSource.unlockPathLoaders();
        }
    }

    public interface ResourceTransformCallback {
        String onURL(int i, String str);
    }

    public interface ResourcesCachePathChangeCallback {
        void onError(String str);

        void onSuccess(String str);
    }

    private native void initialize(String str, String str2, AssetManager assetManager);

    private native void setResourceCachePath(String str, ResourcesCachePathChangeCallback resourcesCachePathChangeCallback);

    public native void activate();

    public native void deactivate();

    /* access modifiers changed from: protected */
    public native void finalize() throws Throwable;

    public native String getAccessToken();

    public native boolean isActivated();

    public native void setAccessToken(String str);

    public native void setApiBaseUrl(String str);

    public native void setResourceTransform(ResourceTransformCallback resourceTransformCallback);

    public static synchronized FileSource getInstance(Context context) {
        FileSource fileSource;
        synchronized (FileSource.class) {
            if (INSTANCE == null) {
                INSTANCE = new FileSource(getResourcesCachePath(context), context.getResources().getAssets());
            }
            fileSource = INSTANCE;
        }
        return fileSource;
    }

    /* access modifiers changed from: private */
    public static String getCachePath(Context context) {
        String string = context.getSharedPreferences(MapboxConstants.MAPBOX_SHARED_PREFERENCES, 0).getString(MAPBOX_SHARED_PREFERENCE_RESOURCES_CACHE_PATH, null);
        if (isPathWritable(string)) {
            return string;
        }
        String defaultCachePath = getDefaultCachePath(context);
        context.getSharedPreferences(MapboxConstants.MAPBOX_SHARED_PREFERENCES, 0).edit().remove(MAPBOX_SHARED_PREFERENCE_RESOURCES_CACHE_PATH).apply();
        return defaultCachePath;
    }

    private static String getDefaultCachePath(Context context) {
        if (isExternalStorageConfiguration(context) && isExternalStorageReadable()) {
            File externalFilesDir = context.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                return externalFilesDir.getAbsolutePath();
            }
        }
        return context.getFilesDir().getAbsolutePath();
    }

    private static boolean isExternalStorageConfiguration(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                return applicationInfo.metaData.getBoolean(MapboxConstants.KEY_META_DATA_SET_STORAGE_EXTERNAL, false);
            }
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            Logger.e(TAG, "Failed to read the package metadata: ", e);
            MapStrictMode.strictModeViolation((Throwable) e);
            return false;
        } catch (Exception e2) {
            Logger.e(TAG, "Failed to read the storage key: ", e2);
            MapStrictMode.strictModeViolation((Throwable) e2);
            return false;
        }
    }

    public static boolean isExternalStorageReadable() {
        String externalStorageState = Environment.getExternalStorageState();
        if ("mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState)) {
            return true;
        }
        Logger.w(TAG, "External storage was requested but it isn't readable. For API level < 18 make sure you've requested READ_EXTERNAL_STORAGE or WRITE_EXTERNAL_STORAGE permissions in your app Manifest (defaulting to internal storage).");
        return false;
    }

    public static void initializeFileDirsPaths(Context context) {
        ThreadUtils.checkThread(TAG);
        lockPathLoaders();
        if (resourcesCachePath == null || internalCachePath == null) {
            new FileDirsPathsTask().execute(new Context[]{context});
        }
    }

    public static String getResourcesCachePath(Context context) {
        resourcesCachePathLoaderLock.lock();
        try {
            if (resourcesCachePath == null) {
                resourcesCachePath = getCachePath(context);
            }
            return resourcesCachePath;
        } finally {
            resourcesCachePathLoaderLock.unlock();
        }
    }

    public static String getInternalCachePath(Context context) {
        internalCachePathLoaderLock.lock();
        try {
            if (internalCachePath == null) {
                internalCachePath = context.getCacheDir().getAbsolutePath();
            }
            return internalCachePath;
        } finally {
            internalCachePathLoaderLock.unlock();
        }
    }

    @Deprecated
    public static void setResourcesCachePath(Context context, String str, ResourcesCachePathChangeCallback resourcesCachePathChangeCallback) {
        setResourcesCachePath(str, resourcesCachePathChangeCallback);
    }

    public static void setResourcesCachePath(final String str, final ResourcesCachePathChangeCallback resourcesCachePathChangeCallback) {
        final Context applicationContext = Mapbox.getApplicationContext();
        if (getInstance(applicationContext).isActivated()) {
            Logger.w(TAG, "Cannot set path, file source is activated. Make sure that the map or a resources download is not running.");
            resourcesCachePathChangeCallback.onError("Cannot set path, file source is activated. Make sure that the map or a resources download is not running.");
        } else if (str.equals(getResourcesCachePath(applicationContext))) {
            resourcesCachePathChangeCallback.onSuccess(str);
        } else {
            new FileUtils.CheckFileWritePermissionTask(new FileUtils.OnCheckFileWritePermissionListener() {
                public final void onWritePermissionGranted() {
                    SharedPreferences.Editor edit = applicationContext.getSharedPreferences(MapboxConstants.MAPBOX_SHARED_PREFERENCES, 0).edit();
                    edit.putString(FileSource.MAPBOX_SHARED_PREFERENCE_RESOURCES_CACHE_PATH, str);
                    edit.apply();
                    FileSource.internalSetResourcesCachePath(applicationContext, str, resourcesCachePathChangeCallback);
                }

                public final void onError() {
                    String str = "Path is not writable: " + str;
                    Logger.e(FileSource.TAG, str);
                    resourcesCachePathChangeCallback.onError(str);
                }
            }).execute(new File[]{new File(str)});
        }
    }

    /* access modifiers changed from: private */
    public static void internalSetResourcesCachePath(Context context, String str, final ResourcesCachePathChangeCallback resourcesCachePathChangeCallback) {
        FileSource instance = getInstance(context);
        instance.setResourceCachePath(str, new ResourcesCachePathChangeCallback(instance) {
            final /* synthetic */ FileSource val$fileSource;

            {
                this.val$fileSource = r1;
            }

            public final void onSuccess(String str) {
                this.val$fileSource.deactivate();
                FileSource.resourcesCachePathLoaderLock.lock();
                String unused = FileSource.resourcesCachePath = str;
                FileSource.resourcesCachePathLoaderLock.unlock();
                resourcesCachePathChangeCallback.onSuccess(str);
            }

            public final void onError(String str) {
                this.val$fileSource.deactivate();
                resourcesCachePathChangeCallback.onError(str);
            }
        });
        instance.activate();
    }

    private static boolean isPathWritable(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        return new File(str).canWrite();
    }

    private static void lockPathLoaders() {
        internalCachePathLoaderLock.lock();
        resourcesCachePathLoaderLock.lock();
    }

    /* access modifiers changed from: private */
    public static void unlockPathLoaders() {
        resourcesCachePathLoaderLock.unlock();
        internalCachePathLoaderLock.unlock();
    }

    private FileSource(String str, AssetManager assetManager) {
        initialize(Mapbox.getAccessToken(), str, assetManager);
    }
}
