.class public final Lc/e/a/a/b/q$a;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lc/e/a/a/b/q;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lc/e/a/a/b/q;)V
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
    iput-object p1, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 10
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/b/d;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/b/d;-><init>(Lc/e/a/a/b/q$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(IJJ)V
    .locals 9

    .line 5
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    new-instance v8, Lc/e/a/a/b/f;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lc/e/a/a/b/f;-><init>(Lc/e/a/a/b/q$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lc/e/a/a/c/e;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Lc/e/a/a/c/e;->a()V

    .line 8
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/b/e;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/b/e;-><init>(Lc/e/a/a/b/q$a;Lc/e/a/a/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/b/a;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/b/a;-><init>(Lc/e/a/a/b/q$a;Lcom/google/android/exoplayer2/Format;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    new-instance v8, Lc/e/a/a/b/b;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lc/e/a/a/b/b;-><init>(Lc/e/a/a/b/q$a;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic b(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    invoke-interface {v0, p1}, Lc/e/a/a/b/q;->c(I)V

    return-void
.end method

.method public synthetic b(IJJ)V
    .locals 6

    .line 5
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc/e/a/a/b/q;->a(IJJ)V

    return-void
.end method

.method public b(Lc/e/a/a/c/e;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/a/b/q$a;->a:Landroid/os/Handler;

    new-instance v1, Lc/e/a/a/b/c;

    invoke-direct {v1, p0, p1}, Lc/e/a/a/b/c;-><init>(Lc/e/a/a/b/q$a;Lc/e/a/a/c/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/google/android/exoplayer2/Format;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    invoke-interface {v0, p1}, Lc/e/a/a/b/q;->b(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/String;JJ)V
    .locals 6

    .line 3
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lc/e/a/a/b/q;->b(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic c(Lc/e/a/a/c/e;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lc/e/a/a/c/e;->a()V

    .line 2
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    invoke-interface {v0, p1}, Lc/e/a/a/b/q;->a(Lc/e/a/a/c/e;)V

    return-void
.end method

.method public synthetic d(Lc/e/a/a/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/b/q$a;->b:Lc/e/a/a/b/q;

    invoke-interface {v0, p1}, Lc/e/a/a/b/q;->b(Lc/e/a/a/c/e;)V

    return-void
.end method
