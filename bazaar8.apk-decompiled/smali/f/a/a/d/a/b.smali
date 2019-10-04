.class public Lf/a/a/d/a/b;
.super Lf/a/a/d/b;
.source "XMLPlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/d/b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lf/a/a/d/a/b;->b()V

    return-void
.end method


# virtual methods
.method public a()Lf/a/a/a/b/c;
    .locals 1

    .line 6
    new-instance v0, Lf/a/a/d/a/a;

    invoke-direct {v0, p0}, Lf/a/a/d/a/a;-><init>(Lf/a/a/d/a/b;)V

    return-object v0
.end method

.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 4
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "splashPage"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "videoPage"

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-lez p1, :cond_1

    return-object v0

    :cond_1
    const-string p1, "page"

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/Theme;
    .locals 2

    .line 47
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "theme"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ui/Theme;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 1
    new-instance v0, Lf/a/a/d/a/a/b/u;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/u;-><init>()V

    const-string v1, "splashPage"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 2
    new-instance v0, Lf/a/a/d/a/a/b/f;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/f;-><init>()V

    const-string v1, "page"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 3
    new-instance v0, Lf/a/a/d/a/a/b/B;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/B;-><init>()V

    const-string v1, "videoPage"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 4
    new-instance v0, Lf/a/a/d/a/a/a;

    invoke-direct {v0}, Lf/a/a/d/a/a/a;-><init>()V

    const-string v1, "pages"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 5
    new-instance v0, Lf/a/a/d/a/a/c;

    invoke-direct {v0}, Lf/a/a/d/a/a/c;-><init>()V

    const-string v1, "precache"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 6
    new-instance v0, Lf/a/a/d/a/a/f;

    invoke-direct {v0}, Lf/a/a/d/a/a/f;-><init>()V

    const-string v1, "theme"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 7
    new-instance v0, Lf/a/a/d/a/a/b/g;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/g;-><init>()V

    const-string v1, "divider"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 8
    new-instance v0, Lf/a/a/d/a/a/b/x;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/x;-><init>()V

    const-string v1, "text"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 9
    new-instance v0, Lf/a/a/d/a/a/b/c;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/c;-><init>()V

    const-string v1, "button"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 10
    new-instance v0, Lf/a/a/d/a/a/b/h;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/h;-><init>()V

    const-string v1, "dualbuttons"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 11
    new-instance v0, Lf/a/a/d/a/a/b/q;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/q;-><init>()V

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 12
    new-instance v0, Lf/a/a/d/a/a/b/A;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/A;-><init>()V

    const-string v1, "video"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 13
    new-instance v0, Lf/a/a/d/a/a/b/o;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/o;-><init>()V

    const-string v1, "photoSlider"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 14
    new-instance v0, Lf/a/a/d/a/a/b/a;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a;-><init>()V

    const-string v1, "audio"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 15
    new-instance v0, Lf/a/a/d/a/a/b/a/f;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a/f;-><init>()V

    const-string v1, "imagePicker"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 16
    new-instance v0, Lf/a/a/d/a/a/b/a/e;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a/e;-><init>()V

    const-string v1, "edittext"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 17
    new-instance v0, Lf/a/a/d/a/a/b/a/a;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a/a;-><init>()V

    const-string v1, "addressInput"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 18
    new-instance v0, Lf/a/a/d/a/a/b/y;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/y;-><init>()V

    const-string v1, "validation"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 19
    new-instance v0, Lf/a/a/d/a/a/b/a/h;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a/h;-><init>()V

    const-string v1, "ratingInput"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 20
    new-instance v0, Lf/a/a/d/a/a/b/p;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/p;-><init>()V

    const-string v1, "rating"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 21
    new-instance v0, Lf/a/a/d/a/a/b/a/c;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a/c;-><init>()V

    const-string v1, "choices"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 22
    new-instance v0, Lf/a/a/d/a/a/b/m;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/m;-><init>()V

    const-string v1, "option"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 23
    new-instance v0, Lf/a/a/d/a/a/b;

    invoke-direct {v0}, Lf/a/a/d/a/a/b;-><init>()V

    const-string v1, "usesPermission"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 24
    new-instance v0, Lf/a/a/d/a/a/b/a/b;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/a/b;-><init>()V

    const-string v1, "checkbox"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 25
    new-instance v0, Lf/a/a/d/a/a/b/d;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/d;-><init>()V

    const-string v1, "card"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 26
    new-instance v0, Lf/a/a/d/a/a/b/b;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/b;-><init>()V

    const-string v1, "card:image"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 27
    new-instance v0, Lf/a/a/d/a/a/b/l;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/l;-><init>()V

    const-string v1, "list"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 28
    new-instance v0, Lf/a/a/d/a/a/c/d;

    invoke-direct {v0}, Lf/a/a/d/a/a/c/d;-><init>()V

    const-string v1, "payment"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 29
    new-instance v0, Lf/a/a/d/a/a/c/c;

    invoke-direct {v0}, Lf/a/a/d/a/a/c/c;-><init>()V

    const-string v1, "iabBuy"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 30
    new-instance v0, Lf/a/a/d/a/a/c/a;

    invoke-direct {v0}, Lf/a/a/d/a/a/c/a;-><init>()V

    const-string v1, "iabConsume"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 31
    new-instance v0, Lf/a/a/d/a/a/b/k;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/k;-><init>()V

    const-string v1, "header"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 32
    new-instance v0, Lf/a/a/d/a/a/b/j;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/j;-><init>()V

    const-string v1, "footer"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 33
    new-instance v0, Lf/a/a/d/a/a/b/t;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/t;-><init>()V

    const-string v1, "searchHeader"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 34
    new-instance v0, Lf/a/a/d/a/a/b/s;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/s;-><init>()V

    const-string v1, "searchFooter"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 35
    new-instance v0, Lf/a/a/d/a/a/a/b;

    invoke-direct {v0}, Lf/a/a/d/a/a/a/b;-><init>()V

    const-string v1, "change"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 36
    new-instance v0, Lf/a/a/d/a/a/a/a;

    invoke-direct {v0}, Lf/a/a/d/a/a/a/a;-><init>()V

    const-string v1, "change:button"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 37
    new-instance v0, Lf/a/a/d/a/a/a/g;

    invoke-direct {v0}, Lf/a/a/d/a/a/a/g;-><init>()V

    const-string v1, "change:text"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 38
    new-instance v0, Lf/a/a/d/a/a/a/e;

    invoke-direct {v0}, Lf/a/a/d/a/a/a/e;-><init>()V

    const-string v1, "change:image"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 39
    new-instance v0, Lf/a/a/d/a/a/a/d;

    invoke-direct {v0}, Lf/a/a/d/a/a/a/d;-><init>()V

    const-string v1, "change:footer"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 40
    new-instance v0, Lf/a/a/d/a/a/a/f;

    invoke-direct {v0}, Lf/a/a/d/a/a/a/f;-><init>()V

    const-string v1, "change:list"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 41
    new-instance v0, Lf/a/a/d/a/a/e;

    invoke-direct {v0}, Lf/a/a/d/a/a/e;-><init>()V

    const-string v1, "pull"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 42
    new-instance v0, Lf/a/a/d/a/a/d;

    invoke-direct {v0}, Lf/a/a/d/a/a/d;-><init>()V

    const-string v1, "pullResponse"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 43
    new-instance v0, Lf/a/a/d/a/a/b/v;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/v;-><init>()V

    const-string v1, "table"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 44
    new-instance v0, Lf/a/a/d/a/a/b/w;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/w;-><init>()V

    const-string v1, "tableRow"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 45
    new-instance v0, Lf/a/a/d/a/a/b/z;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/z;-><init>()V

    const-string v1, "comment"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    .line 46
    new-instance v0, Lf/a/a/d/a/a/b/e;

    invoke-direct {v0}, Lf/a/a/d/a/a/b/e;-><init>()V

    const-string v1, "commentList"

    invoke-virtual {p0, v1, v0}, Lf/a/a/d/b;->a(Ljava/lang/String;Lf/a/a/d/a$a;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "pages"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lf/a/a/g/g/e;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "usesPermission"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v3

    check-cast v3, Lf/a/a/g/g/e;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public e(Ljava/lang/Object;)Lir/cafebazaar/inline/ui/inflaters/PageInflater;
    .locals 3

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "splashPage"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/e/b/M;

    return-object p1

    :cond_0
    const-string v0, "videoPage"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lez v1, :cond_1

    .line 4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/e/b/X;

    return-object p1

    :cond_1
    const-string v0, "page"

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/e/b/l;

    return-object p1
.end method

.method public f(Ljava/lang/Object;)Lf/a/a/a/b/f;
    .locals 1

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "preCache"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    const-string v0, "precache"

    .line 2
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/a/b/f;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lir/cafebazaar/inline/ux/flow/pull/Puller;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "pull"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v3

    check-cast v3, Lir/cafebazaar/inline/ux/flow/pull/Puller;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.7.9"

    return-object v0
.end method

.method public h(Ljava/lang/Object;)Lf/a/a/d/a/a/c/b;
    .locals 3

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "iab"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lf/a/a/d/a/a/c/b;

    const-string v1, "key"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagename"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lf/a/a/d/a/a/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/Object;)Lf/a/a/e/a/o;
    .locals 2

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "change"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/e/a/o;

    return-object p1
.end method

.method public j(Ljava/lang/Object;)Lir/cafebazaar/inline/ux/payment/PaymentInfo;
    .locals 3

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "payment"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, v1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ux/payment/PaymentInfo;

    return-object p1

    :cond_0
    const-string v0, "iabBuy"

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0, v1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ux/payment/PaymentInfo;

    return-object p1

    :cond_1
    const-string v0, "iabConsume"

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ux/payment/PaymentInfo;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public k(Ljava/lang/Object;)Lf/a/a/e/t;
    .locals 2

    .line 1
    check-cast p1, Lorg/w3c/dom/Document;

    const-string v0, "pages"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lf/a/a/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object p1

    check-cast p1, Lf/a/a/e/t;

    return-object p1
.end method
