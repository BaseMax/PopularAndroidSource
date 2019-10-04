.class public Lb/b/a/K;
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
    iput-object p1, p0, Lb/b/a/K;->a:Lb/b/a/M;

    invoke-direct {p0}, Lb/i/k/K;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lb/b/a/K;->a:Lb/b/a/M;

    const/4 v0, 0x0

    iput-object v0, p1, Lb/b/a/M;->B:Lb/b/f/i;

    .line 2
    iget-object p1, p1, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
