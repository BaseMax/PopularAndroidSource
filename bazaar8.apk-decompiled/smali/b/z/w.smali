.class public Lb/z/w;
.super Lb/C/a/c$a;
.source "RoomOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/z/w$a;
    }
.end annotation


# instance fields
.field public b:Lb/z/c;

.field public final c:Lb/z/w$a;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/z/c;Lb/z/w$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget v0, p2, Lb/z/w$a;->a:I

    invoke-direct {p0, v0}, Lb/C/a/c$a;-><init>(I)V

    .line 2
    iput-object p1, p0, Lb/z/w;->b:Lb/z/c;

    .line 3
    iput-object p2, p0, Lb/z/w;->c:Lb/z/w$a;

    .line 4
    iput-object p3, p0, Lb/z/w;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lb/z/w;->e:Ljava/lang/String;

    return-void
.end method

.method public static g(Lb/C/a/b;)Z
    .locals 2

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name=\'room_master_table\'"

    .line 1
    invoke-interface {p0, v0}, Lb/C/a/b;->d(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public a(Lb/C/a/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lb/C/a/c$a;->a(Lb/C/a/b;)V

    return-void
.end method

.method public a(Lb/C/a/b;II)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lb/z/w;->b(Lb/C/a/b;II)V

    return-void
.end method

.method public b(Lb/C/a/b;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/w;->b:Lb/z/c;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lb/z/c;->d:Landroidx/room/RoomDatabase$c;

    invoke-virtual {v0, p2, p3}, Landroidx/room/RoomDatabase$c;->a(II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {v1, p1}, Lb/z/w$a;->f(Lb/C/a/b;)V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/z/a/a;

    .line 5
    invoke-virtual {v1, p1}, Lb/z/a/a;->a(Lb/C/a/b;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {v0, p1}, Lb/z/w$a;->g(Lb/C/a/b;)V

    .line 7
    iget-object v0, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {v0, p1}, Lb/z/w$a;->e(Lb/C/a/b;)V

    .line 8
    invoke-virtual {p0, p1}, Lb/z/w;->h(Lb/C/a/b;)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lb/z/w;->b:Lb/z/c;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p2, p3}, Lb/z/c;->a(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object p2, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {p2, p1}, Lb/z/w$a;->b(Lb/C/a/b;)V

    .line 12
    iget-object p2, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {p2, p1}, Lb/z/w$a;->a(Lb/C/a/b;)V

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public c(Lb/C/a/b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lb/z/w;->h(Lb/C/a/b;)V

    .line 2
    iget-object v0, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {v0, p1}, Lb/z/w$a;->a(Lb/C/a/b;)V

    .line 3
    iget-object v0, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {v0, p1}, Lb/z/w$a;->c(Lb/C/a/b;)V

    return-void
.end method

.method public d(Lb/C/a/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lb/C/a/c$a;->d(Lb/C/a/b;)V

    .line 2
    invoke-virtual {p0, p1}, Lb/z/w;->e(Lb/C/a/b;)V

    .line 3
    iget-object v0, p0, Lb/z/w;->c:Lb/z/w$a;

    invoke-virtual {v0, p1}, Lb/z/w$a;->d(Lb/C/a/b;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lb/z/w;->b:Lb/z/c;

    return-void
.end method

.method public final e(Lb/C/a/b;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lb/z/w;->g(Lb/C/a/b;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Lb/C/a/a;

    const-string v2, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-direct {v0, v2}, Lb/C/a/a;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lb/C/a/b;->a(Lb/C/a/e;)Landroid/database/Cursor;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    .line 5
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lb/z/w;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lb/z/w;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public final f(Lb/C/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Lb/C/a/b;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lb/z/w;->f(Lb/C/a/b;)V

    .line 2
    iget-object v0, p0, Lb/z/w;->d:Ljava/lang/String;

    invoke-static {v0}, Lb/z/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method
