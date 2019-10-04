.class public final Lcom/raizlabs/android/dbflow/structure/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/i;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method public static from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;
    .locals 1

    .line 15
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a;

    invoke-direct {v0, p0}, Lcom/raizlabs/android/dbflow/structure/b/a;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method


# virtual methods
.method public final beginTransaction()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final compileStatement(Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/g;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v0}, Lcom/raizlabs/android/dbflow/structure/b/b;->from(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/b;

    move-result-object p1

    return-object p1
.end method

.method public final delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public final endTransaction()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final execSQL(Ljava/lang/String;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    return v0
.end method

.method public final insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 2

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    goto :goto_0

    .line 82
    :cond_0
    iget-object p4, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p4, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    return-object p1
.end method

.method public final rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lcom/raizlabs/android/dbflow/structure/b/j;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/j;->from(Landroid/database/Cursor;)Lcom/raizlabs/android/dbflow/structure/b/j;

    move-result-object p1

    return-object p1
.end method

.method public final setTransactionSuccessful()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public final updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)J
    .locals 8

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 69
    iget-object v2, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result p1

    goto :goto_0

    .line 71
    :cond_0
    iget-object p5, p0, Lcom/raizlabs/android/dbflow/structure/b/a;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_0
    int-to-long p1, p1

    return-wide p1
.end method
