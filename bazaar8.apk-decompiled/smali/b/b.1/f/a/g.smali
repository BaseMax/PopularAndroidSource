.class public Lb/b/f/a/g;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lb/b/g/O;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/f/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/f/a/h;


# direct methods
.method public constructor <init>(Lb/b/f/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/f/a/k;Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    .line 3
    iget-object v4, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object v4, v4, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb/b/f/a/h$a;

    iget-object v4, v4, Lb/b/f/a/h$a;->b:Lb/b/f/a/k;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 4
    iget-object v0, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 5
    iget-object v0, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object v0, v0, Lb/b/f/a/h;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lb/b/f/a/h$a;

    .line 6
    :cond_3
    new-instance v0, Lb/b/f/a/f;

    invoke-direct {v0, p0, v1, p2, p1}, Lb/b/f/a/f;-><init>(Lb/b/f/a/g;Lb/b/f/a/h$a;Landroid/view/MenuItem;Lb/b/f/a/k;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    .line 8
    iget-object p2, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object p2, p2, Lb/b/f/a/h;->h:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public b(Lb/b/f/a/k;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lb/b/f/a/g;->a:Lb/b/f/a/h;

    iget-object p2, p2, Lb/b/f/a/h;->h:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
