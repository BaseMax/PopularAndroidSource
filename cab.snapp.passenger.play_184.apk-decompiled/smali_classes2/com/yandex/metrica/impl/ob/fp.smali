.class public Lcom/yandex/metrica/impl/ob/fp;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field protected final a:Lcom/yandex/metrica/impl/ob/fv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fv;)V
    .locals 2

    .line 21
    sget v0, Lcom/yandex/metrica/impl/ob/fm;->b:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 22
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Lcom/yandex/metrica/impl/ob/fv;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Lcom/yandex/metrica/impl/ob/fv;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fv;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Lcom/yandex/metrica/impl/ob/fv;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/ob/fv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fp;->a:Lcom/yandex/metrica/impl/ob/fv;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/fv;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
