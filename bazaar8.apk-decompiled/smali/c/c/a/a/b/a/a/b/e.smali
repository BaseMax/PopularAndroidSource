.class public final Lc/c/a/a/b/a/a/b/e;
.super Ljava/lang/Object;
.source "ActionLogDao_Impl.java"

# interfaces
.implements Lc/c/a/a/b/a/a/b/a;


# instance fields
.field public final a:Landroidx/room/RoomDatabase;

.field public final b:Lb/z/e;

.field public final c:Lb/z/d;

.field public final d:Lb/z/C;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    .line 3
    new-instance v0, Lc/c/a/a/b/a/a/b/b;

    invoke-direct {v0, p0, p1}, Lc/c/a/a/b/a/a/b/b;-><init>(Lc/c/a/a/b/a/a/b/e;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/a/b/a/a/b/e;->b:Lb/z/e;

    .line 4
    new-instance v0, Lc/c/a/a/b/a/a/b/c;

    invoke-direct {v0, p0, p1}, Lc/c/a/a/b/a/a/b/c;-><init>(Lc/c/a/a/b/a/a/b/e;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/a/b/a/a/b/e;->c:Lb/z/d;

    .line 5
    new-instance v0, Lc/c/a/a/b/a/a/b/d;

    invoke-direct {v0, p0, p1}, Lc/c/a/a/b/a/a/b/d;-><init>(Lc/c/a/a/b/a/a/b/e;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lc/c/a/a/b/a/a/b/e;->d:Lb/z/C;

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/a/b/a/a/b/i;
    .locals 12

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM actionLog ORDER BY `when` ASC LIMIT 1"

    .line 7
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-static {v2, v1, v0}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v2, "id"

    .line 10
    invoke-static {v0, v2}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "when"

    .line 11
    invoke-static {v0, v3}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "json"

    .line 12
    invoke-static {v0, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 13
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 14
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 15
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 16
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 17
    new-instance v2, Lc/c/a/a/b/a/a/b/i;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lc/c/a/a/b/a/a/b/i;-><init>(JJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v2

    :catchall_0
    move-exception v2

    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v1}, Lb/z/x;->c()V

    .line 22
    throw v2
.end method

.method public a(Lc/c/a/a/b/a/a/b/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->b:Lb/z/e;

    invoke-virtual {v0, p1}, Lb/z/e;->a(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method

.method public b()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/a/a/b/a/a/b/i;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM actionLog ORDER BY `when` DESC"

    .line 7
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    .line 9
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-static {v2, v1, v0}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v2, "id"

    .line 10
    invoke-static {v0, v2}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "when"

    .line 11
    invoke-static {v0, v3}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "json"

    .line 12
    invoke-static {v0, v4}, Lb/z/b/a;->a(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 15
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 16
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 17
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 18
    new-instance v6, Lc/c/a/a/b/a/a/b/i;

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lc/c/a/a/b/a/a/b/i;-><init>(JJLjava/lang/String;)V

    .line 19
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v1}, Lb/z/x;->c()V

    return-object v5

    :catchall_0
    move-exception v2

    .line 22
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v1}, Lb/z/x;->c()V

    .line 24
    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public b(Lc/c/a/a/b/a/a/b/i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->c()V

    .line 3
    :try_start_0
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->c:Lb/z/d;

    invoke-virtual {v0, p1}, Lb/z/d;->a(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->e()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->e()V

    .line 6
    throw p1
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->b()V

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/e;->d:Lb/z/C;

    invoke-virtual {v0}, Lb/z/C;->a()Lb/C/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Lb/C/a/f;->l()I

    .line 5
    iget-object v1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->e()V

    .line 7
    iget-object v1, p0, Lc/c/a/a/b/a/a/b/e;->d:Lb/z/C;

    invoke-virtual {v1, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->e()V

    .line 9
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->d:Lb/z/C;

    invoke-virtual {v2, v0}, Lb/z/C;->a(Lb/C/a/f;)V

    .line 10
    throw v1
.end method

.method public d()I
    .locals 4

    const/4 v0, 0x0

    const-string v1, "SELECT COUNT(*) FROM actionLog"

    .line 1
    invoke-static {v1, v0}, Lb/z/x;->a(Ljava/lang/String;I)Lb/z/x;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->b()V

    .line 3
    iget-object v2, p0, Lc/c/a/a/b/a/a/b/e;->a:Landroidx/room/RoomDatabase;

    invoke-static {v2, v1, v0}, Lb/z/b/b;->a(Landroidx/room/RoomDatabase;Lb/C/a/e;Z)Landroid/database/Cursor;

    move-result-object v2

    .line 4
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 7
    invoke-virtual {v1}, Lb/z/x;->c()V

    return v0

    :catchall_0
    move-exception v0

    .line 8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 9
    invoke-virtual {v1}, Lb/z/x;->c()V

    .line 10
    throw v0
.end method
