.class public final Lc/e/a/a/p/s$a;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/p/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lc/e/a/a/p/s;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lc/e/a/a/p/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-static {p1}, Lc/e/a/a/o/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    return-void
.end method


# virtual methods
.method public synthetic a(IIIF)V
    .locals 1

    .line 7
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/e/a/a/p/s;->a(IIIF)V

    return-void
.end method

.method public a(IJ)V
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/p/g;

    invoke-direct {v1, p0, p1, p2, p3}, Lc/e/a/a/p/g;-><init>(Lc/e/a/a/p/s$a;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic a(Landroid/view/Surface;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    invoke-interface {v0, p1}, Lc/e/a/a/p/s;->a(Landroid/view/Surface;)V

    return-void
.end method

.method public a(Lc/e/a/a/c/e;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Lc/e/a/a/c/e;->a()V

    .line 10
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/p/f;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/p/f;-><init>(Lc/e/a/a/p/s$a;Lc/e/a/a/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/p/a;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/p/a;-><init>(Lc/e/a/a/p/s$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v8, Lc/e/a/a/p/d;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lc/e/a/a/p/d;-><init>(Lc/e/a/a/p/s$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(IIIF)V
    .locals 8

    .line 6
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v7, Lc/e/a/a/p/c;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lc/e/a/a/p/c;-><init>(Lc/e/a/a/p/s$a;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic b(IJ)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    invoke-interface {v0, p1, p2, p3}, Lc/e/a/a/p/s;->a(IJ)V

    return-void
.end method

.method public b(Landroid/view/Surface;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/p/b;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/p/b;-><init>(Lc/e/a/a/p/s$a;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public b(Lc/e/a/a/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/p/s$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/p/e;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/p/e;-><init>(Lc/e/a/a/p/s$a;Lc/e/a/a/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    invoke-interface {v0, p1}, Lc/e/a/a/p/s;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;JJ)V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc/e/a/a/p/s;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic c(Lc/e/a/a/c/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc/e/a/a/c/e;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    invoke-interface {v0, p1}, Lc/e/a/a/p/s;->d(Lc/e/a/a/c/e;)V

    return-void
.end method

.method public synthetic d(Lc/e/a/a/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/p/s$a;->b:Lc/e/a/a/p/s;

    invoke-interface {v0, p1}, Lc/e/a/a/p/s;->c(Lc/e/a/a/c/e;)V

    return-void
.end method
