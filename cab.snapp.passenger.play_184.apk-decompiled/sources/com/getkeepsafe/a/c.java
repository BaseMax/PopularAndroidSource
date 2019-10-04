package com.getkeepsafe.a;

import android.content.Context;
import java.io.File;

public final class c {

    public interface a {
        void installLibrary(Context context, String[] strArr, String str, File file, d dVar);
    }

    public interface b {
        void loadLibrary(String str);

        void loadPath(String str);

        String mapLibraryName(String str);

        String[] supportedAbis();

        String unmapLibraryName(String str);
    }

    /* renamed from: com.getkeepsafe.a.c$c  reason: collision with other inner class name */
    public interface C0053c {
        void failure(Throwable th);

        void success();
    }

    public interface d {
        void log(String str);
    }

    public static void loadLibrary(Context context, String str) {
        loadLibrary(context, str, null, null);
    }

    public static void loadLibrary(Context context, String str, String str2) {
        loadLibrary(context, str, str2, null);
    }

    public static void loadLibrary(Context context, String str, C0053c cVar) {
        loadLibrary(context, str, null, cVar);
    }

    public static void loadLibrary(Context context, String str, String str2, C0053c cVar) {
        new d().loadLibrary(context, str, str2, cVar);
    }

    public static d force() {
        return new d().force();
    }

    public static d log(d dVar) {
        return new d().log(dVar);
    }

    public static d recursively() {
        return new d().recursively();
    }

    private c() {
    }
}
