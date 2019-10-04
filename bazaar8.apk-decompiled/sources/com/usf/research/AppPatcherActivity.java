package com.usf.research;

import java.io.File;

public class AppPatcherActivity {
    public boolean a(File file, File file2, File file3) {
        boolean z = false;
        try {
            System.loadLibrary("native");
            if (patch(file.getAbsolutePath(), file2.getAbsolutePath(), file3.getAbsolutePath()) == 0) {
                z = true;
            }
            return z;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public native int patch(String str, String str2, String str3);
}
