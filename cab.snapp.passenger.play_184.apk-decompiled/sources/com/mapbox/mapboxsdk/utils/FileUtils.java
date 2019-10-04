package com.mapbox.mapboxsdk.utils;

import android.os.AsyncTask;
import com.mapbox.mapboxsdk.log.Logger;
import java.io.File;

public class FileUtils {
    private static final String TAG = "Mbgl-FileUtils";

    public static class CheckFileReadPermissionTask extends AsyncTask<File, Void, Boolean> {
        private final OnCheckFileReadPermissionListener listener;

        public CheckFileReadPermissionTask(OnCheckFileReadPermissionListener onCheckFileReadPermissionListener) {
            this.listener = onCheckFileReadPermissionListener;
        }

        /* access modifiers changed from: protected */
        public Boolean doInBackground(File... fileArr) {
            try {
                return Boolean.valueOf(fileArr[0].canRead());
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }

        /* access modifiers changed from: protected */
        public void onCancelled() {
            this.listener.onError();
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                this.listener.onReadPermissionGranted();
            } else {
                this.listener.onError();
            }
        }
    }

    public static class CheckFileWritePermissionTask extends AsyncTask<File, Void, Boolean> {
        private final OnCheckFileWritePermissionListener listener;

        public CheckFileWritePermissionTask(OnCheckFileWritePermissionListener onCheckFileWritePermissionListener) {
            this.listener = onCheckFileWritePermissionListener;
        }

        /* access modifiers changed from: protected */
        public Boolean doInBackground(File... fileArr) {
            try {
                return Boolean.valueOf(fileArr[0].canWrite());
            } catch (Exception unused) {
                return Boolean.FALSE;
            }
        }

        /* access modifiers changed from: protected */
        public void onCancelled() {
            this.listener.onError();
        }

        /* access modifiers changed from: protected */
        public void onPostExecute(Boolean bool) {
            if (bool.booleanValue()) {
                this.listener.onWritePermissionGranted();
            } else {
                this.listener.onError();
            }
        }
    }

    public interface OnCheckFileReadPermissionListener {
        void onError();

        void onReadPermissionGranted();
    }

    public interface OnCheckFileWritePermissionListener {
        void onError();

        void onWritePermissionGranted();
    }

    public static void deleteFile(final String str) {
        new Thread(new Runnable() {
            public final void run() {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        if (file.delete()) {
                            Logger.d(FileUtils.TAG, "File deleted to save space: " + str);
                            return;
                        }
                        Logger.e(FileUtils.TAG, "Failed to delete file: " + str);
                    }
                } catch (Exception e) {
                    Logger.e(FileUtils.TAG, "Failed to delete file: ", e);
                }
            }
        }).start();
    }
}
