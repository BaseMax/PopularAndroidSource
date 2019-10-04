.class public final Lc/c/a/n/b/b/a;
.super Ljava/lang/Object;
.source "PostAppCommentFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/b/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/b/b/a$a;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/b/b/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/b/b/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/b/b/a;->a:Lc/c/a/n/b/b/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appVersionCode"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarInfo"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    iput p3, p0, Lc/c/a/n/b/b/a;->d:I

    iput-object p4, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/b/b/a;
    .locals 1

    sget-object v0, Lc/c/a/n/b/b/a;->a:Lc/c/a/n/b/b/a$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/b/b/a$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/b/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/b/b/a;->d:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    return-object v0
.end method

.method public final e()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    const-string v2, "appVersionCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lc/c/a/n/b/b/a;->d:I

    const-string v2, "defaultRateBar"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "toolbarInfo"

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v1, :cond_0

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    const-class v1, Ljava/io/Serializable;

    const-class v3, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    iget-object v1, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.io.Serializable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/n/b/b/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/n/b/b/a;

    iget-object v1, p0, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    iget-object v3, p1, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lc/c/a/n/b/b/a;->d:I

    iget v3, p1, Lc/c/a/n/b/b/a;->d:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    iget-object p1, p1, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lc/c/a/n/b/b/a;->d:I

    invoke-static {v2}, La;->a(I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PostAppCommentFragmentArgs(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/b/b/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/b/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRateBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc/c/a/n/b/b/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toolbarInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/b/b/a;->e:Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
