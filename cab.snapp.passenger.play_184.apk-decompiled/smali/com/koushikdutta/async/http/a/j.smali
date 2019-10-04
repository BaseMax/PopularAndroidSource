.class public final Lcom/koushikdutta/async/http/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/http/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/a/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "text/plain"


# instance fields
.field a:[B

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/koushikdutta/async/http/a/j;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/koushikdutta/async/http/a/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/j;->get()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/a/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    const-string v0, "text/plain"

    return-object v0
.end method

.method public final length()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/j;->a:[B

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/a/j;->a:[B

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/j;->a:[B

    array-length v0, v0

    return v0
.end method

.method public final parse(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/koushikdutta/async/c/f;

    invoke-direct {v0}, Lcom/koushikdutta/async/c/f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/c/f;->parse(Lcom/koushikdutta/async/n;)Lcom/koushikdutta/async/b/e;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/a/j$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/a/j$1;-><init>(Lcom/koushikdutta/async/http/a/j;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/b/e;->setCallback(Lcom/koushikdutta/async/b/f;)Lcom/koushikdutta/async/b/e;

    return-void
.end method

.method public final readFullyOnRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/koushikdutta/async/http/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final write(Lcom/koushikdutta/async/http/d;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 37
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/j;->a:[B

    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/j;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/a/j;->a:[B

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/a/j;->a:[B

    invoke-static {p2, p1, p3}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V

    return-void
.end method
