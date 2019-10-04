.class public final Lcom/bumptech/glide/load/resource/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/b/a$a;


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/a/e;

.field private final b:Lcom/bumptech/glide/load/b/a/b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Lcom/bumptech/glide/load/b/a/e;

    .line 35
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method


# virtual methods
.method public final obtain(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/e;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final obtainByteArray(I)[B
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_0

    .line 53
    new-array p1, p1, [B

    return-object p1

    .line 55
    :cond_0
    const-class v1, [B

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/b/a/b;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public final obtainIntArray(I)[I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_0

    .line 70
    new-array p1, p1, [I

    return-object p1

    .line 72
    :cond_0
    const-class v1, [I

    invoke-interface {v0, p1, v1}, Lcom/bumptech/glide/load/b/a/b;->get(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    return-object p1
.end method

.method public final release(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/e;->put(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final release([B)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final release([I)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/b;->b:Lcom/bumptech/glide/load/b/a/b;

    if-nez v0, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/b;->put(Ljava/lang/Object;)V

    return-void
.end method
