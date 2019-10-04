.class public Lcom/yandex/metrica/impl/ob/fr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/fr$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Lcom/yandex/metrica/impl/ob/fr$a;

.field private volatile e:Z

.field private final f:Lcom/yandex/metrica/impl/ob/fy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/yandex/metrica/impl/ob/fr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/impl/ob/fp;Ljava/lang/String;)V
    .locals 1

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/ob/ga;

    invoke-direct {v0, p1}, Lcom/yandex/metrica/impl/ob/ga;-><init>(Lcom/yandex/metrica/impl/ob/fp;)V

    invoke-direct {p0, p2, v0}, Lcom/yandex/metrica/impl/ob/fr;-><init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fy;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/yandex/metrica/impl/ob/fy;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->b:Ljava/util/Map;

    .line 55
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    .line 56
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->c:Ljava/lang/String;

    .line 58
    new-instance p1, Lcom/yandex/metrica/impl/ob/fr$a;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ni;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "YMM-DW-%s"

    .line 58
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/yandex/metrica/impl/ob/fr$a;-><init>(Lcom/yandex/metrica/impl/ob/fr;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    .line 60
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/fr$a;->start()V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fr;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fr;Ljava/util/Map;)V
    .locals 8

    .line 1157
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 1159
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    .line 1160
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1161
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1162
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1163
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1164
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v5, "key"

    .line 1166
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    const-string v5, "value"

    if-ne v2, p0, :cond_0

    .line 1168
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 1169
    :cond_0
    instance-of v6, v2, Ljava/lang/String;

    const-string v7, "type"

    if-eqz v6, :cond_1

    .line 1170
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1171
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1172
    :cond_1
    instance-of v6, v2, Ljava/lang/Long;

    if-eqz v6, :cond_2

    .line 1173
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x3

    .line 1174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1175
    :cond_2
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    .line 1176
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v2, 0x2

    .line 1177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1178
    :cond_3
    instance-of v6, v2, Ljava/lang/Boolean;

    if-eqz v6, :cond_4

    .line 1179
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1181
    :cond_4
    instance-of v6, v2, Ljava/lang/Float;

    if-eqz v6, :cond_5

    .line 1182
    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const/4 v2, 0x5

    .line 1183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_5
    if-nez v2, :cond_6

    .line 1187
    :goto_1
    aput-object v3, v0, v1

    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 1185
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 1189
    :cond_7
    invoke-direct {p0, v0}, Lcom/yandex/metrica/impl/ob/fr;->a([Landroid/content/ContentValues;)V

    return-void
.end method

.method private a([Landroid/content/ContentValues;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {v1}, Lcom/yandex/metrica/impl/ob/fy;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 201
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p1, v4

    const-string v6, "value"

    .line 202
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "key"

    .line 203
    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 204
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fr;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key = ?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v3

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fr;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v1, v6, v0, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {p1, v1}, Lcom/yandex/metrica/impl/ob/fy;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v1, v0

    .line 215
    :goto_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {v0, v1}, Lcom/yandex/metrica/impl/ob/fy;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 217
    throw p1

    .line 215
    :catch_1
    :goto_3
    invoke-static {v0}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 216
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {p1, v0}, Lcom/yandex/metrica/impl/ob/fy;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic a(Lcom/yandex/metrica/impl/ob/fr;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/fr;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/yandex/metrica/impl/ob/fr;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v0, "type"

    const-string v2, "value"

    const-string v3, "key"

    .line 1103
    :try_start_0
    iget-object v5, v1, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {v5}, Lcom/yandex/metrica/impl/ob/fy;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1104
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/yandex/metrica/impl/ob/fr;->a()Ljava/lang/String;

    move-result-object v7

    const/4 v14, 0x3

    new-array v8, v14, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v8, v6

    const/4 v15, 0x1

    aput-object v2, v8, v15

    const/4 v13, 0x2

    aput-object v0, v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    move-object v6, v5

    const/4 v4, 0x2

    move-object/from16 v13, v16

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1108
    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1109
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1110
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1111
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1112
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eq v9, v15, :cond_5

    if-eq v9, v4, :cond_4

    if-eq v9, v14, :cond_3

    const/4 v10, 0x4

    if-eq v9, v10, :cond_7

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1130
    :cond_2
    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/nj;->b(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    goto :goto_1

    .line 1124
    :cond_3
    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/nj;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1

    .line 1121
    :cond_4
    invoke-static {v8}, Lcom/yandex/metrica/impl/ob/nj;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1

    :cond_5
    const-string v9, "true"

    .line 1116
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_6
    const-string v9, "false"

    .line 1118
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_7
    :goto_1
    if-eqz v8, :cond_0

    .line 1134
    iget-object v9, v1, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1141
    :cond_8
    invoke-static {v6}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 1142
    :goto_2
    iget-object v0, v1, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {v0, v5}, Lcom/yandex/metrica/impl/ob/fy;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-object/from16 v17, v6

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x0

    .line 1141
    :goto_4
    invoke-static {v6}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 1142
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/fr;->f:Lcom/yandex/metrica/impl/ob/fy;

    invoke-interface {v1, v5}, Lcom/yandex/metrica/impl/ob/fy;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1143
    throw v0

    :catch_1
    const/4 v5, 0x0

    :catch_2
    const/16 v17, 0x0

    .line 1141
    :goto_5
    invoke-static/range {v17 .. v17}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    monitor-enter v0

    .line 333
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fr;->c()V

    .line 334
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 335
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic c(Lcom/yandex/metrica/impl/ob/fr;)Ljava/util/Map;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/yandex/metrica/impl/ob/fr;->b:Ljava/util/Map;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 339
    iget-boolean v0, p0, Lcom/yandex/metrica/impl/ob/fr;->e:Z

    if-nez v0, :cond_0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 1

    .line 232
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fr;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 233
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 234
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 243
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fr;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 244
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 245
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/fr;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    monitor-enter v0

    .line 277
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fr;->c()V

    .line 278
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 280
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    monitor-enter v1

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 283
    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 279
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method a()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 221
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fr;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 222
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    return-object p2
.end method

.method a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    monitor-enter v0

    .line 322
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fr;->c()V

    .line 323
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 325
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    monitor-enter v1

    .line 326
    :try_start_1
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 328
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 324
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .line 254
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/fr;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 255
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public declared-synchronized b(Ljava/lang/String;I)Lcom/yandex/metrica/impl/ob/fr;
    .locals 0

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;J)Lcom/yandex/metrica/impl/ob/fr;
    .locals 0

    .line 293
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/fr;
    .locals 0

    monitor-enter p0

    .line 288
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/String;Z)Lcom/yandex/metrica/impl/ob/fr;
    .locals 0

    .line 303
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fr;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->d:Lcom/yandex/metrica/impl/ob/fr$a;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    monitor-enter v0

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fr;->c()V

    .line 315
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fr;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
