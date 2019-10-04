.class public final Lc/c/a/n/b/t$a;
.super Ljava/lang/Object;
.source "AppDetailFragmentDirections.kt"

# interfaces
.implements Lb/w/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

.field public final b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;ZI)V
    .locals 1

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarInfo"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    iput-object p2, p0, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    iput-boolean p3, p0, Lc/c/a/n/b/t$a;->c:Z

    iput p4, p0, Lc/c/a/n/b/t$a;->d:I

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "null cannot be cast to non-null type java.io.Serializable"

    const-string v3, "null cannot be cast to non-null type android.os.Parcelable"

    const-string v4, " must implement Parcelable or Serializable or must be an Enum."

    const-string v5, "reviewItem"

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    const-class v1, Ljava/io/Serializable;

    const-class v6, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5
    iget-object v1, p0, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz v1, :cond_6

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 6
    :goto_0
    const-class v1, Landroid/os/Parcelable;

    const-class v5, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v5, "toolbarInfo"

    if-eqz v1, :cond_3

    .line 7
    iget-object v1, p0, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v1, :cond_2

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    const-class v1, Ljava/io/Serializable;

    const-class v3, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    iget-object v1, p0, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10
    :goto_1
    iget-boolean v1, p0, Lc/c/a/n/b/t$a;->c:Z

    const-string v2, "canPostComment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 11
    iget v1, p0, Lc/c/a/n/b/t$a;->d:I

    const-string v2, "myRate"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0a002a

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/n/b/t$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/n/b/t$a;

    iget-object v1, p0, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    iget-object v3, p1, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    iget-object v3, p1, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/a/n/b/t$a;->c:Z

    iget-boolean v3, p1, Lc/c/a/n/b/t$a;->c:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lc/c/a/n/b/t$a;->d:I

    iget p1, p1, Lc/c/a/n/b/t$a;->d:I

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lc/c/a/n/b/t$a;->c:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/n/b/t$a;->d:I

    invoke-static {v1}, La;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionAppDetailToAllReviews(reviewItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/b/t$a;->a:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toolbarInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/b/t$a;->b:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canPostComment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/n/b/t$a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", myRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/b/t$a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
