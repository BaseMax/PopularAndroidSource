.class public final enum Lcom/farsitel/bazaar/common/model/login/LoginType;
.super Ljava/lang/Enum;
.source "LoginType.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/login/LoginType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/login/LoginType;

.field public static final enum DEFAULT:Lcom/farsitel/bazaar/common/model/login/LoginType;

.field public static final enum IN_APP_PURCHASE:Lcom/farsitel/bazaar/common/model/login/LoginType;

.field public static final enum IN_APP_REVIEW:Lcom/farsitel/bazaar/common/model/login/LoginType;

.field public static final enum MERGE_ACCOUNT:Lcom/farsitel/bazaar/common/model/login/LoginType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/login/LoginType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/login/LoginType;

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/login/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->DEFAULT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/login/LoginType;

    const/4 v2, 0x1

    const-string v3, "IN_APP_PURCHASE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/login/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_PURCHASE:Lcom/farsitel/bazaar/common/model/login/LoginType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/login/LoginType;

    const/4 v2, 0x2

    const-string v3, "IN_APP_REVIEW"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/login/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_REVIEW:Lcom/farsitel/bazaar/common/model/login/LoginType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/login/LoginType;

    const/4 v2, 0x3

    const-string v3, "MERGE_ACCOUNT"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/common/model/login/LoginType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/login/LoginType;->MERGE_ACCOUNT:Lcom/farsitel/bazaar/common/model/login/LoginType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/login/LoginType;->$VALUES:[Lcom/farsitel/bazaar/common/model/login/LoginType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/login/LoginType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/login/LoginType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/login/LoginType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/login/LoginType;->$VALUES:[Lcom/farsitel/bazaar/common/model/login/LoginType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/login/LoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/login/LoginType;

    return-object v0
.end method
