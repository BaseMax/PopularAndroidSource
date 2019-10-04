.class public final Lcom/koushikdutta/async/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 43
    const-class v0, Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lorg/w3c/dom/Document;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/koushikdutta/async/c/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/c/c$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/c/c$1;-><init>(Lcom/koushikdutta/async/c/c;)V

    .line 26
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 22
    check-cast p2, Lorg/w3c/dom/Document;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/c/c;->write(Lcom/koushikdutta/async/q;Lorg/w3c/dom/Document;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/q;Lorg/w3c/dom/Document;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 38
    new-instance v0, Lcom/koushikdutta/async/http/a/b;

    invoke-direct {v0, p2}, Lcom/koushikdutta/async/http/a/b;-><init>(Lorg/w3c/dom/Document;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2, p1, p3}, Lcom/koushikdutta/async/http/a/b;->write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
