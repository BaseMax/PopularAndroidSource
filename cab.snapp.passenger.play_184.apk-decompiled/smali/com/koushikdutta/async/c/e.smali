.class public final Lcom/koushikdutta/async/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "Lorg/a/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 34
    const-class v0, Lorg/a/c;

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
            "Lorg/a/c;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/f;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/c/e$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/c/e$1;-><init>(Lcom/koushikdutta/async/c/e;)V

    .line 19
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 15
    check-cast p2, Lorg/a/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/c/e;->write(Lcom/koushikdutta/async/q;Lorg/a/c;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/q;Lorg/a/c;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 29
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {p2}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p3}, Lcom/koushikdutta/async/c/f;->write(Lcom/koushikdutta/async/q;Ljava/lang/String;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
