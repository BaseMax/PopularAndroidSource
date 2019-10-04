.class public Lcom/yandex/metrica/impl/ob/ga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/fy;


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fp;


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fp;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/ga;->a:Lcom/yandex/metrica/impl/ob/fp;

    return-void
.end method


# virtual methods
.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ga;->a:Lcom/yandex/metrica/impl/ob/fp;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method
