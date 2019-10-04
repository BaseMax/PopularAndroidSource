package com.mapbox.mapboxsdk.http;

import android.content.res.AssetManager;
import android.os.AsyncTask;
import com.mapbox.mapboxsdk.MapStrictMode;
import com.mapbox.mapboxsdk.Mapbox;
import com.mapbox.mapboxsdk.log.Logger;

class LocalRequestTask extends AsyncTask<String, Void, byte[]> {
    private static final String TAG = "Mbgl-LocalRequestTask";
    private OnLocalRequestResponse requestResponse;

    public interface OnLocalRequestResponse {
        void onResponse(byte[] bArr);
    }

    LocalRequestTask(OnLocalRequestResponse onLocalRequestResponse) {
        this.requestResponse = onLocalRequestResponse;
    }

    /* access modifiers changed from: protected */
    public byte[] doInBackground(String... strArr) {
        AssetManager assets = Mapbox.getApplicationContext().getAssets();
        return loadFile(assets, "integration/" + strArr[0].substring(8).replaceAll("%20", " ").replaceAll("%2c", ","));
    }

    /* access modifiers changed from: protected */
    public void onPostExecute(byte[] bArr) {
        super.onPostExecute(bArr);
        if (bArr != null) {
            OnLocalRequestResponse onLocalRequestResponse = this.requestResponse;
            if (onLocalRequestResponse != null) {
                onLocalRequestResponse.onResponse(bArr);
            }
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v0, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v3, resolved type: byte[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v1, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v5, resolved type: byte[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v2, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r1v0, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: java.io.InputStream} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v7, resolved type: byte[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v4, resolved type: byte[]} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v5, resolved type: java.io.InputStream} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002b A[SYNTHETIC, Splitter:B:21:0x002b] */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0036 A[SYNTHETIC, Splitter:B:26:0x0036] */
    /* JADX WARNING: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static byte[] loadFile(android.content.res.AssetManager r2, java.lang.String r3) {
        /*
            r0 = 0
            java.io.InputStream r2 = r2.open(r3)     // Catch:{ IOException -> 0x0024 }
            int r3 = r2.available()     // Catch:{ IOException -> 0x001c, all -> 0x001a }
            byte[] r0 = new byte[r3]     // Catch:{ IOException -> 0x001c, all -> 0x001a }
            r2.read(r0)     // Catch:{ IOException -> 0x001c, all -> 0x001a }
            if (r2 == 0) goto L_0x0018
            r2.close()     // Catch:{ IOException -> 0x0014 }
            goto L_0x0018
        L_0x0014:
            r2 = move-exception
            logFileError(r2)
        L_0x0018:
            r2 = r0
            goto L_0x0033
        L_0x001a:
            r3 = move-exception
            goto L_0x0034
        L_0x001c:
            r3 = move-exception
            r1 = r0
            r0 = r2
            r2 = r1
            goto L_0x0026
        L_0x0021:
            r3 = move-exception
            r2 = r0
            goto L_0x0034
        L_0x0024:
            r3 = move-exception
            r2 = r0
        L_0x0026:
            logFileError(r3)     // Catch:{ all -> 0x0021 }
            if (r0 == 0) goto L_0x0033
            r0.close()     // Catch:{ IOException -> 0x002f }
            goto L_0x0033
        L_0x002f:
            r3 = move-exception
            logFileError(r3)
        L_0x0033:
            return r2
        L_0x0034:
            if (r2 == 0) goto L_0x003e
            r2.close()     // Catch:{ IOException -> 0x003a }
            goto L_0x003e
        L_0x003a:
            r2 = move-exception
            logFileError(r2)
        L_0x003e:
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mapbox.mapboxsdk.http.LocalRequestTask.loadFile(android.content.res.AssetManager, java.lang.String):byte[]");
    }

    private static void logFileError(Exception exc) {
        Logger.e(TAG, "Load file failed", exc);
        MapStrictMode.strictModeViolation("Load file failed", exc);
    }
}
