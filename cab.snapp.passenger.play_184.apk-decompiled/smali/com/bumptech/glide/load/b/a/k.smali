.class public final Lcom/bumptech/glide/load/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/k$b;,
        Lcom/bumptech/glide/load/b/a/k$a;
    }
.end annotation


# static fields
.field private static final a:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/a/l;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private final e:Lcom/bumptech/glide/load/b/a/k$a;

.field private f:J

.field private g:J

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/b/a/k;->a:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    .line 54
    invoke-static {}, Lcom/bumptech/glide/load/b/a/k;->d()Lcom/bumptech/glide/load/b/a/l;

    move-result-object v0

    .line 1274
    new-instance v1, Ljava/util/HashSet;

    invoke-static {}, Landroid/graphics/Bitmap$Config;->values()[Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1275
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 1279
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1281
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 1282
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1284
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 54
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bumptech/glide/load/b/a/k;-><init>(JLcom/bumptech/glide/load/b/a/l;Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(JLcom/bumptech/glide/load/b/a/l;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/bumptech/glide/load/b/a/l;",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Lcom/bumptech/glide/load/b/a/k;->d:J

    .line 42
    iput-wide p1, p0, Lcom/bumptech/glide/load/b/a/k;->f:J

    .line 43
    iput-object p3, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    .line 44
    iput-object p4, p0, Lcom/bumptech/glide/load/b/a/k;->c:Ljava/util/Set;

    .line 45
    new-instance p1, Lcom/bumptech/glide/load/b/a/k$b;

    invoke-direct {p1}, Lcom/bumptech/glide/load/b/a/k$b;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/k;->e:Lcom/bumptech/glide/load/b/a/k$a;

    return-void
.end method

.method public constructor <init>(JLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Landroid/graphics/Bitmap$Config;",
            ">;)V"
        }
    .end annotation

    .line 68
    invoke-static {}, Lcom/bumptech/glide/load/b/a/k;->d()Lcom/bumptech/glide/load/b/a/l;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bumptech/glide/load/b/a/k;-><init>(JLcom/bumptech/glide/load/b/a/l;Ljava/util/Set;)V

    return-void
.end method

.method private static a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    sget-object p2, Lcom/bumptech/glide/load/b/a/k;->a:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->f:J

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/a/k;->a(J)V

    return-void
.end method

.method private declared-synchronized a(J)V
    .locals 5

    monitor-enter p0

    .line 229
    :goto_0
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_3

    .line 230
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/l;->removeLast()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "LruBitmapPool"

    const/4 p2, 0x5

    .line 233
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->c()V

    :cond_0
    const-wide/16 p1, 0x0

    .line 237
    iput-wide p1, p0, Lcom/bumptech/glide/load/b/a/k;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/k;->e:Lcom/bumptech/glide/load/b/a/k$a;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/a/k$a;->remove(Landroid/graphics/Bitmap;)V

    .line 241
    iget-wide v1, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/b/a/l;->getSize(Landroid/graphics/Bitmap;)I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    .line 242
    iget v1, p0, Lcom/bumptech/glide/load/b/a/k;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/b/a/k;->k:I

    const-string v1, "LruBitmapPool"

    const/4 v2, 0x3

    .line 243
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Evicting bitmap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/b/a/l;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->b()V

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 249
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method private declared-synchronized b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 6

    monitor-enter p0

    .line 2155
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 2159
    sget-object v0, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-eq p3, v0, :cond_0

    goto :goto_0

    .line 2160
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create a mutable Bitmap with config: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 172
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    if-eqz p3, :cond_2

    move-object v1, p3

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/bumptech/glide/load/b/a/k;->a:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-interface {v0, p1, p2, v1}, Lcom/bumptech/glide/load/b/a/l;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v2, "LruBitmapPool"

    const/4 v3, 0x3

    .line 174
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Missing bitmap="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/l;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :cond_3
    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->i:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/b/a/k;->i:I

    goto :goto_2

    .line 179
    :cond_4
    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->h:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/bumptech/glide/load/b/a/k;->h:I

    .line 180
    iget-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    iget-object v4, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v4, v0}, Lcom/bumptech/glide/load/b/a/l;->getSize(Landroid/graphics/Bitmap;)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    .line 181
    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->e:Lcom/bumptech/glide/load/b/a/k$a;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/b/a/k$a;->remove(Landroid/graphics/Bitmap;)V

    .line 2195
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 2201
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_5

    .line 2202
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    :cond_5
    :goto_2
    const-string v1, "LruBitmapPool"

    const/4 v2, 0x2

    .line 184
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get bitmap="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v2, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/l;->logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_6
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b()V
    .locals 2

    const-string v0, "LruBitmapPool"

    const/4 v1, 0x2

    .line 252
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->c()V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hits="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/load/b/a/k;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", misses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/a/k;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", puts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/a/k;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", evictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/a/k;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/load/b/a/k;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static d()Lcom/bumptech/glide/load/b/a/l;
    .locals 2

    .line 264
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 265
    new-instance v0, Lcom/bumptech/glide/load/b/a/n;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/n;-><init>()V

    goto :goto_0

    .line 267
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/b/a/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/c;-><init>()V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final clearMemory()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 211
    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/a/k;->a(J)V

    return-void
.end method

.method public final get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 129
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 142
    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/b/a/k;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final getMaxSize()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->f:J

    return-wide v0
.end method

.method public final declared-synchronized put(Landroid/graphics/Bitmap;)V
    .locals 6

    monitor-enter p0

    if-eqz p1, :cond_5

    .line 87
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/l;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/bumptech/glide/load/b/a/k;->f:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->c:Ljava/util/Set;

    .line 91
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/l;->getSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 103
    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/b/a/l;->put(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/k;->e:Lcom/bumptech/glide/load/b/a/k$a;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/b/a/k$a;->add(Landroid/graphics/Bitmap;)V

    .line 106
    iget v2, p0, Lcom/bumptech/glide/load/b/a/k;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bumptech/glide/load/b/a/k;->j:I

    .line 107
    iget-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bumptech/glide/load/b/a/k;->g:J

    const-string v0, "LruBitmapPool"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Put bitmap in pool="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/b/a/l;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->b()V

    .line 114
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "LruBitmapPool"

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reject bitmap from pool, bitmap: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/k;->b:Lcom/bumptech/glide/load/b/a/l;

    .line 94
    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/b/a/l;->logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is mutable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is allowed config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/k;->c:Ljava/util/Set;

    .line 96
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    .line 88
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot pool recycled bitmap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 85
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Bitmap must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setSizeMultiplier(F)V
    .locals 2

    monitor-enter p0

    .line 78
    :try_start_0
    iget-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->d:J

    long-to-float v0, v0

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bumptech/glide/load/b/a/k;->f:J

    .line 79
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/k;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final trimMemory(I)V
    .locals 4

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/k;->clearMemory()V

    return-void

    :cond_0
    const/16 v0, 0x14

    if-ge p1, v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/k;->getMaxSize()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/b/a/k;->a(J)V

    :cond_2
    return-void
.end method
