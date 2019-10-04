package com.koushikdutta.ion.cookie;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.koushikdutta.async.http.b;
import com.koushikdutta.async.http.n;
import com.koushikdutta.async.http.y;
import com.koushikdutta.ion.Ion;
import java.net.CookieManager;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.URI;
import java.util.List;
import java.util.Map;

public class CookieMiddleware extends y {
    Ion ion;
    CookieManager manager;
    SharedPreferences preferences;

    public CookieStore getCookieStore() {
        return this.manager.getCookieStore();
    }

    public void clear() {
        maybeInit();
        getCookieStore().removeAll();
        this.preferences.edit().clear().apply();
    }

    public CookieManager getCookieManager() {
        maybeInit();
        return this.manager;
    }

    public CookieMiddleware(Ion ion2) {
        this.ion = ion2;
    }

    public void reinit() {
        this.manager = new CookieManager(null, null);
        this.preferences = this.ion.getContext().getSharedPreferences(this.ion.getName() + "-cookies", 0);
        for (String next : this.preferences.getAll().keySet()) {
            try {
                String string = this.preferences.getString(next, null);
                n nVar = new n();
                boolean z = true;
                for (String str : string.split("\n")) {
                    if (z) {
                        z = false;
                    } else if (!TextUtils.isEmpty(str)) {
                        nVar.addLine(str);
                    }
                }
                this.manager.put(URI.create(next), nVar.getMultiMap());
            } catch (Exception unused) {
            }
        }
    }

    public static void addCookies(Map<String, List<String>> map, n nVar) {
        for (Map.Entry next : map.entrySet()) {
            String str = (String) next.getKey();
            if ("Cookie".equalsIgnoreCase(str) || "Cookie2".equalsIgnoreCase(str)) {
                nVar.addAll(str, (List) next.getValue());
            }
        }
    }

    private void maybeInit() {
        if (this.manager == null) {
            reinit();
        }
    }

    public void onRequest(b.e eVar) {
        maybeInit();
        try {
            addCookies(this.manager.get(URI.create(eVar.request.getUri().toString()), eVar.request.getHeaders().getMultiMap()), eVar.request.getHeaders());
        } catch (Exception unused) {
        }
    }

    public void onHeadersReceived(b.d dVar) {
        maybeInit();
        try {
            put(URI.create(dVar.request.getUri().toString()), dVar.response.headers());
        } catch (Exception unused) {
        }
    }

    public void put(URI uri, n nVar) {
        maybeInit();
        try {
            this.manager.put(uri, nVar.getMultiMap());
            if (nVar.get("Set-Cookie") != null) {
                List<HttpCookie> list = this.manager.getCookieStore().get(uri);
                n nVar2 = new n();
                for (HttpCookie next : list) {
                    nVar2.add("Set-Cookie", next.getName() + "=" + next.getValue() + "; path=" + next.getPath());
                }
                this.preferences.edit().putString(uri.getScheme() + "://" + uri.getAuthority(), nVar2.toPrefixString("HTTP/1.1 200 OK")).commit();
            }
        } catch (Exception unused) {
        }
    }
}
