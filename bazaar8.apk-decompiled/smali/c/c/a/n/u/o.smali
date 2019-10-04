.class public final Lc/c/a/n/u/o;
.super Ljava/lang/Object;
.source "ReviewsFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/u/o$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/u/o$a;


# instance fields
.field public final b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

.field public final c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

.field public final d:Z

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/u/o$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/u/o$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/u/o;->a:Lc/c/a/n/u/o$a;

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;ZI)V
    .locals 1

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarInfo"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/o;->b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    iput-object p2, p0, Lc/c/a/n/u/o;->c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    iput-boolean p3, p0, Lc/c/a/n/u/o;->d:Z

    iput p4, p0, Lc/c/a/n/u/o;->e:I

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/u/o;
    .locals 1

    sget-object v0, Lc/c/a/n/u/o;->a:Lc/c/a/n/u/o$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/u/o$a;->a(Landroid/os/Bundle;)Lc/c/a/n/u/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/c/a/n/u/o;->d:Z

    return v0
.end method

.method public final b()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/o;->b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    return-object v0
.end method

.method public final c()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/o;->c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/n/u/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/n/u/o;

    iget-object v1, p0, Lc/c/a/n/u/o;->b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    iget-object v3, p1, Lc/c/a/n/u/o;->b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/n/u/o;->c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    iget-object v3, p1, Lc/c/a/n/u/o;->c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lc/c/a/n/u/o;->d:Z

    iget-boolean v3, p1, Lc/c/a/n/u/o;->d:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget v1, p0, Lc/c/a/n/u/o;->e:I

    iget p1, p1, Lc/c/a/n/u/o;->e:I

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

    iget-object v0, p0, Lc/c/a/n/u/o;->b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/u/o;->c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lc/c/a/n/u/o;->d:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lc/c/a/n/u/o;->e:I

    invoke-static {v1}, La;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReviewsFragmentArgs(reviewItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/u/o;->b:Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", toolbarInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/u/o;->c:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", canPostComment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lc/c/a/n/u/o;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", myRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/u/o;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
