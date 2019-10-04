.class public final Lc/c/a/e/d/m/b/b/j$a;
.super Ljava/lang/Object;
.source "GetSKUDetailsResponseDto.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/d/m/b/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final description:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "description"
    .end annotation
.end field

.field public final price:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final productId:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "productId"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    invoke-virtual {v0}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc/e/d/j;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GSON().toJson(this)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
