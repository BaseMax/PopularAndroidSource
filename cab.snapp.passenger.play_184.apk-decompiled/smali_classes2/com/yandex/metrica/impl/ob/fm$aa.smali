.class Lcom/yandex/metrica/impl/ob/fm$aa;
.super Lcom/yandex/metrica/impl/ob/fm$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "aa"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1103
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fm$q;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 1103
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fm$aa;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Lorg/a/b;
        }
    .end annotation

    .line 1107
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "reports"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "encrypting_mode"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    sget-object v7, Lcom/yandex/metrica/impl/ob/oe;->a:Lcom/yandex/metrica/impl/ob/oe;

    .line 1109
    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/oe;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v2, v8

    const-string v7, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT %d"

    .line 1107
    invoke-static {v0, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1113
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    aput-object v5, v2, v6

    sget-object v3, Lcom/yandex/metrica/impl/ob/oe;->b:Lcom/yandex/metrica/impl/ob/oe;

    .line 1116
    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/oe;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "type"

    aput-object v3, v2, v1

    sget-object v1, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    .line 1118
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const-string v1, "UPDATE %s SET %s = %d where %s=%d"

    .line 1113
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE reports ADD COLUMN profile_id TEXT "

    .line 1122
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
