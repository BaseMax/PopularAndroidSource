.class public Lf/a/a/g/c/a;
.super Ljava/lang/Object;
.source "Comment.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "date"

    .line 2
    iput-object v0, p0, Lf/a/a/g/c/a;->a:Ljava/lang/String;

    const-string v1, "name"

    .line 3
    iput-object v1, p0, Lf/a/a/g/c/a;->b:Ljava/lang/String;

    const-string v2, "id"

    .line 4
    iput-object v2, p0, Lf/a/a/g/c/a;->c:Ljava/lang/String;

    .line 5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/c/a;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p1}, Lf/a/a/g/c/a;->a(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/c/a;->e:Ljava/lang/String;

    .line 7
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf/a/a/g/c/a;->f:Ljava/lang/String;

    .line 8
    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/g/c/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lf/a/a/g/c/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/c/a;->d:Ljava/lang/String;

    invoke-static {v0}, Lf/a/a/f/g;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
