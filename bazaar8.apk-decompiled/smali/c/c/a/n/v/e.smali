.class public final Lc/c/a/n/v/e;
.super Ljava/lang/Object;
.source "ScreenshotFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/v/e$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/v/e$a;


# instance fields
.field public final b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/v/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/v/e$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/v/e;->a:Lc/c/a/n/v/e$a;

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/v/e;
    .locals 1

    sget-object v0, Lc/c/a/n/v/e;->a:Lc/c/a/n/v/e$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/v/e$a;->a(Landroid/os/Bundle;)Lc/c/a/n/v/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    return-object v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "data"

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    const-class v1, Ljava/io/Serializable;

    const-class v3, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object v1, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    if-eqz v1, :cond_2

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.io.Serializable"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

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
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/n/v/e;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/n/v/e;

    iget-object v0, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    iget-object p1, p1, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScreenshotFragmentArgs(data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/v/e;->b:Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
