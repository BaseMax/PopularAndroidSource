package com.adjust.sdk.plugin;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Locale;

public class MacAddressUtil {
    public static String getMacAddress(Context context) {
        String rawMacAddress = getRawMacAddress(context);
        if (rawMacAddress == null) {
            return null;
        }
        return removeSpaceString(rawMacAddress.toUpperCase(Locale.US));
    }

    private static String getRawMacAddress(Context context) {
        String loadAddress = loadAddress("wlan0");
        if (loadAddress != null) {
            return loadAddress;
        }
        String loadAddress2 = loadAddress("eth0");
        if (loadAddress2 != null) {
            return loadAddress2;
        }
        try {
            String macAddress = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo().getMacAddress();
            if (macAddress != null) {
                return macAddress;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    private static String loadAddress(String str) {
        try {
            StringBuilder sb = new StringBuilder(1000);
            BufferedReader bufferedReader = new BufferedReader(new FileReader("/sys/class/net/" + str + "/address"), 1024);
            char[] cArr = new char[1024];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read != -1) {
                    sb.append(String.valueOf(cArr, 0, read));
                } else {
                    bufferedReader.close();
                    return sb.toString();
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private static String removeSpaceString(String str) {
        if (str == null) {
            return null;
        }
        String replaceAll = str.replaceAll("\\s", "");
        if (TextUtils.isEmpty(replaceAll)) {
            return null;
        }
        return replaceAll;
    }
}
