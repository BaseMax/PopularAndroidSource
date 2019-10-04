.class public final enum Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PLACE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field public static final enum CREDIT_HISTORY:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field public static final enum JEK_HOME:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field public static final enum JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field public static final enum SIDE_MENU:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

.field public static final enum SIDE_MENU_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;


# instance fields
.field public string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    const/4 v1, 0x0

    const-string v2, "JEK_HOME"

    const-string v3, "jek-home"

    invoke-direct {v0, v2, v1, v3}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_HOME:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 11
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    const/4 v2, 0x1

    const-string v3, "JEK_TOPUP"

    const-string v4, "jek-topup"

    invoke-direct {v0, v3, v2, v4}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 12
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    const/4 v3, 0x2

    const-string v4, "SIDE_MENU"

    const-string v5, "sidemenu"

    invoke-direct {v0, v4, v3, v5}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 13
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    const/4 v4, 0x3

    const-string v5, "SIDE_MENU_TOPUP"

    const-string v6, "sidemenu-topup"

    invoke-direct {v0, v5, v4, v6}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 14
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    const/4 v5, 0x4

    const-string v6, "CREDIT_HISTORY"

    const-string v7, "credit_history"

    invoke-direct {v0, v6, v5, v7}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->CREDIT_HISTORY:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    .line 9
    sget-object v6, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_HOME:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    aput-object v6, v0, v1

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->JEK_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    aput-object v1, v0, v3

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    aput-object v1, v0, v4

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->CREDIT_HISTORY:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    aput-object v1, v0, v5

    sput-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->$VALUES:[Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->string:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;
    .locals 1

    .line 9
    const-class v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    return-object p0
.end method

.method public static values()[Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;
    .locals 1

    .line 9
    sget-object v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->$VALUES:[Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-virtual {v0}, [Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    return-object v0
.end method
