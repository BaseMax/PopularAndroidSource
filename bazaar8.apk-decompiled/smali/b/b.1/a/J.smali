.class public Lb/b/a/J;
.super Lb/i/k/K;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/b/a/M;


# direct methods
.method public constructor <init>(Lb/b/a/M;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    invoke-direct {p0}, Lb/i/k/K;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    iget-boolean v0, p1, Lb/b/a/M;->w:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lb/b/a/M;->k:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    iget-object p1, p1, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 4
    :cond_0
    iget-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    iget-object p1, p1, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    iget-object p1, p1, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 6
    iget-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/a/M;->B:Lb/b/f/i;

    .line 7
    invoke-virtual {p1}, Lb/b/a/M;->l()V

    .line 8
    iget-object p1, p0, Lb/b/a/J;->a:Lb/b/a/M;

    iget-object p1, p1, Lb/b/a/M;->g:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    .line 9
    invoke-static {p1}, Lb/i/k/z;->G(Landroid/view/View;)V

    :cond_1
    return-void
.end method
