package com.koushikdutta.async.c;

import com.koushikdutta.async.b.e;
import com.koushikdutta.async.b.j;
import com.koushikdutta.async.d.a;
import com.koushikdutta.async.http.a.b;
import com.koushikdutta.async.l;
import com.koushikdutta.async.n;
import com.koushikdutta.async.q;
import java.lang.reflect.Type;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;

public final class c implements a<Document> {
    public final e<Document> parse(n nVar) {
        return (e) new b().parse(nVar).then(new j<Document, l>() {
            public final /* synthetic */ void transform(Object obj) throws Exception {
                setComplete(DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new a((l) obj)));
            }
        });
    }

    public final void write(q qVar, Document document, com.koushikdutta.async.a.a aVar) {
        new b(document).write(null, qVar, aVar);
    }

    public final Type getType() {
        return Document.class;
    }
}
