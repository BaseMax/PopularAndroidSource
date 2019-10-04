.class public final Lcom/farsitel/bazaar/ui/base/EmptyFragment;
.super Landroidx/fragment/app/Fragment;
.source "EmptyFragment.kt"


# instance fields
.field public Y:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/base/EmptyFragment;->Y:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/base/EmptyFragment;->La()V

    return-void
.end method
