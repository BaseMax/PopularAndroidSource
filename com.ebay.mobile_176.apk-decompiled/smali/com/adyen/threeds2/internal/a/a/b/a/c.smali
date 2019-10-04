.class public final enum Lcom/adyen/threeds2/internal/a/a/b/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/adyen/threeds2/internal/a/a/b/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum ACCESS_DENIED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum DATA_DECRYPTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum DUPLICATE_DATA_ELEMENT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum ISO_CODE_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum MESSAGE_EXTENSION_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum MESSAGE_VERSION_NOT_SUPPORTED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum SYSTEM_CONNECTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum TRANSACTION_ID_NOT_RECOGNIZED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum TRANSACTION_TIMED_OUT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

.field public static final enum TRANSIENT_SYSTEM_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;


# instance fields
.field private final mErrorCode:Ljava/lang/String;

.field private final mErrorComponent:Ljava/lang/String;

.field private final mErrorDescription:Ljava/lang/String;

.field private final mErrorMessageType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 41
    new-instance v7, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v0, 0xb2

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0xb3

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0xb4

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0xb5

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v0, 0xb6

    invoke-static {v0}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 42
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xb7

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xb8

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0xb9

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0xba

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0xbb

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x1

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_VERSION_NOT_SUPPORTED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 43
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xbc

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xbd

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xbe

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xbf

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xc0

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 44
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xc1

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xc2

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0xc3

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0xc4

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0xc5

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x3

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_EXTENSION_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 45
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xc6

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xc7

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xc8

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xc9

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xca

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 46
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xcb

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xcc

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0xcd

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0xce

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0xcf

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DUPLICATE_DATA_ELEMENT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 47
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xd0

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xd1

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xd2

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xd3

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xd4

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_ID_NOT_RECOGNIZED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 48
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xd5

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xd6

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0xd7

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0xd8

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0xd9

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v14

    const/4 v10, 0x7

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_DECRYPTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 49
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xda

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xdb

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xdc

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xdd

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xde

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x8

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->ACCESS_DENIED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 50
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xdf

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xe0

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0xe1

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0xe2

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0xe3

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v14

    const/16 v10, 0x9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->ISO_CODE_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 51
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xe4

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xe5

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xe6

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xe7

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xe8

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xa

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_TIMED_OUT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 52
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xe9

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v9

    const/16 v1, 0xea

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    const/16 v1, 0xeb

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v12

    const/16 v1, 0xec

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0xed

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v14

    const/16 v10, 0xb

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSIENT_SYSTEM_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    .line 53
    new-instance v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v1, 0xee

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v1, 0xef

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xf0

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xf1

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0xf2

    invoke-static {v1}, La/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xc

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/adyen/threeds2/internal/a/a/b/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->SYSTEM_CONNECTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v0, 0xd

    .line 39
    new-array v0, v0, [Lcom/adyen/threeds2/internal/a/a/b/a/c;

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_RECEIVED_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_VERSION_NOT_SUPPORTED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->MESSAGE_EXTENSION_MISSING:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_ELEMENT_INVALID_FORMAT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DUPLICATE_DATA_ELEMENT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_ID_NOT_RECOGNIZED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->DATA_DECRYPTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->ACCESS_DENIED:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->ISO_CODE_INVALID:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSACTION_TIMED_OUT:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->TRANSIENT_SYSTEM_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/adyen/threeds2/internal/a/a/b/a/c;->SYSTEM_CONNECTION_FAILURE:Lcom/adyen/threeds2/internal/a/a/b/a/c;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p3, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorCode:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorComponent:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorDescription:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorMessageType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/a/c;
    .locals 1

    .line 39
    const-class v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;

    return-object p0
.end method

.method public static values()[Lcom/adyen/threeds2/internal/a/a/b/a/c;
    .locals 1

    .line 39
    sget-object v0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->$VALUES:[Lcom/adyen/threeds2/internal/a/a/b/a/c;

    invoke-virtual {v0}, [Lcom/adyen/threeds2/internal/a/a/b/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adyen/threeds2/internal/a/a/b/a/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/adyen/threeds2/ProtocolErrorEvent;
    .locals 4

    .line 106
    new-instance v0, Lcom/adyen/threeds2/internal/f/c;

    new-instance v1, Lcom/adyen/threeds2/internal/f/b;

    iget-object v2, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorDescription:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v3, p2}, Lcom/adyen/threeds2/internal/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1}, Lcom/adyen/threeds2/internal/f/c;-><init>(Ljava/lang/String;Lcom/adyen/threeds2/ErrorMessage;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/adyen/threeds2/RuntimeErrorEvent;
    .locals 2

    .line 113
    iget-object p1, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorDescription:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/adyen/threeds2/internal/f/d;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorCode:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/adyen/threeds2/internal/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcom/adyen/threeds2/internal/a/a/b/i;Ljava/lang/String;)Lcom/adyen/threeds2/internal/a/a/b/d;
    .locals 8

    .line 92
    new-instance v7, Lcom/adyen/threeds2/internal/a/a/b/d;

    .line 93
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/i;->e()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/i;->f()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/i;->g()Ljava/lang/String;

    move-result-object v3

    .line 96
    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/i;->h()Ljava/lang/String;

    move-result-object v4

    move-object v0, v7

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/adyen/threeds2/internal/a/a/b/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/adyen/threeds2/internal/a/a/b/a/c;Ljava/lang/String;)V

    return-object v7
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorComponent:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorDescription:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/adyen/threeds2/internal/a/a/b/a/c;->mErrorMessageType:Ljava/lang/String;

    return-object v0
.end method
