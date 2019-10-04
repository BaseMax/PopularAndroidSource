.class public final enum Lcom/ebay/common/model/mdns/NotificationPreference$EventType;
.super Ljava/lang/Enum;
.source "NotificationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/mdns/NotificationPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/mdns/NotificationPreference$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ADDPHOTO:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BESTOFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BIDITEM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BIDRCVD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BOACCPTD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BUCKSEXP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum BYRNOSHW:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum CARTONSALE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum CNTROFFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum COACCPTED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum COCMPLT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum CODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum COUPONAVLBL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum DailyDeals:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum DealsFrenzy:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum EBNORDCNCL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum EBNORDPICKED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum INTERNAL_BADGE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ITMOUTSTK:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ITMPAID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ITMPICKUP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ITMSHPD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ITMSOLD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum ITMWON:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum MSGEBAYMSGHDR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum MSGM2MMSGHDR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum OFRDCLNDACPT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum OFREXPIRED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum OFRRETRACTED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum OUTBID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum PAYREM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum PING:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum SHOPCARTITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum SVDSRCH:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum WATCHITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

.field public static final enum WATCHONSALE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;


# instance fields
.field public final defaultValue:Z

.field public final deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

.field public final id:I

.field private final supported:Z

.field public final uiVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 113
    new-instance v6, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v1, "OUTBID"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v6, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OUTBID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 114
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "WATCHITM"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->WATCHITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 115
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "SVDSRCH"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->SVDSRCH:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 116
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "BESTOFR"

    const/4 v10, 0x3

    const/4 v11, 0x3

    const/4 v13, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BESTOFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 117
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "BODECLND"

    const/4 v3, 0x4

    const/4 v4, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 118
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "CNTROFFR"

    const/4 v9, 0x5

    const/4 v10, 0x5

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CNTROFFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 119
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "ITMWON"

    const/4 v3, 0x6

    const/4 v4, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMWON:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 120
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "ITMSOLD"

    const/4 v9, 0x7

    const/4 v10, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMSOLD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 121
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "ITMPAID"

    const/16 v3, 0x8

    const/16 v4, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMPAID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 122
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "ITMSHPD"

    const/16 v9, 0x9

    const/16 v10, 0x9

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMSHPD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 123
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "BIDRCVD"

    const/16 v3, 0xa

    const/16 v4, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDRCVD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 124
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "MSGEBAYMSGHDR"

    const/16 v9, 0xb

    const/16 v10, 0xb

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->MSGEBAYMSGHDR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 125
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "MSGM2MMSGHDR"

    const/16 v3, 0xc

    const/16 v4, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->MSGM2MMSGHDR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 126
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "COCMPLT"

    const/16 v9, 0xd

    const/16 v10, 0xd

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COCMPLT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 127
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "BIDITEM"

    const/16 v3, 0xe

    const/16 v4, 0x11

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDITEM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 128
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v8, "COUPONAVLBL"

    const/16 v9, 0xf

    const/16 v10, 0x12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COUPONAVLBL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 129
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "ADDPHOTO"

    const/16 v3, 0x10

    const/16 v4, 0x13

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ADDPHOTO:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 130
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "BUCKSEXP"

    const/16 v10, 0x11

    const/16 v11, 0x14

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BUCKSEXP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 131
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "SHOPCARTITM"

    const/16 v3, 0x12

    const/16 v4, 0x23

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->SHOPCARTITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 132
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "DailyDeals"

    const/16 v10, 0x13

    const/16 v11, 0x24

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->DailyDeals:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 133
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "DealsFrenzy"

    const/16 v3, 0x14

    const/16 v4, 0x25

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->DealsFrenzy:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 136
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "ITMPICKUP"

    const/16 v10, 0x15

    const/16 v11, 0x15

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMPICKUP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 137
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "ITMOUTSTK"

    const/16 v3, 0x16

    const/16 v4, 0x16

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMOUTSTK:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 138
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "BYRNOSHW"

    const/16 v10, 0x17

    const/16 v11, 0x17

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BYRNOSHW:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 140
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "PAYREM"

    const/16 v3, 0x18

    const/16 v4, 0x18

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->PAYREM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 143
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "EBNORDPICKED"

    const/16 v10, 0x19

    const/16 v11, 0x19

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->EBNORDPICKED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 144
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "EBNORDCNCL"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->EBNORDCNCL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 147
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "PING"

    const/16 v10, 0x1b

    const/16 v11, 0x1b

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->PING:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 150
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "INTERNAL_BADGE"

    sget-object v8, Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;->REAL_TIME:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZLcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->INTERNAL_BADGE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 151
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v10, "BOACCPTD"

    const/16 v11, 0x1d

    const/16 v12, 0x1d

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BOACCPTD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 152
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "COACCPTED"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COACCPTED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 153
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "CODECLND"

    const/16 v10, 0x1f

    const/16 v11, 0x1f

    const/4 v12, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 154
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "OFRDCLNDACPT"

    const/16 v3, 0x20

    const/16 v4, 0x20

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OFRDCLNDACPT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 155
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "OFREXPIRED"

    const/16 v10, 0x21

    const/16 v11, 0x21

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OFREXPIRED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 156
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "OFRRETRACTED"

    const/16 v3, 0x22

    const/16 v4, 0x22

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OFRRETRACTED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 157
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v9, "WATCHONSALE"

    const/16 v10, 0x23

    const/16 v11, 0x26

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->WATCHONSALE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    .line 158
    new-instance v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const-string v2, "CARTONSALE"

    const/16 v3, 0x24

    const/16 v4, 0x27

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZ)V

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CARTONSALE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v0, 0x25

    .line 111
    new-array v0, v0, [Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OUTBID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->WATCHITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->SVDSRCH:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BESTOFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CNTROFFR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMWON:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMSOLD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMPAID:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMSHPD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDRCVD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->MSGEBAYMSGHDR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->MSGM2MMSGHDR:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COCMPLT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BIDITEM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COUPONAVLBL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ADDPHOTO:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BUCKSEXP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->SHOPCARTITM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->DailyDeals:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->DealsFrenzy:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMPICKUP:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->ITMOUTSTK:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BYRNOSHW:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->PAYREM:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->EBNORDPICKED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->EBNORDCNCL:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->PING:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->INTERNAL_BADGE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->BOACCPTD:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->COACCPTED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CODECLND:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OFRDCLNDACPT:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OFREXPIRED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->OFRRETRACTED:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->WATCHONSALE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->CARTONSALE:Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 172
    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZLcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ)V"
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 177
    invoke-direct/range {v0 .. v7}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;-><init>(Ljava/lang/String;IIZZZLcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZLcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZ",
            "Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->id:I

    .line 183
    iput-boolean p4, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->supported:Z

    .line 184
    iput-boolean p5, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->defaultValue:Z

    if-eqz p4, :cond_0

    .line 186
    sget-object p1, Lcom/ebay/common/model/mdns/NotificationPreference;->supportedPushEventNames:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    iput-boolean p6, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->uiVisible:Z

    .line 188
    iput-object p7, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->deliveryPolicyType:Lcom/ebay/common/model/mdns/NotificationPreference$DeliveryPolicyType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/mdns/NotificationPreference$EventType;
    .locals 1

    .line 111
    const-class v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/mdns/NotificationPreference$EventType;
    .locals 1

    .line 111
    sget-object v0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->$VALUES:[Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    invoke-virtual {v0}, [Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/mdns/NotificationPreference$EventType;

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 2

    .line 198
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$MarketingTech$B;->couponNotificationPreferenceAsFlex:Lcom/ebay/nautilus/domain/dcs/DcsDomain$MarketingTech$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->id:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 204
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->supported:Z

    return v0

    .line 207
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->supported:Z

    return v0
.end method

.method public isUiVisible()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/ebay/common/model/mdns/NotificationPreference$EventType;->uiVisible:Z

    return v0
.end method
