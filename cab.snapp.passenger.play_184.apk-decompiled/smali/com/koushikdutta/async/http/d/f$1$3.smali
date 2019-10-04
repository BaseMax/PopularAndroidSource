.class final Lcom/koushikdutta/async/http/d/f$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/z$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/d/f$1;->b()V
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
.field final synthetic a:Lcom/koushikdutta/async/http/d/f$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/d/f$1;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/f$1$3;->parsed([B)V

    return-void
.end method

.method public final parsed([B)V
    .locals 2

    .line 122
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/d/f;->a([BLjava/nio/ByteOrder;)S

    move-result p1

    .line 123
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    if-eq v0, p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    new-instance v0, Ljava/io/IOException;

    const-string v1, "CRC mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d/f;->report(Ljava/lang/Exception;)V

    return-void

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iget-object p1, p1, Lcom/koushikdutta/async/http/d/f;->e:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/koushikdutta/async/http/d/f;->d:Z

    .line 129
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1$3;->a:Lcom/koushikdutta/async/http/d/f$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f$1;->c:Lcom/koushikdutta/async/n;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/http/d/f;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    return-void
.end method
