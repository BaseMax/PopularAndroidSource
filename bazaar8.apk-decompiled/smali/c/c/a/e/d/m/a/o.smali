.class public final Lc/c/a/e/d/m/a/o;
.super Ljava/lang/Object;
.source "PurchaseDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/m/a/f;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/C;

.field public final d:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/m/a/g;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/m/a/g;-><init>(Lc/c/a/e/d/m/a/o;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/m/a/o;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/m/a/h;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/m/a/h;-><init>(Lc/c/a/e/d/m/a/o;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/m/a/o;->c:Lb/z/C;

    .line 5
    new-instance v0, Lc/c/a/e/d/m/a/i;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/m/a/i;-><init>(Lc/c/a/e/d/m/a/o;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/m/a/o;->d:Lb/z/C;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/m/a/o;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method

.method public static synthetic b(Lc/c/a/e/d/m/a/o;)Lb/z/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/m/a/o;->b:Lb/z/e;

    return-object p0
.end method

.method public static synthetic c(Lc/c/a/e/d/m/a/o;)Lb/z/C;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/m/a/o;->c:Lb/z/C;

    return-object p0
.end method

.method public static synthetic d(Lc/c/a/e/d/m/a/o;)Lb/z/C;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/m/a/o;->d:Lb/z/C;

    return-object p0
.end method


# virtual methods
.method public a(Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lc/c/a/e/d/m/a/k;

    invoke-direct {v1, p0}, Lc/c/a/e/d/m/a/k;-><init>(Lc/c/a/e/d/m/a/o;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Lb/z/a;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lc/c/a/e/d/m/a/l;

    invoke-direct {v1, p0, p1, p2}, Lc/c/a/e/d/m/a/l;-><init>(Lc/c/a/e/d/m/a/o;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p3}, Lb/z/a;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/a/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "SELECT * FROM payments WHERE userId = ? AND packageName = ? AND productType = ?"

    .line 5
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v1, v2}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v2, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 8
    invoke-virtual {v1, p1}, Lb/z/x;->a(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, p1, p2}, Lb/z/x;->a(ILjava/lang/String;)V

    :goto_1
    if-nez p3, :cond_2

    .line 10
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v1, v0, p3}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 12
    :goto_2
    iget-object p1, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    const/4 p2, 0x0

    new-instance p3, Lc/c/a/e/d/m/a/n;

    invoke-direct {p3, p0, v1}, Lc/c/a/e/d/m/a/n;-><init>(Lc/c/a/e/d/m/a/o;Lb/z/x;)V

    invoke-static {p1, p2, p3, p4}, Lb/z/a;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/a/a;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Lc/c/a/e/d/m/a/j;

    invoke-direct {v1, p0, p1}, Lc/c/a/e/d/m/a/j;-><init>(Lc/c/a/e/d/m/a/o;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Lb/z/a;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/a/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM payments"

    .line 2
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/m/a/o;->a:Landroidx/room/RoomDatabase;

    new-instance v3, Lc/c/a/e/d/m/a/m;

    invoke-direct {v3, p0, v1}, Lc/c/a/e/d/m/a/m;-><init>(Lc/c/a/e/d/m/a/o;Lb/z/x;)V

    invoke-static {v2, v0, v3, p1}, Lb/z/a;->a(Landroidx/room/RoomDatabase;ZLjava/util/concurrent/Callable;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
