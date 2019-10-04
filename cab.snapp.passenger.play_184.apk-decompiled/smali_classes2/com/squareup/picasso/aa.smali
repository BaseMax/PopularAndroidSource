.class final Lcom/squareup/picasso/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/picasso/aa$a;
    }
.end annotation


# instance fields
.field final a:Landroid/os/HandlerThread;

.field final b:Lcom/squareup/picasso/d;

.field final c:Landroid/os/Handler;

.field d:J

.field e:J

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:J

.field l:I

.field m:I

.field n:I


# direct methods
.method constructor <init>(Lcom/squareup/picasso/d;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/squareup/picasso/aa;->b:Lcom/squareup/picasso/d;

    .line 53
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "Picasso-Stats"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/squareup/picasso/aa;->a:Landroid/os/HandlerThread;

    .line 54
    iget-object p1, p0, Lcom/squareup/picasso/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 55
    iget-object p1, p0, Lcom/squareup/picasso/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Landroid/os/Looper;)V

    .line 56
    new-instance p1, Lcom/squareup/picasso/aa$a;

    iget-object v0, p0, Lcom/squareup/picasso/aa;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/squareup/picasso/aa$a;-><init>(Landroid/os/Looper;Lcom/squareup/picasso/aa;)V

    iput-object p1, p0, Lcom/squareup/picasso/aa;->c:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/squareup/picasso/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method final a(Landroid/graphics/Bitmap;I)V
    .locals 2

    .line 118
    invoke-static {p1}, Lcom/squareup/picasso/af;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 119
    iget-object v0, p0, Lcom/squareup/picasso/aa;->c:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method final b()Lcom/squareup/picasso/ab;
    .locals 28

    move-object/from16 v0, p0

    .line 110
    new-instance v25, Lcom/squareup/picasso/ab;

    move-object/from16 v1, v25

    iget-object v2, v0, Lcom/squareup/picasso/aa;->b:Lcom/squareup/picasso/d;

    invoke-interface {v2}, Lcom/squareup/picasso/d;->maxSize()I

    move-result v2

    iget-object v3, v0, Lcom/squareup/picasso/aa;->b:Lcom/squareup/picasso/d;

    invoke-interface {v3}, Lcom/squareup/picasso/d;->size()I

    move-result v3

    iget-wide v4, v0, Lcom/squareup/picasso/aa;->d:J

    iget-wide v6, v0, Lcom/squareup/picasso/aa;->e:J

    iget-wide v8, v0, Lcom/squareup/picasso/aa;->f:J

    iget-wide v10, v0, Lcom/squareup/picasso/aa;->g:J

    iget-wide v12, v0, Lcom/squareup/picasso/aa;->h:J

    iget-wide v14, v0, Lcom/squareup/picasso/aa;->i:J

    move-object/from16 v26, v1

    move/from16 v27, v2

    iget-wide v1, v0, Lcom/squareup/picasso/aa;->j:J

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lcom/squareup/picasso/aa;->k:J

    move-wide/from16 v18, v1

    iget v1, v0, Lcom/squareup/picasso/aa;->l:I

    move/from16 v20, v1

    iget v1, v0, Lcom/squareup/picasso/aa;->m:I

    move/from16 v21, v1

    iget v1, v0, Lcom/squareup/picasso/aa;->n:I

    move/from16 v22, v1

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct/range {v1 .. v24}, Lcom/squareup/picasso/ab;-><init>(IIJJJJJJJJIIIJ)V

    return-object v25
.end method
