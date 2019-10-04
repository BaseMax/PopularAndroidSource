.class final Lcom/koushikdutta/async/http/d/f$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/d/f$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/http/d/f$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/d/f$1;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$2;->a:Lcom/koushikdutta/async/http/d/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 4

    .line 95
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$2;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-boolean p1, p1, Lcom/koushikdutta/async/http/d/f$1;->b:Z

    if-eqz p1, :cond_0

    .line 96
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remove()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1$2;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f;->e:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 99
    invoke-static {p1}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->recycle()V

    .line 103
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$2;->a:Lcom/koushikdutta/async/http/d/f$1;

    .line 1052
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/d/f$1;->b()V

    return-void
.end method
