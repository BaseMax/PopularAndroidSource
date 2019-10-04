.class final Lcom/yandex/metrica/impl/ob/fm$m;
.super Lcom/yandex/metrica/impl/ob/fm$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 959
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fm$q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 959
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fm$m;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/a/b;
        }
    .end annotation

    const-string v0, "CREATE TABLE IF NOT EXISTS permissions (name TEXT PRIMARY KEY,granted INTEGER)"

    .line 962
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
