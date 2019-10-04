package c.e.d;

import c.e.d.b.z;
import c.e.d.d.b;
import com.google.gson.JsonIOException;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSyntaxException;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

/* compiled from: JsonParser */
public final class s {
    public p a(String str) {
        return a((Reader) new StringReader(str));
    }

    public p a(Reader reader) {
        try {
            b bVar = new b(reader);
            p a2 = a(bVar);
            if (!a2.g()) {
                if (bVar.K() != JsonToken.END_DOCUMENT) {
                    throw new JsonSyntaxException("Did not consume the entire document.");
                }
            }
            return a2;
        } catch (MalformedJsonException e2) {
            throw new JsonSyntaxException((Throwable) e2);
        } catch (IOException e3) {
            throw new JsonIOException((Throwable) e3);
        } catch (NumberFormatException e4) {
            throw new JsonSyntaxException((Throwable) e4);
        }
    }

    public p a(b bVar) {
        boolean A = bVar.A();
        bVar.b(true);
        try {
            p a2 = z.a(bVar);
            bVar.b(A);
            return a2;
        } catch (StackOverflowError e2) {
            throw new JsonParseException("Failed parsing JSON source: " + bVar + " to Json", e2);
        } catch (OutOfMemoryError e3) {
            throw new JsonParseException("Failed parsing JSON source: " + bVar + " to Json", e3);
        } catch (Throwable th) {
            bVar.b(A);
            throw th;
        }
    }
}
