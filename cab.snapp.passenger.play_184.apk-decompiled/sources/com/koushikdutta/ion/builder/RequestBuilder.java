package com.koushikdutta.ion.builder;

import android.app.ProgressDialog;
import android.os.Handler;
import android.widget.ProgressBar;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.google.gson.b.a;
import com.koushikdutta.async.http.t;
import com.koushikdutta.ion.HeadersCallback;
import com.koushikdutta.ion.ProgressCallback;
import com.koushikdutta.ion.builder.Builders;
import com.koushikdutta.ion.builder.MultipartBodyBuilder;
import com.koushikdutta.ion.builder.RequestBuilder;
import com.koushikdutta.ion.builder.UrlEncodedBuilder;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import org.w3c.dom.Document;

public interface RequestBuilder<F, R extends RequestBuilder, M extends MultipartBodyBuilder, U extends UrlEncodedBuilder> extends MultipartBodyBuilder<M>, UrlEncodedBuilder<U> {
    R addHeader(String str, String str2);

    R addHeaders(Map<String, List<String>> map);

    R addQueries(Map<String, List<String>> map);

    R addQuery(String str, String str2);

    R basicAuthentication(String str, String str2);

    R followRedirect(boolean z);

    R noCache();

    R onHeaders(HeadersCallback headersCallback);

    R progress(ProgressCallback progressCallback);

    R progressBar(ProgressBar progressBar);

    R progressDialog(ProgressDialog progressDialog);

    R progressHandler(ProgressCallback progressCallback);

    R proxy(String str, int i);

    F setByteArrayBody(byte[] bArr);

    F setDocumentBody(Document document);

    F setFileBody(File file);

    R setHandler(Handler handler);

    R setHeader(String str, String str2);

    R setHeader(t... tVarArr);

    F setJsonArrayBody(JsonArray jsonArray);

    F setJsonObjectBody(JsonObject jsonObject);

    <T> F setJsonPojoBody(T t);

    <T> F setJsonPojoBody(T t, a<T> aVar);

    R setLogging(String str, int i);

    Builders.Any.F setStreamBody(InputStream inputStream);

    Builders.Any.F setStreamBody(InputStream inputStream, int i);

    F setStringBody(String str);

    R setTimeout(int i);

    R uploadProgress(ProgressCallback progressCallback);

    R uploadProgressBar(ProgressBar progressBar);

    R uploadProgressDialog(ProgressDialog progressDialog);

    R uploadProgressHandler(ProgressCallback progressCallback);

    R userAgent(String str);
}
