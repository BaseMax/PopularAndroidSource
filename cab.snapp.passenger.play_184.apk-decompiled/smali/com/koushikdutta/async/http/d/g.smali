.class public Lcom/koushikdutta/async/http/d/g;
.super Lcom/koushikdutta/async/v;
.source "SourceFile"


# static fields
.field static final synthetic g:Z


# instance fields
.field private d:Ljava/util/zip/Inflater;

.field f:Lcom/koushikdutta/async/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/koushikdutta/async/http/d/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/http/d/g;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/d/g;-><init>(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/zip/Inflater;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/koushikdutta/async/v;-><init>()V

    .line 24
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/d/g;->f:Lcom/koushikdutta/async/l;

    .line 65
    iput-object p1, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 6

    .line 28
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remaining()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 30
    :goto_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 31
    invoke-virtual {p2}, Lcom/koushikdutta/async/l;->remove()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 34
    iget-object v2, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 36
    :cond_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v2

    .line 37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 38
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_3

    .line 39
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 40
    iget-object v2, p0, Lcom/koushikdutta/async/http/d/g;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 41
    sget-boolean v2, Lcom/koushikdutta/async/http/d/g;->g:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 42
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    .line 43
    invoke-static {p1}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 46
    :cond_3
    iget-object v2, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->needsInput()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->finished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    :cond_4
    invoke-static {v0}, Lcom/koushikdutta/async/l;->reclaim(Ljava/nio/ByteBuffer;)V

    goto/16 :goto_0

    .line 50
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 51
    iget-object p2, p0, Lcom/koushikdutta/async/http/d/g;->f:Lcom/koushikdutta/async/l;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 53
    iget-object p1, p0, Lcom/koushikdutta/async/http/d/g;->f:Lcom/koushikdutta/async/l;

    invoke-static {p0, p1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/http/d/g;->report(Ljava/lang/Exception;)V

    return-void
.end method

.method public final report(Ljava/lang/Exception;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    if-eqz p1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/http/d/g;->d:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    new-instance v0, Lcom/koushikdutta/async/http/d/e;

    const-string v1, "data still remaining in inflater"

    invoke-direct {v0, v1, p1}, Lcom/koushikdutta/async/http/d/e;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object p1, v0

    .line 21
    :cond_0
    invoke-super {p0, p1}, Lcom/koushikdutta/async/v;->report(Ljava/lang/Exception;)V

    return-void
.end method
