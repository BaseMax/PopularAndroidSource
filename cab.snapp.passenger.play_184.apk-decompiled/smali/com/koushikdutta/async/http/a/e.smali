.class public final Lcom/koushikdutta/async/http/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Lorg/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/json"


# instance fields
.field a:[B

.field b:Lorg/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/a/c;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/e;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/e;->b:Lorg/a/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/e;->get()Lorg/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final get()Lorg/a/c;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->b:Lorg/a/c;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "application/json"

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->b:Lorg/a/c;

    invoke-virtual {v0}, Lorg/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:[B

    .line 53
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/e;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 26
    new-instance v0, Lcom/koushikdutta/async/c/e;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/e;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/a/e$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/a/e$1;-><init>(Lcom/koushikdutta/async/http/a/e;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    return-void
.end method

.method public final readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/e;->a:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method
