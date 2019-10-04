.class public final Lcom/koushikdutta/async/http/d/c;
.super Lcom/koushikdutta/async/w;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/q;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/w;-><init>(Lcom/koushikdutta/async/q;)V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 1

    const v0, 0x7fffffff

    .line 24
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/d/c;->setMaxBuffer(I)V

    .line 25
    new-instance v0, Lcom/koushikdutta/async/l;

    invoke-direct {v0}, Lcom/koushikdutta/async/l;-><init>()V

    .line 26
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/d/c;->write(Lcom/koushikdutta/async/l;)V

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/http/d/c;->setMaxBuffer(I)V

    return-void
.end method

.method public final filter(Lcom/koushikdutta/async/l;)Lcom/koushikdutta/async/l;
    .locals 3

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/l;->addFirst(Ljava/nio/ByteBuffer;)V

    .line 18
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    return-object p1
.end method
