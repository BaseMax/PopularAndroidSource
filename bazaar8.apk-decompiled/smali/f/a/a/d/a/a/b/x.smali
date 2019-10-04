.class public Lf/a/a/d/a/a/b/x;
.super Lf/a/a/d/a/a/b/i;
.source "TextFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    return-void
.end method

.method public static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6

    const-string v0, "yes"

    .line 6
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 7
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 8
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 9
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v3

    const-string v4, "omit-xml-declaration"

    .line 11
    invoke-virtual {v3, v4, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "indent"

    .line 12
    invoke-virtual {v3, v4, v0}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 14
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 15
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 16
    invoke-virtual {v3, v5, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 17
    invoke-static {p0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    .line 19
    :cond_0
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 0

    .line 1
    new-instance p2, Lir/cafebazaar/inline/ui/inflaters/TextInflater;

    invoke-direct {p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater;-><init>()V

    .line 2
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/x;->b(Lir/cafebazaar/inline/ui/inflaters/TextInflater;Lorg/w3c/dom/Element;)V

    .line 3
    invoke-virtual {p0, p2, p1}, Lf/a/a/d/a/a/b/x;->a(Lir/cafebazaar/inline/ui/inflaters/TextInflater;Lorg/w3c/dom/Element;)V

    return-object p2
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/TextInflater;Lorg/w3c/dom/Element;)V
    .locals 2

    const-string v0, "style"

    .line 4
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->a(Lir/cafebazaar/inline/ui/inflaters/TextInflater$Style;)V

    :cond_0
    return-void
.end method

.method public b(Lir/cafebazaar/inline/ui/inflaters/TextInflater;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-static {p2}, Lf/a/a/d/a/a/b/x;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lir/cafebazaar/inline/ui/inflaters/TextInflater;->c(Ljava/lang/String;)V

    return-void
.end method
