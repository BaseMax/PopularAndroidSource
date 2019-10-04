package com.koushikdutta.ion;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.i;
import com.koushikdutta.async.c.a;
import com.koushikdutta.async.c.f;
import com.koushikdutta.async.d.b;
import com.koushikdutta.async.e.c;
import com.koushikdutta.ion.gson.GsonArrayParser;
import com.koushikdutta.ion.gson.GsonObjectParser;
import com.koushikdutta.ion.gson.GsonSerializer;
import java.io.File;
import org.w3c.dom.Document;

public class FileCacheStore {
    c cache;
    Ion ion;
    String rawKey;

    FileCacheStore(Ion ion2, c cVar, String str) {
        this.ion = ion2;
        this.cache = cVar;
        this.rawKey = str;
    }

    private <T> e<T> put(final T t, final a<T> aVar) {
        final i iVar = new i();
        Ion.getIoExecutorService().execute(new Runnable() {
            public void run() {
                final String access$000 = FileCacheStore.this.computeKey();
                final File tempFile = FileCacheStore.this.cache.getTempFile();
                final b bVar = new b(FileCacheStore.this.ion.getServer(), tempFile);
                aVar.write(bVar, t, new com.koushikdutta.async.a.a() {
                    public void onCompleted(Exception exc) {
                        bVar.end();
                        if (exc != null) {
                            tempFile.delete();
                            iVar.setComplete(exc);
                            return;
                        }
                        FileCacheStore.this.cache.commitTempFiles(access$000, tempFile);
                        iVar.setComplete(t);
                    }
                });
            }
        });
        return iVar;
    }

    public e<String> putString(String str) {
        return put(str, new f());
    }

    public e<JsonObject> putJsonObject(JsonObject jsonObject) {
        return put(jsonObject, new GsonObjectParser());
    }

    public e<Document> putDocument(Document document) {
        return put(document, new com.koushikdutta.async.c.c());
    }

    public e<JsonArray> putJsonArray(JsonArray jsonArray) {
        return put(jsonArray, new GsonArrayParser());
    }

    public <T> e<T> put(T t, Class<T> cls) {
        return put(t, new GsonSerializer(this.ion.configure().getGson(), cls));
    }

    public <T> e<T> put(T t, com.google.gson.b.a<T> aVar) {
        return put(t, new GsonSerializer(this.ion.configure().getGson(), aVar));
    }

    private <T> e<T> as(final a<T> aVar) {
        final i iVar = new i();
        Ion.getIoExecutorService().execute(new Runnable() {
            public void run() {
                try {
                    File file = FileCacheStore.this.cache.getFile(FileCacheStore.this.computeKey());
                    if (!file.exists()) {
                        iVar.setComplete(null);
                    } else {
                        FileCacheStore.this.ion.build(FileCacheStore.this.ion.getContext()).load(file).as(aVar).setCallback(iVar.getCompletionCallback());
                    }
                } catch (Exception e) {
                    iVar.setComplete(e);
                }
            }
        });
        return iVar;
    }

    private <T> T get(a<T> aVar) {
        try {
            return this.ion.build(this.ion.getContext()).load(this.cache.getFile(computeKey())).as(aVar).get();
        } catch (Exception unused) {
            return null;
        }
    }

    public String getString() {
        return (String) get(new f());
    }

    public e<String> asString() {
        return as(new f());
    }

    public e<JsonObject> asJsonObject() {
        return as(new GsonObjectParser());
    }

    public JsonObject getJsonObject() {
        return (JsonObject) get(new GsonObjectParser());
    }

    public e<JsonArray> asJsonArray() {
        return as(new GsonArrayParser());
    }

    public JsonArray getJsonArray() {
        return (JsonArray) get(new GsonArrayParser());
    }

    public e<Document> asDocument() {
        return as(new com.koushikdutta.async.c.c());
    }

    public Document getDocument() {
        return (Document) get(new com.koushikdutta.async.c.c());
    }

    public <T> e<T> as(Class<T> cls) {
        return as(new GsonSerializer(this.ion.configure().getGson(), cls));
    }

    public <T> T get(Class<T> cls) {
        return get(new GsonSerializer(this.ion.configure().getGson(), cls));
    }

    public <T> e<T> as(com.google.gson.b.a<T> aVar) {
        return as(new GsonSerializer(this.ion.configure().getGson(), aVar));
    }

    public <T> T get(com.google.gson.b.a<T> aVar) {
        return get(new GsonSerializer(this.ion.configure().getGson(), aVar));
    }

    /* access modifiers changed from: private */
    public String computeKey() {
        return this.rawKey.replace(":", io.fabric.sdk.android.services.b.b.ROLL_OVER_FILE_NAME_SEPARATOR);
    }

    public void remove() {
        this.cache.remove(computeKey());
    }
}
