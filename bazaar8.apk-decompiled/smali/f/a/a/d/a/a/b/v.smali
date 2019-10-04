.class public Lf/a/a/d/a/a/b/v;
.super Lf/a/a/d/a/a/b/i;
.source "TableFactory.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/a/a/d/a/a/b/i;-><init>()V

    const-string v0, "divider"

    .line 2
    iput-object v0, p0, Lf/a/a/d/a/a/b/v;->a:Ljava/lang/String;

    const-string v0, "size"

    .line 3
    iput-object v0, p0, Lf/a/a/d/a/a/b/v;->b:Ljava/lang/String;

    const-string v0, "border"

    .line 4
    iput-object v0, p0, Lf/a/a/d/a/a/b/v;->c:Ljava/lang/String;

    const-string v0, "borderColor"

    .line 5
    iput-object v0, p0, Lf/a/a/d/a/a/b/v;->d:Ljava/lang/String;

    const-string v0, "dividerColor"

    .line 6
    iput-object v0, p0, Lf/a/a/d/a/a/b/v;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Lf/a/a/e/b/n;
    .locals 2

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater;

    invoke-direct {v0}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lf/a/a/d/a/a/b/v;->e(Lorg/w3c/dom/Element;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->a(Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;)V

    .line 3
    invoke-virtual {p0, p1}, Lf/a/a/d/a/a/b/v;->d(Lorg/w3c/dom/Element;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->a(Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lf/a/a/d/a/a/b/v;->b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lf/a/a/e/b/y;->a(Ljava/util/List;)V

    .line 5
    invoke-virtual {p0, p1}, Lf/a/a/d/a/a/b/v;->b(Lorg/w3c/dom/Element;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    move-result-object p2

    invoke-virtual {v0, p2}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->a(Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;)V

    .line 6
    invoke-virtual {p0, p1}, Lf/a/a/d/a/a/b/v;->a(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->e(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lf/a/a/d/a/a/b/v;->c(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    const-string v0, "borderColor"

    .line 8
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final b(Lorg/w3c/dom/Element;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;
    .locals 3

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->none:Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    const-string v1, "border"

    .line 2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$TableBorderStyle;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final b(Lorg/w3c/dom/Element;Lf/a/a/d/f;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Lf/a/a/d/f;",
            ")",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 7
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lf/a/a/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Lf/a/a/d/a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    instance-of v3, v2, Lf/a/a/e/b/n;

    if-eqz v3, :cond_0

    .line 9
    check-cast v2, Lf/a/a/e/b/n;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final c(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 2

    const-string v0, "dividerColor"

    .line 1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "#"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final d(Lorg/w3c/dom/Element;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;
    .locals 3

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;->normal:Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    const-string v1, "size"

    .line 2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$Size;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final e(Lorg/w3c/dom/Element;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;
    .locals 3

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->table:Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    const-string v1, "divider"

    .line 2
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;->valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/TableInflater$ItemDecorationStatus;

    move-result-object v0

    :cond_0
    return-object v0
.end method
