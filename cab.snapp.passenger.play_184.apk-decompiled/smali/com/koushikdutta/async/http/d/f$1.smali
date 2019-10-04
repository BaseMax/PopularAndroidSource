.class final Lcom/koushikdutta/async/http/d/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/z$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/d/f;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
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
.field a:I

.field b:Z

.field final synthetic c:Lcom/koushikdutta/async/n;

.field final synthetic d:Lcom/koushikdutta/async/z;

.field final synthetic e:Lcom/koushikdutta/async/http/d/f;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/d/f;Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/z;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iput-object p2, p0, Lcom/koushikdutta/async/http/d/f$1;->c:Lcom/koushikdutta/async/n;

    iput-object p3, p0, Lcom/koushikdutta/async/http/d/f$1;->d:Lcom/koushikdutta/async/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 91
    new-instance v0, Lcom/koushikdutta/async/z;

    iget-object v1, p0, Lcom/koushikdutta/async/http/d/f$1;->c:Lcom/koushikdutta/async/n;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/z;-><init>(Lcom/koushikdutta/async/n;)V

    .line 92
    new-instance v1, Lcom/koushikdutta/async/http/d/f$1$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/d/f$1$2;-><init>(Lcom/koushikdutta/async/http/d/f$1;)V

    .line 106
    iget v2, p0, Lcom/koushikdutta/async/http/d/f$1;->a:I

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 107
    invoke-virtual {v0, v4, v1}, Lcom/koushikdutta/async/z;->until(BLcom/koushikdutta/async/a/d;)Lcom/koushikdutta/async/z;

    return-void

    :cond_0
    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/koushikdutta/async/z;->until(BLcom/koushikdutta/async/a/d;)Lcom/koushikdutta/async/z;

    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d/f$1;->b()V

    return-void
.end method

.method final b()V
    .locals 3

    .line 119
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/d/f$1;->b:Z

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1;->d:Lcom/koushikdutta/async/z;

    const/4 v1, 0x2

    new-instance v2, Lcom/koushikdutta/async/http/d/f$1$3;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/d/f$1$3;-><init>(Lcom/koushikdutta/async/http/d/f$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/z;->readByteArray(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/d/f;->d:Z

    .line 135
    iget-object v1, p0, Lcom/koushikdutta/async/http/d/f$1;->c:Lcom/koushikdutta/async/n;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/d/f;->setDataEmitter(Lcom/koushikdutta/async/n;)V

    return-void
.end method

.method public final bridge synthetic parsed(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/f$1;->parsed([B)V

    return-void
.end method

.method public final parsed([B)V
    .locals 5

    .line 57
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/http/d/f;->a([BLjava/nio/ByteOrder;)S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, -0x74e1

    if-eq v0, v3, :cond_0

    .line 59
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    new-instance v3, Ljava/io/IOException;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "unknown format (magic number %x)"

    invoke-static {v4, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lcom/koushikdutta/async/http/d/f;->report(Ljava/lang/Exception;)V

    .line 60
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1;->c:Lcom/koushikdutta/async/n;

    new-instance v0, Lcom/koushikdutta/async/a/d$a;

    invoke-direct {v0}, Lcom/koushikdutta/async/a/d$a;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 63
    aget-byte v0, p1, v0

    iput v0, p0, Lcom/koushikdutta/async/http/d/f$1;->a:I

    .line 64
    iget v0, p0, Lcom/koushikdutta/async/http/d/f$1;->a:I

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/http/d/f$1;->b:Z

    .line 65
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/d/f$1;->b:Z

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/f$1;->e:Lcom/koushikdutta/async/http/d/f;

    iget-object v0, v0, Lcom/koushikdutta/async/http/d/f;->e:Ljava/util/zip/CRC32;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljava/util/zip/CRC32;->update([BII)V

    .line 68
    :cond_2
    iget p1, p0, Lcom/koushikdutta/async/http/d/f$1;->a:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_3

    .line 69
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/f$1;->d:Lcom/koushikdutta/async/z;

    new-instance v0, Lcom/koushikdutta/async/http/d/f$1$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/d/f$1$1;-><init>(Lcom/koushikdutta/async/http/d/f$1;)V

    invoke-virtual {p1, v3, v0}, Lcom/koushikdutta/async/z;->readByteArray(ILcom/koushikdutta/async/z$f;)Lcom/koushikdutta/async/z;

    return-void

    .line 86
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/d/f$1;->a()V

    return-void
.end method
