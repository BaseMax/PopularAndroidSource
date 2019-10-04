package com.koushikdutta.async.http.a;

import com.koushikdutta.async.a.a;
import com.koushikdutta.async.af;
import com.koushikdutta.async.b.f;
import com.koushikdutta.async.c.c;
import com.koushikdutta.async.http.d;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.io.ByteArrayOutputStream;
import java.io.OutputStreamWriter;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Document;

public final class b implements a<Document> {
    public static final String CONTENT_TYPE = "application/xml";

    /* renamed from: a  reason: collision with root package name */
    ByteArrayOutputStream f4605a;

    /* renamed from: b  reason: collision with root package name */
    Document f4606b;

    public final String getContentType() {
        return CONTENT_TYPE;
    }

    public final boolean readFullyOnRequest() {
        return true;
    }

    public b() {
        this(null);
    }

    public b(Document document) {
        this.f4606b = document;
    }

    private void a() {
        if (this.f4605a == null) {
            try {
                DOMSource dOMSource = new DOMSource(this.f4606b);
                Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                this.f4605a = new ByteArrayOutputStream();
                OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.f4605a, com.koushikdutta.async.e.b.UTF_8);
                newTransformer.transform(dOMSource, new StreamResult(outputStreamWriter));
                outputStreamWriter.flush();
            } catch (Exception unused) {
            }
        }
    }

    public final void write(d dVar, q qVar, a aVar) {
        a();
        af.writeAll(qVar, this.f4605a.toByteArray(), aVar);
    }

    public final void parse(n nVar, final a aVar) {
        new c().parse(nVar).setCallback(new f<Document>() {
            public final void onCompleted(Exception exc, Document document) {
                b.this.f4606b = document;
                aVar.onCompleted(exc);
            }
        });
    }

    public final int length() {
        a();
        return this.f4605a.size();
    }

    public final Document get() {
        return this.f4606b;
    }
}
