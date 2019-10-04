.class final Lcom/koushikdutta/async/http/d/f$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/z$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/d/f$1$1;->parsed([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/z$f<",
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/d/f$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/d/f$1$1;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$1$1;->a:Lcom/koushikdutta/async/http/d/f$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/f$1$1$1;->parsed([B)V

    return-void
.end method

.method public final parsed([B)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1$1$1;->a:Lcom/koushikdutta/async/http/d/f$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f$1$1;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/d/f$1;->b:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1$1$1;->a:Lcom/koushikdutta/async/http/d/f$1$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f$1$1;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f;->e:Ljava/util/zip/CRC32;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/zip/CRC32;->update([BII)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$1$1;->a:Lcom/koushikdutta/async/http/d/f$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/d/f$1$1;->a:Lcom/koushikdutta/async/http/d/f$1;

    .line 1052
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d/f$1;->a()V

    return-void
.end method
