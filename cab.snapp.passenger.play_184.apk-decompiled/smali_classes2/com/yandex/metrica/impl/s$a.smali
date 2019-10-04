.class public final enum Lcom/yandex/metrica/impl/s$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/s$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/yandex/metrica/impl/s$a;

.field public static final enum B:Lcom/yandex/metrica/impl/s$a;

.field public static final enum C:Lcom/yandex/metrica/impl/s$a;

.field public static final enum D:Lcom/yandex/metrica/impl/s$a;

.field public static final enum E:Lcom/yandex/metrica/impl/s$a;

.field public static final enum F:Lcom/yandex/metrica/impl/s$a;

.field public static final enum G:Lcom/yandex/metrica/impl/s$a;

.field public static final enum H:Lcom/yandex/metrica/impl/s$a;

.field public static final enum I:Lcom/yandex/metrica/impl/s$a;

.field static final J:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/yandex/metrica/impl/s$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic M:[Lcom/yandex/metrica/impl/s$a;

.field public static final enum a:Lcom/yandex/metrica/impl/s$a;

.field public static final enum b:Lcom/yandex/metrica/impl/s$a;

.field public static final enum c:Lcom/yandex/metrica/impl/s$a;

.field public static final enum d:Lcom/yandex/metrica/impl/s$a;

.field public static final enum e:Lcom/yandex/metrica/impl/s$a;

.field public static final enum f:Lcom/yandex/metrica/impl/s$a;

.field public static final enum g:Lcom/yandex/metrica/impl/s$a;

.field public static final enum h:Lcom/yandex/metrica/impl/s$a;

.field public static final enum i:Lcom/yandex/metrica/impl/s$a;

.field public static final enum j:Lcom/yandex/metrica/impl/s$a;

.field public static final enum k:Lcom/yandex/metrica/impl/s$a;

.field public static final enum l:Lcom/yandex/metrica/impl/s$a;

.field public static final enum m:Lcom/yandex/metrica/impl/s$a;

.field public static final enum n:Lcom/yandex/metrica/impl/s$a;

.field public static final enum o:Lcom/yandex/metrica/impl/s$a;

.field public static final enum p:Lcom/yandex/metrica/impl/s$a;

.field public static final enum q:Lcom/yandex/metrica/impl/s$a;

.field public static final enum r:Lcom/yandex/metrica/impl/s$a;

.field public static final enum s:Lcom/yandex/metrica/impl/s$a;

.field public static final enum t:Lcom/yandex/metrica/impl/s$a;

.field public static final enum u:Lcom/yandex/metrica/impl/s$a;

.field public static final enum v:Lcom/yandex/metrica/impl/s$a;

.field public static final enum w:Lcom/yandex/metrica/impl/s$a;

.field public static final enum x:Lcom/yandex/metrica/impl/s$a;

.field public static final enum y:Lcom/yandex/metrica/impl/s$a;

.field public static final enum z:Lcom/yandex/metrica/impl/s$a;


# instance fields
.field private final K:I

.field private final L:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v1, 0x0

    const-string v2, "EVENT_TYPE_UNDEFINED"

    const/4 v3, -0x1

    const-string v4, "Unrecognized action"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v2, 0x1

    const-string v3, "EVENT_TYPE_INIT"

    const-string v4, "First initialization event"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->b:Lcom/yandex/metrica/impl/s$a;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v3, 0x2

    const-string v4, "EVENT_TYPE_REGULAR"

    const-string v5, "Regular event"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v4, 0x3

    const-string v5, "EVENT_TYPE_UPDATE_FOREGROUND_TIME"

    const-string v6, "Update foreground time"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->d:Lcom/yandex/metrica/impl/s$a;

    .line 38
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v5, 0x4

    const/4 v6, 0x5

    const-string v7, "EVENT_TYPE_EXCEPTION_USER"

    const-string v8, "Error from developer"

    invoke-direct {v0, v7, v5, v6, v8}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v7, 0x7

    const-string v8, "EVENT_TYPE_ALIVE"

    const-string v9, "App is still alive"

    invoke-direct {v0, v8, v6, v7, v9}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->f:Lcom/yandex/metrica/impl/s$a;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/4 v8, 0x6

    const/16 v9, 0x8

    const-string v10, "EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS"

    const-string v11, "Update collect apps"

    invoke-direct {v0, v10, v8, v9, v11}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->g:Lcom/yandex/metrica/impl/s$a;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/16 v10, 0x9

    const-string v11, "EVENT_TYPE_SET_USER_INFO"

    const-string v12, "User info"

    invoke-direct {v0, v11, v7, v10, v12}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->h:Lcom/yandex/metrica/impl/s$a;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/16 v11, 0xa

    const-string v12, "EVENT_TYPE_REPORT_USER_INFO"

    const-string v13, "Report user info"

    invoke-direct {v0, v12, v9, v11, v13}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->i:Lcom/yandex/metrica/impl/s$a;

    .line 44
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_SEND_USER_PROFILE"

    const v13, 0xa001

    const-string v14, "Send user profile"

    invoke-direct {v0, v12, v10, v13, v14}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->j:Lcom/yandex/metrica/impl/s$a;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_SET_USER_PROFILE_ID"

    const v13, 0xa002

    const-string v14, "Set user profile ID"

    invoke-direct {v0, v12, v11, v13, v14}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->k:Lcom/yandex/metrica/impl/s$a;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/16 v12, 0xb

    const-string v13, "EVENT_TYPE_SEND_REVENUE_EVENT"

    const v14, 0xa010

    const-string v15, "Send revenue event"

    invoke-direct {v0, v13, v12, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->l:Lcom/yandex/metrica/impl/s$a;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/16 v13, 0xc

    const-string v14, "EVENT_TYPE_PURGE_BUFFER"

    const/16 v15, 0x100

    const-string v12, "Forcible buffer clearing"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->m:Lcom/yandex/metrica/impl/s$a;

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/16 v12, 0xd

    const-string v14, "EVENT_TYPE_NATIVE_CRASH"

    const/16 v15, 0x300

    const-string v13, "Native crash of App"

    invoke-direct {v0, v14, v12, v15, v13}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->n:Lcom/yandex/metrica/impl/s$a;

    .line 50
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const/16 v13, 0xe

    const-string v14, "EVENT_TYPE_STARTUP"

    const/16 v15, 0x600

    const-string v12, "Sending the startup due to lack of data"

    invoke-direct {v0, v14, v13, v15, v12}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->o:Lcom/yandex/metrica/impl/s$a;

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_IDENTITY"

    const/16 v14, 0xf

    const/16 v15, 0x700

    const-string v13, "System identification"

    invoke-direct {v0, v12, v14, v15, v13}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_DIAGNOSTIC"

    const/16 v13, 0x10

    const/16 v14, 0x800

    const-string v15, "Diagnostic event"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->q:Lcom/yandex/metrica/impl/s$a;

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_DIAGNOSTIC_STATBOX"

    const/16 v13, 0x11

    const/16 v14, 0x801

    const-string v15, "Diagnostic statbox event"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->r:Lcom/yandex/metrica/impl/s$a;

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_DIAGNOSTIC_DISABLE_STAT_SENDING"

    const/16 v13, 0x12

    const/16 v14, 0x802

    const-string v15, "Disable stat send"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->s:Lcom/yandex/metrica/impl/s$a;

    .line 55
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_STATBOX"

    const/16 v13, 0x13

    const/16 v14, 0x900

    const-string v15, "Event with statistical data"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->t:Lcom/yandex/metrica/impl/s$a;

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_REFERRER_RECEIVED_FROM_BROADCAST"

    const/16 v13, 0x14

    const/16 v14, 0x1000

    const-string v15, "Referrer received"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->u:Lcom/yandex/metrica/impl/s$a;

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_SEND_REFERRER"

    const/16 v13, 0x15

    const/16 v14, 0x1001

    const-string v15, "Send referrer"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    .line 58
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_REFERRER_OBTAINED_FROM_SERVICES"

    const/16 v13, 0x16

    const/16 v14, 0x1002

    const-string v15, "Referrer obtained"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->w:Lcom/yandex/metrica/impl/s$a;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_APP_ENVIRONMENT_UPDATED"

    const/16 v13, 0x17

    const/16 v14, 0x1500

    const-string v15, "App Environment Updated"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->x:Lcom/yandex/metrica/impl/s$a;

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_APP_ENVIRONMENT_CLEARED"

    const/16 v13, 0x18

    const/16 v14, 0x1600

    const-string v15, "App Environment Cleared"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->y:Lcom/yandex/metrica/impl/s$a;

    .line 61
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_EXCEPTION_UNHANDLED"

    const/16 v13, 0x19

    const/16 v14, 0x1700

    const-string v15, "Crash of App"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->z:Lcom/yandex/metrica/impl/s$a;

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_ACTIVATION"

    const/16 v13, 0x1a

    const/16 v14, 0x1800

    const-string v15, "Activation of metrica"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->A:Lcom/yandex/metrica/impl/s$a;

    .line 63
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_FIRST_ACTIVATION"

    const/16 v13, 0x1b

    const/16 v14, 0x1801

    const-string v15, "First activation of metrica"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->B:Lcom/yandex/metrica/impl/s$a;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_START"

    const/16 v13, 0x1c

    const/16 v14, 0x1900

    const-string v15, "Start of new session"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_CUSTOM_EVENT"

    const/16 v13, 0x1d

    const/16 v14, 0x2000

    const-string v15, "Custom event"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->D:Lcom/yandex/metrica/impl/s$a;

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_APP_OPEN"

    const/16 v13, 0x1e

    const/16 v14, 0x2010

    const-string v15, "App open event"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->E:Lcom/yandex/metrica/impl/s$a;

    .line 67
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_APP_UPDATE"

    const/16 v13, 0x1f

    const/16 v14, 0x2020

    const-string v15, "App update event"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->F:Lcom/yandex/metrica/impl/s$a;

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_PERMISSIONS"

    const/16 v13, 0x20

    const/16 v14, 0x3000

    const-string v15, "Permissions changed event"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->G:Lcom/yandex/metrica/impl/s$a;

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_APP_FEATURES"

    const/16 v13, 0x21

    const/16 v14, 0x3001

    const-string v15, "Features, required by application"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->H:Lcom/yandex/metrica/impl/s$a;

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/s$a;

    const-string v12, "EVENT_TYPE_UPDATE_PRE_ACTIVATION_CONFIG"

    const/16 v13, 0x22

    const/16 v14, 0x4000

    const-string v15, "Update pre-activation config"

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/yandex/metrica/impl/s$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->I:Lcom/yandex/metrica/impl/s$a;

    const/16 v0, 0x23

    new-array v0, v0, [Lcom/yandex/metrica/impl/s$a;

    .line 30
    sget-object v12, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    aput-object v12, v0, v1

    sget-object v12, Lcom/yandex/metrica/impl/s$a;->b:Lcom/yandex/metrica/impl/s$a;

    aput-object v12, v0, v2

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->c:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->d:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v4

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->e:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v5

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->f:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v6

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->g:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v8

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->h:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v7

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->i:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v9

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->j:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v10

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->k:Lcom/yandex/metrica/impl/s$a;

    aput-object v2, v0, v11

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->l:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xb

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->m:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xc

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->n:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xd

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->o:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xe

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->p:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0xf

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->q:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x10

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->r:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x11

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->s:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x12

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->t:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x13

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->u:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x14

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->v:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x15

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->w:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x16

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->x:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x17

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->y:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x18

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->z:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x19

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->A:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->B:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x1b

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->C:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x1c

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->D:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x1d

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->E:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x1e

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->F:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x1f

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->G:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x20

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->H:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x21

    aput-object v2, v0, v3

    sget-object v2, Lcom/yandex/metrica/impl/s$a;->I:Lcom/yandex/metrica/impl/s$a;

    const/16 v3, 0x22

    aput-object v2, v0, v3

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->M:[Lcom/yandex/metrica/impl/s$a;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/s$a;->J:Ljava/util/HashMap;

    .line 78
    invoke-static {}, Lcom/yandex/metrica/impl/s$a;->values()[Lcom/yandex/metrica/impl/s$a;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 79
    sget-object v4, Lcom/yandex/metrica/impl/s$a;->J:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/s$a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lcom/yandex/metrica/impl/s$a;->K:I

    .line 89
    iput-object p4, p0, Lcom/yandex/metrica/impl/s$a;->L:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/impl/s$a;
    .locals 1

    .line 105
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->J:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/s$a;

    if-nez p0, :cond_0

    .line 106
    sget-object p0, Lcom/yandex/metrica/impl/s$a;->a:Lcom/yandex/metrica/impl/s$a;

    :cond_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/s$a;
    .locals 1

    .line 30
    const-class v0, Lcom/yandex/metrica/impl/s$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/s$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/s$a;
    .locals 1

    .line 30
    sget-object v0, Lcom/yandex/metrica/impl/s$a;->M:[Lcom/yandex/metrica/impl/s$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/s$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/s$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/yandex/metrica/impl/s$a;->K:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/yandex/metrica/impl/s$a;->L:Ljava/lang/String;

    return-object v0
.end method
