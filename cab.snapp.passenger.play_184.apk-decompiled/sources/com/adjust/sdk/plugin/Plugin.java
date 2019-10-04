package com.adjust.sdk.plugin;

import android.content.Context;
import java.util.Map;

public interface Plugin {
    Map.Entry<String, String> getParameter(Context context);
}
