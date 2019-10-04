.class public final Lcom/koushikdutta/async/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "Lcom/koushikdutta/async/l;",
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

    .line 61
    const-class v0, Lcom/koushikdutta/async/l;

    return-object v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Lcom/koushikdutta/async/l;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    .line 21
    new-instance v1, Lcom/koushikdutta/async/c/b$1;

    invoke-direct {v1, p0, p1}, Lcom/koushikdutta/async/c/b$1;-><init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/n;)V

    .line 27
    new-instance v2, Lcom/koushikdutta/async/c/b$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/c/b$2;-><init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/l;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 34
    new-instance v2, Lcom/koushikdutta/async/c/b$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/koushikdutta/async/c/b$3;-><init>(Lcom/koushikdutta/async/c/b;Lcom/koushikdutta/async/b/i;Lcom/koushikdutta/async/l;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    return-object v1
.end method

.method public final write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 56
    invoke-static {p1, p2, p3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 17
    check-cast p2, Lcom/koushikdutta/async/l;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/c/b;->write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
