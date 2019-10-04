.class public Lb/b/a/L;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lb/i/k/L;


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
    iput-object p1, p0, Lb/b/a/L;->a:Lb/b/a/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lb/b/a/L;->a:Lb/b/a/M;

    iget-object p1, p1, Lb/b/a/M;->h:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 2
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
