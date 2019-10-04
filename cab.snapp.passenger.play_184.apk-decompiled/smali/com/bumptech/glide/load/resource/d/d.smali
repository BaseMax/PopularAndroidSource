.class public final Lcom/bumptech/glide/load/resource/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/i<",
        "Lcom/bumptech/glide/load/resource/d/c;",
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
.method public final encode(Lcom/bumptech/glide/load/b/v;Ljava/io/File;Lcom/bumptech/glide/load/g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/g;",
            ")Z"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/d/c;

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/d/c;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bumptech/glide/g/a;->toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/g;)Z
    .locals 0

    .line 17
    check-cast p1, Lcom/bumptech/glide/load/b/v;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/resource/d/d;->encode(Lcom/bumptech/glide/load/b/v;Ljava/io/File;Lcom/bumptech/glide/load/g;)Z

    move-result p1

    return p1
.end method

.method public final getEncodeStrategy(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/EncodeStrategy;
    .locals 0

    .line 23
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->SOURCE:Lcom/bumptech/glide/load/EncodeStrategy;

    return-object p1
.end method
