.class public final Lb/H/a/c/d;
.super Ljava/lang/Object;
.source "DependencyDao_Impl.java"

# interfaces
.implements Lb/H/a/c/b;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lb/H/a/c/c;

    invoke-direct {v0, p0, p1}, Lb/H/a/c/c;-><init>(Lb/H/a/c/d;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lb/H/a/c/d;->b:Lb/z/e;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT work_spec_id FROM dependency WHERE prerequisite_id=?"

    .line 5
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 9
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 11
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 15
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 16
    invoke-virtual {v1}, Lb/z/x;->c()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public a(Lb/H/a/c/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lb/H/a/c/d;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object p1, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    throw p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 7
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-virtual {v1}, Lb/z/x;->c()V

    return v3

    :catchall_0
    move-exception v0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v1}, Lb/z/x;->c()V

    throw v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v1, v0}, Lb/z/x;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1, v0, p1}, Lb/z/x;->a(ILjava/lang/String;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lb/H/a/c/d;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    .line 7
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 8
    invoke-virtual {v1}, Lb/z/x;->c()V

    return v3

    :catchall_0
    move-exception v0

    .line 9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v1}, Lb/z/x;->c()V

    throw v0
.end method
