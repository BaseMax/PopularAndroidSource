.class public final enum Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;
.super Ljava/lang/Enum;
.source "RemoteCommunicationConfig.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACCOUNT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum ANALYTICS:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum APP_DETAIL:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum CAFE:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum FEHREST:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum GHOLAK:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum GISHEH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum INLINE:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum MOCK:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum PAYMENT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum REVIEW:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum SEARCH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum SEARCH_PREDICTION:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final enum UPGRADABLE_APPS:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;


# instance fields
.field public final baseUrl:Ljava/lang/String;

.field public final serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0xf

    new-array v0, v0, [Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    new-instance v8, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v2, "CAFE"

    const/4 v3, 0x0

    const-string v4, "cafe"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v8

    .line 1
    invoke-direct/range {v1 .. v7}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v8, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CAFE:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v10, "APP_DETAIL"

    const/4 v11, 0x1

    const-string v12, "appDetails"

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    move-object v9, v1

    .line 2
    invoke-direct/range {v9 .. v15}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->APP_DETAIL:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "REVIEW"

    const/4 v5, 0x2

    const-string v6, "sandogh"

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->REVIEW:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "SEARCH"

    const/4 v5, 0x3

    const-string v6, "search"

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->SEARCH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "SEARCH_PREDICTION"

    const/4 v5, 0x4

    const-string v6, "searchPrediction"

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->SEARCH_PREDICTION:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "FEHREST"

    const/4 v5, 0x5

    const-string v6, "fehrest"

    move-object v3, v1

    .line 6
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->FEHREST:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "ANALYTICS"

    const/4 v5, 0x6

    const-string v6, "log"

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->ANALYTICS:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "ACCOUNT"

    const/4 v5, 0x7

    const-string v6, "account"

    move-object v3, v1

    .line 8
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->ACCOUNT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "UPGRADABLE_APPS"

    const/16 v5, 0x8

    const-string v6, "upgradableApps"

    move-object v3, v1

    .line 9
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->UPGRADABLE_APPS:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "PAYMENT"

    const/16 v5, 0x9

    const-string v6, "payment"

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->PAYMENT:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "CINEMA"

    const/16 v5, 0xa

    const-string v6, "cinema"

    move-object v3, v1

    .line 11
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->CINEMA:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "GISHEH"

    const/16 v5, 0xb

    const-string v6, "gisheh"

    move-object v3, v1

    .line 12
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->GISHEH:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "INLINE"

    const/16 v5, 0xc

    const-string v6, "inline"

    move-object v3, v1

    .line 13
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->INLINE:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const-string v4, "GHOLAK"

    const/16 v5, 0xd

    const-string v6, "gholak"

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->GHOLAK:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    const/16 v2, 0xe

    const-string v3, "MOCK"

    const-string v4, "default"

    const-string v5, "https://cafebazaar.mockable.io/"

    .line 15
    invoke-direct {v1, v3, v2, v4, v5}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->MOCK:Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->a:[Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->serviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->baseUrl:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-string p4, "https://api.cafebazaar.ir/"

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->a:[Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/model/RemoteCommunicationConfig;->serviceName:Ljava/lang/String;

    return-object v0
.end method
