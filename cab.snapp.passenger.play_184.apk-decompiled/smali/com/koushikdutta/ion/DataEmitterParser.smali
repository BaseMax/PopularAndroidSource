.class Lcom/koushikdutta/ion/DataEmitterParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "Lcom/koushikdutta/async/n;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 31
    const-class v0, Lcom/koushikdutta/async/n;

    return-object v0
.end method

.method public parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/n;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Lcom/koushikdutta/async/b/i;

    invoke-direct {v0}, Lcom/koushikdutta/async/b/i;-><init>()V

    .line 20
    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 26
    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/koushikdutta/async/n;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/ion/DataEmitterParser;->write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
