.class final Lcom/bumptech/glide/load/b/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/d/a$a;,
        Lcom/bumptech/glide/load/b/d/a$b;
    }
.end annotation


# static fields
.field static final a:J

.field private static final b:Lcom/bumptech/glide/load/b/d/a$a;


# instance fields
.field private final c:Lcom/bumptech/glide/load/b/a/e;

.field private final d:Lcom/bumptech/glide/load/b/b/h;

.field private final e:Lcom/bumptech/glide/load/b/d/c;

.field private final f:Lcom/bumptech/glide/load/b/d/a$a;

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bumptech/glide/load/b/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Landroid/os/Handler;

.field private i:J

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/bumptech/glide/load/b/d/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/d/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/d/a;->b:Lcom/bumptech/glide/load/b/d/a$a;

    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/bumptech/glide/load/b/d/a;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/d/c;)V
    .locals 6

    .line 72
    sget-object v4, Lcom/bumptech/glide/load/b/d/a;->b:Lcom/bumptech/glide/load/b/d/a$a;

    new-instance v5, Landroid/os/Handler;

    .line 77
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 72
    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/d/a;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/d/c;Lcom/bumptech/glide/load/b/d/a$a;Landroid/os/Handler;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/b/h;Lcom/bumptech/glide/load/b/d/c;Lcom/bumptech/glide/load/b/d/a$a;Landroid/os/Handler;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->g:Ljava/util/Set;

    const-wide/16 v0, 0x28

    .line 65
    iput-wide v0, p0, Lcom/bumptech/glide/load/b/d/a;->i:J

    .line 87
    iput-object p1, p0, Lcom/bumptech/glide/load/b/d/a;->c:Lcom/bumptech/glide/load/b/a/e;

    .line 88
    iput-object p2, p0, Lcom/bumptech/glide/load/b/d/a;->d:Lcom/bumptech/glide/load/b/b/h;

    .line 89
    iput-object p3, p0, Lcom/bumptech/glide/load/b/d/a;->e:Lcom/bumptech/glide/load/b/d/c;

    .line 90
    iput-object p4, p0, Lcom/bumptech/glide/load/b/d/a;->f:Lcom/bumptech/glide/load/b/d/a$a;

    .line 91
    iput-object p5, p0, Lcom/bumptech/glide/load/b/d/a;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/d/a;->j:Z

    return-void
.end method

.method public final run()V
    .locals 10

    .line 1182
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 1105
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->e:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/d/c;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_4

    .line 2182
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    const-wide/16 v7, 0x20

    cmp-long v2, v5, v7

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_4

    .line 1106
    iget-object v2, p0, Lcom/bumptech/glide/load/b/d/a;->e:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/d/c;->remove()Lcom/bumptech/glide/load/b/d/d;

    move-result-object v2

    .line 1108
    iget-object v3, p0, Lcom/bumptech/glide/load/b/d/a;->g:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1109
    iget-object v3, p0, Lcom/bumptech/glide/load/b/d/a;->g:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1110
    iget-object v3, p0, Lcom/bumptech/glide/load/b/d/a;->c:Lcom/bumptech/glide/load/b/a/e;

    .line 3043
    iget v4, v2, Lcom/bumptech/glide/load/b/d/d;->b:I

    .line 3050
    iget v5, v2, Lcom/bumptech/glide/load/b/d/d;->c:I

    .line 3058
    iget-object v6, v2, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    .line 1111
    invoke-interface {v3, v4, v5, v6}, Lcom/bumptech/glide/load/b/a/e;->getDirty(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_2

    .line 4043
    :cond_2
    iget v3, v2, Lcom/bumptech/glide/load/b/d/d;->b:I

    .line 4050
    iget v4, v2, Lcom/bumptech/glide/load/b/d/d;->c:I

    .line 4058
    iget-object v5, v2, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    .line 1115
    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1121
    :goto_2
    invoke-static {v3}, Lcom/bumptech/glide/g/k;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v4

    .line 4151
    iget-object v5, p0, Lcom/bumptech/glide/load/b/d/a;->d:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v5}, Lcom/bumptech/glide/load/b/b/h;->getMaxSize()J

    move-result-wide v5

    iget-object v7, p0, Lcom/bumptech/glide/load/b/d/a;->d:Lcom/bumptech/glide/load/b/b/h;

    invoke-interface {v7}, Lcom/bumptech/glide/load/b/b/h;->getCurrentSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    int-to-long v7, v4

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    .line 1130
    new-instance v5, Lcom/bumptech/glide/load/b/d/a$b;

    invoke-direct {v5}, Lcom/bumptech/glide/load/b/d/a$b;-><init>()V

    .line 1131
    iget-object v6, p0, Lcom/bumptech/glide/load/b/d/a;->d:Lcom/bumptech/glide/load/b/b/h;

    iget-object v7, p0, Lcom/bumptech/glide/load/b/d/a;->c:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v3, v7}, Lcom/bumptech/glide/load/resource/bitmap/d;->obtain(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/resource/bitmap/d;

    move-result-object v3

    invoke-interface {v6, v5, v3}, Lcom/bumptech/glide/load/b/b/h;->put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;

    goto :goto_3

    .line 1133
    :cond_3
    iget-object v5, p0, Lcom/bumptech/glide/load/b/d/a;->c:Lcom/bumptech/glide/load/b/a/e;

    invoke-interface {v5, v3}, Lcom/bumptech/glide/load/b/a/e;->put(Landroid/graphics/Bitmap;)V

    :goto_3
    const/4 v3, 0x3

    const-string v5, "PreFillRunner"

    .line 1136
    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1137
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "allocated ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5043
    iget v5, v2, Lcom/bumptech/glide/load/b/d/d;->b:I

    .line 1138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5050
    iget v5, v2, Lcom/bumptech/glide/load/b/d/d;->c:I

    .line 1138
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5058
    iget-object v2, v2, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    .line 1139
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " size: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1143
    :cond_4
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/d/a;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->e:Lcom/bumptech/glide/load/b/d/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/d/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    if-eqz v3, :cond_6

    .line 157
    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/a;->h:Landroid/os/Handler;

    .line 5162
    iget-wide v1, p0, Lcom/bumptech/glide/load/b/d/a;->i:J

    const-wide/16 v3, 0x4

    mul-long v3, v3, v1

    .line 5163
    sget-wide v5, Lcom/bumptech/glide/load/b/d/a;->a:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/bumptech/glide/load/b/d/a;->i:J

    .line 157
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method
