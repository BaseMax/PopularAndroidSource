.class final Lcom/bumptech/glide/load/resource/bitmap/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/bitmap/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/r;

.field private final b:Lcom/bumptech/glide/g/d;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/r;Lcom/bumptech/glide/g/d;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/bitmap/t$a;->a:Lcom/bumptech/glide/load/resource/bitmap/r;

    .line 82
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/t$a;->b:Lcom/bumptech/glide/g/d;

    return-void
.end method


# virtual methods
.method public final onDecodeComplete(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t$a;->b:Lcom/bumptech/glide/g/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/d;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 102
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/b/a/e;->put(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_0
    throw v0

    :cond_1
    return-void
.end method

.method public final onObtainBounds()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t$a;->a:Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/r;->fixMarkLimit()V

    return-void
.end method
