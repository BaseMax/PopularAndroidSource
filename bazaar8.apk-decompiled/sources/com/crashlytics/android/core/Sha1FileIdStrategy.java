package com.crashlytics.android.core;

import com.crashlytics.android.core.BinaryImagesConverter;
import io.fabric.sdk.android.services.common.CommonUtils;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class Sha1FileIdStrategy implements BinaryImagesConverter.FileIdStrategy {
    public static String getFileSHA(String str) {
        BufferedInputStream bufferedInputStream = null;
        try {
            BufferedInputStream bufferedInputStream2 = new BufferedInputStream(new FileInputStream(str));
            try {
                String a2 = CommonUtils.a((InputStream) bufferedInputStream2);
                CommonUtils.a((Closeable) bufferedInputStream2);
                return a2;
            } catch (Throwable th) {
                th = th;
                bufferedInputStream = bufferedInputStream2;
                CommonUtils.a((Closeable) bufferedInputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            CommonUtils.a((Closeable) bufferedInputStream);
            throw th;
        }
    }

    public String createId(File file) {
        return getFileSHA(file.getPath());
    }
}
