.class public final Lcom/bumptech/glide/load/b/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/b/h;

.field private final b:Lcom/bumptech/glide/load/b/a/e;

.field private final c:Lcom/bumptech/glide/load/DecodeFormat;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/bumptech/glide/load/b/d/a;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->d:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/h;

    .line 30
    iput-object p2, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    .line 31
    iput-object p3, p0, Lcom/bumptech/glide/load/b/d/b;->c:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method


# virtual methods
.method public final varargs preFill([Lcom/bumptech/glide/load/b/d/d$a;)V
    .locals 9

    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d/a;->cancel()V

    .line 40
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/bumptech/glide/load/b/d/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 41
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 42
    aget-object v3, p1, v2

    .line 1146
    iget-object v4, v3, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    if-nez v4, :cond_2

    .line 45
    iget-object v4, p0, Lcom/bumptech/glide/load/b/d/b;->c:Lcom/bumptech/glide/load/DecodeFormat;

    sget-object v5, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_ARGB_8888:Lcom/bumptech/glide/load/DecodeFormat;

    if-ne v4, v5, :cond_1

    .line 46
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 44
    :goto_1
    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/d/d$a;->setConfig(Landroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/b/d/d$a;

    .line 1170
    :cond_2
    new-instance v4, Lcom/bumptech/glide/load/b/d/d;

    iget v5, v3, Lcom/bumptech/glide/load/b/d/d$a;->a:I

    iget v6, v3, Lcom/bumptech/glide/load/b/d/d$a;->b:I

    iget-object v7, v3, Lcom/bumptech/glide/load/b/d/d$a;->c:Landroid/graphics/Bitmap$Config;

    iget v3, v3, Lcom/bumptech/glide/load/b/d/d$a;->d:I

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/bumptech/glide/load/b/d/d;-><init>(IILandroid/graphics/Bitmap$Config;I)V

    .line 48
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2058
    :cond_3
    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/h;

    .line 2059
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/b/h;->getMaxSize()J

    move-result-wide v2

    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/b/h;->getCurrentSize()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/a/e;->getMaxSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 2062
    array-length p1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v4, p1, :cond_4

    aget-object v6, v0, v4

    .line 3065
    iget v6, v6, Lcom/bumptech/glide/load/b/d/d;->e:I

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    long-to-float p1, v2

    int-to-float v2, v5

    div-float/2addr p1, v2

    .line 2068
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2069
    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_5

    aget-object v4, v0, v1

    .line 4065
    iget v5, v4, Lcom/bumptech/glide/load/b/d/d;->e:I

    int-to-float v5, v5

    mul-float v5, v5, p1

    .line 2070
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 5043
    iget v6, v4, Lcom/bumptech/glide/load/b/d/d;->b:I

    .line 5050
    iget v7, v4, Lcom/bumptech/glide/load/b/d/d;->c:I

    .line 5058
    iget-object v8, v4, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    .line 4080
    invoke-static {v6, v7, v8}, Lcom/bumptech/glide/g/k;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v6

    .line 2072
    div-int/2addr v5, v6

    .line 2073
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 2076
    :cond_5
    new-instance p1, Lcom/bumptech/glide/load/b/d/c;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/b/d/c;-><init>(Ljava/util/Map;)V

    .line 52
    new-instance v0, Lcom/bumptech/glide/load/b/d/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/d/b;->b:Lcom/bumptech/glide/load/b/a/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/b;->a:Lcom/bumptech/glide/load/b/b/h;

    invoke-direct {v0, v1, v2, p1}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/d/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    .line 53
    iget-object p1, p0, Lcom/bumptech/glide/load/b/d/b;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/b;->e:Lcom/bumptech/glide/load/b/d/a;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
