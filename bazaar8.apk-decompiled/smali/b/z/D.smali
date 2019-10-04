.class public final Lb/z/D;
.super Ljava/lang/Object;
.source "RoomDatabase.kt"

# interfaces
.implements Lh/c/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/z/D$a;
    }
.end annotation


# static fields
.field public static final a:Lb/z/D$a;


# instance fields
.field public final b:Lh/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lb/z/D$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/z/D$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lb/z/D;->a:Lb/z/D$a;

    return-void
.end method


# virtual methods
.method public final a()Lh/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/D;->b:Lh/c/c;

    return-object v0
.end method

.method public fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/e$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lh/c/e$b$a;->a(Lh/c/e$b;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lh/c/e$c;)Lh/c/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh/c/e$b;",
            ">(",
            "Lh/c/e$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e$c;)Lh/c/e$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lh/c/e$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/e$c<",
            "Lb/z/D;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lb/z/D;->a:Lb/z/D$a;

    return-object v0
.end method

.method public minusKey(Lh/c/e$c;)Lh/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e$c<",
            "*>;)",
            "Lh/c/e;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/e$b$a;->b(Lh/c/e$b;Lh/c/e$c;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lh/c/e;)Lh/c/e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method
