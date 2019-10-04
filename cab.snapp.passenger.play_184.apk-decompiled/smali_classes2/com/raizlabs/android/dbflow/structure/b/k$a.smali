.class final Lcom/raizlabs/android/dbflow/structure/b/k$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/structure/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/structure/b/k;

.field private b:Lcom/raizlabs/android/dbflow/structure/b/a;

.field private final c:Lcom/raizlabs/android/dbflow/structure/b/c;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/k;Landroid/content/Context;Ljava/lang/String;ILcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->a:Lcom/raizlabs/android/dbflow/structure/b/k;

    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p2, p3, p1, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 113
    new-instance p1, Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-direct {p1, p5}, Lcom/raizlabs/android/dbflow/structure/b/c;-><init>(Lcom/raizlabs/android/dbflow/config/c;)V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    return-void
.end method


# virtual methods
.method public final backupDB()V
    .locals 0

    return-void
.end method

.method public final closeDB()V
    .locals 0

    return-void
.end method

.method public final getDatabase()Lcom/raizlabs/android/dbflow/structure/b/i;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/raizlabs/android/dbflow/structure/b/k$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/structure/b/a;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->b:Lcom/raizlabs/android/dbflow/structure/b/a;

    return-object v0
.end method

.method public final getDelegate()Lcom/raizlabs/android/dbflow/structure/b/e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final isDatabaseIntegrityOk()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/c;->onCreate(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/c;->onDowngrade(Lcom/raizlabs/android/dbflow/structure/b/i;II)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/c;->onOpen(Lcom/raizlabs/android/dbflow/structure/b/i;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/b/k$a;->c:Lcom/raizlabs/android/dbflow/structure/b/c;

    invoke-static {p1}, Lcom/raizlabs/android/dbflow/structure/b/a;->from(Landroid/database/sqlite/SQLiteDatabase;)Lcom/raizlabs/android/dbflow/structure/b/a;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/raizlabs/android/dbflow/structure/b/c;->onUpgrade(Lcom/raizlabs/android/dbflow/structure/b/i;II)V

    return-void
.end method

.method public final performRestoreFromBackup()V
    .locals 0

    return-void
.end method

.method public final setDatabaseListener(Lcom/raizlabs/android/dbflow/structure/b/f;)V
    .locals 0

    return-void
.end method
