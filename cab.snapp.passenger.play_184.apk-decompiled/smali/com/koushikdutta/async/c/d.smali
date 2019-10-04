.class public final Lcom/koushikdutta/async/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "Lorg/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 36
    const-class v0, Lorg/a/a;

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
            "Lorg/a/a;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/f;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/c/d$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/c/d$1;-><init>(Lcom/koushikdutta/async/c/d;)V

    .line 21
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 17
    check-cast p2, Lorg/a/a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/c/d;->write(Lcom/koushikdutta/async/q;Lorg/a/a;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/q;Lorg/a/a;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 31
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {p2}, Lorg/a/a;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/c/f;->write(Lcom/koushikdutta/async/q;Ljava/lang/String;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
