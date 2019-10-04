package com.koushikdutta.async.e;

import java.io.File;

public final class d {
    public static boolean deleteDirectory(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (int i = 0; i < listFiles.length; i++) {
                    if (listFiles[i].isDirectory()) {
                        deleteDirectory(listFiles[i]);
                    } else {
                        listFiles[i].delete();
                    }
                }
            }
        }
        return file.delete();
    }
}
