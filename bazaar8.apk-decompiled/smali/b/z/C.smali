.class public abstract Lb/z/C;
.super Ljava/lang/Object;
.source "SharedSQLiteStatement.java"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Landroidx/room/RoomDatabase;

.field public volatile c:Lb/C/a/f;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lb/z/C;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lb/z/C;->b:Landroidx/room/RoomDatabase;

    return-void
.end method


# virtual methods
.method public a()Lb/C/a/f;
    .locals 3

    .line 5
    invoke-virtual {p0}, Lb/z/C;->b()V

    .line 6
    iget-object v0, p0, Lb/z/C;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lb/z/C;->a(Z)Lb/C/a/f;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Lb/C/a/f;
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lb/z/C;->c:Lb/C/a/f;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/z/C;->c()Lb/C/a/f;

    move-result-object p1

    iput-object p1, p0, Lb/z/C;->c:Lb/C/a/f;

    .line 3
    :cond_0
    iget-object p1, p0, Lb/z/C;->c:Lb/C/a/f;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lb/z/C;->c()Lb/C/a/f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lb/C/a/f;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lb/z/C;->c:Lb/C/a/f;

    if-ne p1, v0, :cond_0

    .line 8
    iget-object p1, p0, Lb/z/C;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/z/C;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->a()V

    return-void
.end method

.method public final c()Lb/C/a/f;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/z/C;->d()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/z/C;->b:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->a(Ljava/lang/String;)Lb/C/a/f;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()Ljava/lang/String;
.end method
