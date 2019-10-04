.class public final Lh/e/c$b;
.super Lh/a/c;
.source "FileTreeWalk.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/e/c$b$a;,
        Lh/e/c$b$c;,
        Lh/e/c$b$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lh/a/c<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lh/e/c$c;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lh/e/c;


# direct methods
.method public constructor <init>(Lh/e/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lh/e/c$b;->d:Lh/e/c;

    invoke-direct {p0}, Lh/a/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    .line 3
    invoke-static {p1}, Lh/e/c;->f(Lh/e/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lh/e/c;->f(Lh/e/c;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh/e/c$b;->a(Ljava/io/File;)Lh/e/c$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lh/e/c;->f(Lh/e/c;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    new-instance v1, Lh/e/c$b$b;

    invoke-static {p1}, Lh/e/c;->f(Lh/e/c;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lh/e/c$b$b;-><init>(Lh/e/c$b;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lh/a/c;->b()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lh/e/c$a;
    .locals 2

    .line 4
    iget-object v0, p0, Lh/e/c$b;->d:Lh/e/c;

    invoke-static {v0}, Lh/e/c;->a(Lh/e/c;)Lkotlin/io/FileWalkDirection;

    move-result-object v0

    sget-object v1, Lh/e/d;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5
    new-instance v0, Lh/e/c$b$a;

    invoke-direct {v0, p0, p1}, Lh/e/c$b$a;-><init>(Lh/e/c$b;Ljava/io/File;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 6
    :cond_1
    new-instance v0, Lh/e/c$b$c;

    invoke-direct {v0, p0, p1}, Lh/e/c$b$c;-><init>(Lh/e/c$b;Ljava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh/e/c$b;->d()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lh/a/c;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lh/a/c;->b()V

    :goto_0
    return-void
.end method

.method public final d()Ljava/io/File;
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh/e/c$c;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lh/e/c$c;->b()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lh/e/c$c;->a()Ljava/io/File;

    move-result-object v0

    invoke-static {v1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iget-object v2, p0, Lh/e/c$b;->d:Lh/e/c;

    invoke-static {v2}, Lh/e/c;->b(Lh/e/c;)I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lh/e/c$b;->c:Ljava/util/ArrayDeque;

    invoke-virtual {p0, v1}, Lh/e/c$b;->a(Ljava/io/File;)Lh/e/c$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
