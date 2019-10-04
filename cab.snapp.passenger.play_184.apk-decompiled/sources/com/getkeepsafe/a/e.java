package com.getkeepsafe.a;

import android.os.Build;
import com.getkeepsafe.a.c;

final class e implements c.b {
    e() {
    }

    public final void loadLibrary(String str) {
        System.loadLibrary(str);
    }

    public final void loadPath(String str) {
        System.load(str);
    }

    public final String mapLibraryName(String str) {
        if (!str.startsWith("lib") || !str.endsWith(".so")) {
            return System.mapLibraryName(str);
        }
        return str;
    }

    public final String unmapLibraryName(String str) {
        return str.substring(3, str.length() - 3);
    }

    public final String[] supportedAbis() {
        if (Build.VERSION.SDK_INT >= 21 && Build.SUPPORTED_ABIS.length > 0) {
            return Build.SUPPORTED_ABIS;
        }
        if (!f.isEmpty(Build.CPU_ABI2)) {
            return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
        }
        return new String[]{Build.CPU_ABI};
    }
}
