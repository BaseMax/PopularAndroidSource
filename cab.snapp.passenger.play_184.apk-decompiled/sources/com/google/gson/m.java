package com.google.gson;

import com.google.gson.internal.k;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class m {
    public final JsonElement parse(String str) throws p {
        return parse((Reader) new StringReader(str));
    }

    public final JsonElement parse(Reader reader) throws j, p {
        try {
            JsonReader jsonReader = new JsonReader(reader);
            JsonElement parse = parse(jsonReader);
            if (!parse.isJsonNull()) {
                if (jsonReader.peek() != JsonToken.END_DOCUMENT) {
                    throw new p("Did not consume the entire document.");
                }
            }
            return parse;
        } catch (MalformedJsonException e) {
            throw new p((Throwable) e);
        } catch (IOException e2) {
            throw new j((Throwable) e2);
        } catch (NumberFormatException e3) {
            throw new p((Throwable) e3);
        }
    }

    public final JsonElement parse(JsonReader jsonReader) throws j, p {
        boolean isLenient = jsonReader.isLenient();
        jsonReader.setLenient(true);
        try {
            JsonElement parse = k.parse(jsonReader);
            jsonReader.setLenient(isLenient);
            return parse;
        } catch (StackOverflowError e) {
            throw new l("Failed parsing JSON source: " + jsonReader + " to Json", e);
        } catch (OutOfMemoryError e2) {
            throw new l("Failed parsing JSON source: " + jsonReader + " to Json", e2);
        } catch (Throwable th) {
            jsonReader.setLenient(isLenient);
            throw th;
        }
    }
}
