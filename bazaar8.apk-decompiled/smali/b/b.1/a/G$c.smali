.class public Lb/b/a/G$c;
.super Lb/b/f/j;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lb/b/a/G;


# direct methods
.method public constructor <init>(Lb/b/a/G;Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/G$c;->b:Lb/b/a/G;

    .line 2
    invoke-direct {p0, p2}, Lb/b/f/j;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lb/b/a/G$c;->b:Lb/b/a/G;

    iget-object v0, v0, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {v0}, Lb/b/g/G;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Lb/b/f/j;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lb/b/f/j;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lb/b/a/G$c;->b:Lb/b/a/G;

    iget-boolean p3, p2, Lb/b/a/G;->b:Z

    if-nez p3, :cond_0

    .line 3
    iget-object p2, p2, Lb/b/a/G;->a:Lb/b/g/G;

    invoke-interface {p2}, Lb/b/g/G;->c()V

    .line 4
    iget-object p2, p0, Lb/b/a/G$c;->b:Lb/b/a/G;

    const/4 p3, 0x1

    iput-boolean p3, p2, Lb/b/a/G;->b:Z

    :cond_0
    return p1
.end method
