.class public final Lb/b/a/G$a;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Lb/b/f/a/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lb/b/a/G;


# direct methods
.method public constructor <init>(Lb/b/a/G;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/G$a;->b:Lb/b/a/G;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/b/f/a/k;Z)V
    .locals 1

    .line 3
    iget-boolean p2, p0, Lb/b/a/G$a;->a:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lb/b/a/G$a;->a:Z

    .line 5
    iget-object p2, p0, Lb/b/a/G$a;->b:Lb/b/a/G;

    iget-object p2, p2, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {p2}, Lb/b/g/G;->h()V

    .line 6
    iget-object p2, p0, Lb/b/a/G$a;->b:Lb/b/a/G;

    iget-object p2, p2, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1

    const/16 v0, 0x6c

    .line 7
    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lb/b/a/G$a;->a:Z

    return-void
.end method

.method public a(Lb/b/f/a/k;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb/b/a/G$a;->b:Lb/b/a/G;

    iget-object v0, v0, Lb/b/a/G;->c:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    const/16 v1, 0x6c

    .line 2
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
