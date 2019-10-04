.class public final Lcom/koushikdutta/async/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/c/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/c/f;->a:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 48
    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/n;",
            ")",
            "Lcom/koushikdutta/async/b/e<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 28
    invoke-interface {p1}, Lcom/koushikdutta/async/n;->charset()Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/koushikdutta/async/c/b;

    invoke-direct {v1}, Lcom/koushikdutta/async/c/b;-><init>()V

    invoke-virtual {v1, p1}, Lcom/koushikdutta/async/c/b;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v1, Lcom/koushikdutta/async/c/f$1;

    invoke-direct {v1, p0, v0}, Lcom/koushikdutta/async/c/f$1;-><init>(Lcom/koushikdutta/async/c/f;Ljava/lang/String;)V

    .line 30
    invoke-interface {p1, v1}, Lcom/koushikdutta/async/b/e;->then(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/f;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/b/e;

    return-object p1
.end method

.method public final bridge synthetic write(Lcom/koushikdutta/async/q;Ljava/lang/Object;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 16
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/c/f;->write(Lcom/koushikdutta/async/q;Ljava/lang/String;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public final write(Lcom/koushikdutta/async/q;Ljava/lang/String;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    .line 43
    new-instance v0, Lcom/koushikdutta/async/c/b;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/b;-><init>()V

    new-instance v1, Lcom/koushikdutta/async/l;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/koushikdutta/async/l;-><init>([B)V

    invoke-virtual {v0, p1, v1, p3}, Lcom/koushikdutta/async/c/b;->write(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
