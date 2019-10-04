.class final Lorg/eclipse/paho/android/service/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/paho/android/service/b;->getAllArrivedMessages(Ljava/lang/String;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/eclipse/paho/android/service/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/eclipse/paho/android/service/b;

.field private c:Landroid/database/Cursor;

.field private d:Z

.field private final e:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/android/service/b;Ljava/lang/String;)V
    .locals 8

    .line 290
    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    iput-object p2, p0, Lorg/eclipse/paho/android/service/b$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 293
    iget-object p2, p0, Lorg/eclipse/paho/android/service/b$1;->a:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->e:[Ljava/lang/String;

    .line 299
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    .line 1033
    iget-object p2, p1, Lorg/eclipse/paho/android/service/b;->b:Lorg/eclipse/paho/android/service/b$b;

    .line 299
    invoke-virtual {p2}, Lorg/eclipse/paho/android/service/b$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 2033
    iput-object p2, p1, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 302
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->a:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 303
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    .line 3033
    iget-object v0, p1, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "MqttArrivedMessageTable"

    const-string v7, "mtimestamp ASC"

    .line 303
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    goto :goto_0

    .line 311
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    .line 4033
    iget-object v0, p1, Lorg/eclipse/paho/android/service/b;->a:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    .line 311
    iget-object v4, p0, Lorg/eclipse/paho/android/service/b$1;->e:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "MqttArrivedMessageTable"

    const-string v3, "clientHandle=?"

    const-string v7, "mtimestamp ASC"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    .line 319
    :goto_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    return-void
.end method


# virtual methods
.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    if-nez v0, :cond_0

    .line 325
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 327
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/b$1;->next()Lorg/eclipse/paho/android/service/c$a;

    move-result-object v0

    return-object v0
.end method

.method public final next()Lorg/eclipse/paho/android/service/c$a;
    .locals 8

    .line 332
    iget-object v0, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v1, "messageId"

    .line 333
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 332
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v2, "clientHandle"

    .line 335
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 334
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 336
    iget-object v1, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v2, "destinationName"

    .line 337
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 336
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v3, "payload"

    .line 339
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 338
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 340
    iget-object v3, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v4, "qos"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 341
    iget-object v4, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v5, "retained"

    .line 342
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 341
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 343
    iget-object v5, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    const-string v6, "duplicate"

    .line 344
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 343
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 347
    new-instance v6, Lorg/eclipse/paho/android/service/b$c;

    iget-object v7, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    invoke-direct {v6, v7, v2}, Lorg/eclipse/paho/android/service/b$c;-><init>(Lorg/eclipse/paho/android/service/b;[B)V

    .line 348
    invoke-virtual {v6, v3}, Lorg/eclipse/paho/android/service/b$c;->setQos(I)V

    .line 349
    invoke-virtual {v6, v4}, Lorg/eclipse/paho/android/service/b$c;->setRetained(Z)V

    .line 350
    invoke-virtual {v6, v5}, Lorg/eclipse/paho/android/service/b$c;->setDuplicate(Z)V

    .line 353
    iget-object v2, p0, Lorg/eclipse/paho/android/service/b$1;->c:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/paho/android/service/b$1;->d:Z

    .line 354
    new-instance v2, Lorg/eclipse/paho/android/service/b$a;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/b$1;->b:Lorg/eclipse/paho/android/service/b;

    invoke-direct {v2, v3, v0, v1, v6}, Lorg/eclipse/paho/android/service/b$a;-><init>(Lorg/eclipse/paho/android/service/b;Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/a/a/q;)V

    return-object v2
.end method

.method public final remove()V
    .locals 1

    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
