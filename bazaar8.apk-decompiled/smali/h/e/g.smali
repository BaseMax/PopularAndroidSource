.class public Lh/e/g;
.super Lh/e/f;
.source "FileTreeWalk.kt"


# direct methods
.method public static final a(Ljava/io/File;)Lh/e/c;
    .locals 1

    const-string v0, "$this$walkBottomUp"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lkotlin/io/FileWalkDirection;->BOTTOM_UP:Lkotlin/io/FileWalkDirection;

    invoke-static {p0, v0}, Lh/e/g;->a(Ljava/io/File;Lkotlin/io/FileWalkDirection;)Lh/e/c;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/io/File;Lkotlin/io/FileWalkDirection;)Lh/e/c;
    .locals 1

    const-string v0, "$this$walk"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lh/e/c;

    invoke-direct {v0, p0, p1}, Lh/e/c;-><init>(Ljava/io/File;Lkotlin/io/FileWalkDirection;)V

    return-object v0
.end method
