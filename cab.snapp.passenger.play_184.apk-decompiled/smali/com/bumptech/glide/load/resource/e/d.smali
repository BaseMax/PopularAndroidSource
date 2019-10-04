.class public final Lcom/bumptech/glide/load/resource/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/e/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/e/e<",
        "Lcom/bumptech/glide/load/resource/d/c;",
        "[B>;"
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
.method public final transcode(Lcom/bumptech/glide/load/b/v;Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/b/v<",
            "[B>;"
        }
    .end annotation

    .line 22
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/resource/d/c;

    .line 23
    invoke-virtual {p1}, Lcom/bumptech/glide/load/resource/d/c;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/bumptech/glide/load/resource/a/b;

    invoke-static {p1}, Lcom/bumptech/glide/g/a;->toBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/bumptech/glide/load/resource/a/b;-><init>([B)V

    return-object p2
.end method
