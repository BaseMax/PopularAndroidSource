.class public final Lc/c/a/e/d/n/a/e;
.super Ljava/lang/Object;
.source "PlayedVideoDao_Impl.java"

# interfaces
.implements Lc/c/a/e/d/n/a/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/e/d/n/a/b;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/n/a/b;-><init>(Lc/c/a/e/d/n/a/e;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/n/a/e;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/e/d/n/a/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/n/a/c;-><init>(Lc/c/a/e/d/n/a/e;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/e/d/n/a/e;->c:Lb/z/C;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/d/n/a/e;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public a(Lc/c/a/e/d/n/a/f;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/c/a/e/d/n/a/e;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    throw p1
.end method

.method public getAll()Landroidx/lifecycle/LiveData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lc/c/a/e/d/n/a/f;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * from played_video order by date desc"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lc/c/a/e/d/n/a/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->h()Lb/z/j;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "played_video"

    aput-object v4, v3, v0

    new-instance v4, Lc/c/a/e/d/n/a/d;

    invoke-direct {v4, p0, v1}, Lc/c/a/e/d/n/a/d;-><init>(Lc/c/a/e/d/n/a/e;Lb/z/x;)V

    invoke-virtual {v2, v3, v0, v4}, Lb/z/j;->a([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method
