package com.mapbox.android.telemetry;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.b.a;
import com.google.gson.f;
import com.google.gson.j;
import com.google.gson.p;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import okhttp3.Request;

final class e implements m {

    /* renamed from: a  reason: collision with root package name */
    final List<String> f4972a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final Context f4973b;

    e(Context context, n nVar) {
        this.f4973b = context;
        nVar.e.add(this);
        if (System.currentTimeMillis() - ak.a(nVar.f4982a).getLong("mapboxConfigSyncTimestamp", 0) >= 86400000) {
            nVar.d.newCall(new Request.Builder().url(n.a(nVar.f4982a, nVar.c)).header("User-Agent", nVar.f4983b).build()).enqueue(nVar);
        } else {
            a(context.getFilesDir(), false);
        }
    }

    private void a(File file, boolean z) {
        if (file.isDirectory()) {
            File file2 = new File(file, "MapboxBlacklist");
            if (file2.exists()) {
                try {
                    List<String> a2 = a(file2);
                    if (!a2.isEmpty()) {
                        if (z) {
                            this.f4972a.clear();
                        }
                        this.f4972a.addAll(a2);
                    }
                } catch (IOException e) {
                    e.getMessage();
                }
            }
        }
    }

    private boolean a(String str) {
        boolean z = false;
        if (!b(str)) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = this.f4973b.openFileOutput("MapboxBlacklist", 0);
            fileOutputStream.write(str.getBytes());
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e) {
                    e.getMessage();
                }
            }
            z = true;
        } catch (IOException e2) {
            e2.getMessage();
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException e3) {
                    e3.getMessage();
                }
            }
            throw th;
        }
        return z;
    }

    private static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        com.google.gson.e create = new f().create();
        try {
            JsonElement jsonElement = ((JsonObject) create.fromJson(str, JsonObject.class)).get("RevokedCertKeys");
            JsonArray jsonArray = jsonElement.isJsonArray() ? (JsonArray) create.fromJson(jsonElement, JsonArray.class) : null;
            if (jsonArray == null || jsonArray.size() <= 0) {
                return false;
            }
            return true;
        } catch (p e) {
            e.getMessage();
            return false;
        }
    }

    private List<String> a(File file) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
        com.google.gson.e eVar = new com.google.gson.e();
        List<String> list = null;
        try {
            JsonObject jsonObject = (JsonObject) eVar.fromJson((Reader) bufferedReader, JsonObject.class);
            if (jsonObject != null) {
                JsonArray asJsonArray = jsonObject.getAsJsonArray("RevokedCertKeys");
                list = (List) eVar.fromJson(asJsonArray.toString(), new a<List<String>>() {
                }.getType());
            }
        } catch (j | p e) {
            e.getMessage();
        }
        bufferedReader.close();
        if (list != null) {
            return list;
        }
        return Collections.emptyList();
    }

    public final void onUpdate(String str) {
        if (a(str)) {
            a(this.f4973b.getFilesDir(), true);
        }
    }
}
