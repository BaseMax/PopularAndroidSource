.class public final Lme/a/a/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/a/a/a/a/a/c;


# instance fields
.field protected final a:Landroid/widget/HorizontalScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lme/a/a/a/a/a/b;->a:Landroid/widget/HorizontalScrollView;

    return-void
.end method


# virtual methods
.method public final getView()Landroid/view/View;
    .locals 1

    .line 29
    iget-object v0, p0, Lme/a/a/a/a/a/b;->a:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method public final isInAbsoluteEnd()Z
    .locals 2

    .line 39
    iget-object v0, p0, Lme/a/a/a/a/a/b;->a:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isInAbsoluteStart()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lme/a/a/a/a/a/b;->a:Landroid/widget/HorizontalScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
