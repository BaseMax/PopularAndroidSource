.class public final Lcom/yandex/metrica/impl/ob/fm$ag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ag"
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "session_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "wifi_network_info"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cell_info"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "location_info"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_environment"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "user_info"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "session_type"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "app_environment"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "app_environment_revision"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "truncated"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "connection_type"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "cellular_connection_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "custom_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "wifi_access_point"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "encrypting_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "profile_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "first_occurrence_status"

    aput-object v2, v0, v1

    .line 138
    sput-object v0, Lcom/yandex/metrica/impl/ob/fm$ag;->a:[Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS reports (id INTEGER PRIMARY KEY,name TEXT,value TEXT,number INTEGER,type INTEGER,time INTEGER,session_id TEXT,wifi_network_info TEXT DEFAULT \'\',cell_info TEXT DEFAULT \'\',location_info TEXT DEFAULT \'\',error_environment TEXT,user_info TEXT,session_type INTEGER DEFAULT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/yandex/metrica/impl/ob/en;->a:Lcom/yandex/metrica/impl/ob/en;

    .line 208
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/en;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",app_environment TEXT DEFAULT \'{}\',app_environment_revision INTEGER DEFAULT 0,truncated INTEGER DEFAULT 0,connection_type INTEGER DEFAULT 2,cellular_connection_type TEXT,custom_type INTEGER DEFAULT 0, wifi_access_point TEXT, encrypting_mode INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yandex/metrica/impl/ob/oe;->a:Lcom/yandex/metrica/impl/ob/oe;

    .line 220
    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/oe;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile_id TEXT, first_occurrence_status INTEGER DEFAULT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yandex/metrica/impl/t;->a:Lcom/yandex/metrica/impl/t;

    iget v1, v1, Lcom/yandex/metrica/impl/t;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yandex/metrica/impl/ob/fm$ag;->b:Ljava/lang/String;

    return-void
.end method
