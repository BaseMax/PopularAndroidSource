.class public final Lme/a/a/a/a/a/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lme/a/a/a/a/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/a/a/a/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lme/a/a/a/a/a/d;


# direct methods
.method protected constructor <init>(Lme/a/a/a/a/a/d;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lme/a/a/a/a/a/d$c;->a:Lme/a/a/a/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInAbsoluteEnd()Z
    .locals 2

    .line 126
    iget-object v0, p0, Lme/a/a/a/a/a/d$c;->a:Lme/a/a/a/a/a/d;

    iget-object v0, v0, Lme/a/a/a/a/a/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isInAbsoluteStart()Z
    .locals 2

    .line 121
    iget-object v0, p0, Lme/a/a/a/a/a/d$c;->a:Lme/a/a/a/a/a/d;

    iget-object v0, v0, Lme/a/a/a/a/a/d;->a:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
