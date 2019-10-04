.class public final Lc/c/a/e/d/m/b/b/j;
.super Ljava/lang/Object;
.source "GetSKUDetailsResponseDto.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/m/b/b/j$a;
    }
.end annotation


# instance fields
.field public final products:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/b/b/j$a;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/b/b/j$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/b/b/j;->products:Ljava/util/List;

    return-object v0
.end method
