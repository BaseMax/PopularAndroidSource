.class public final enum Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;
.super Ljava/lang/Enum;
.source "PackageChangeModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

.field public static final enum ADD:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

.field public static final enum REMOVE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

.field public static final enum REPLACE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    const/4 v2, 0x0

    const-string v3, "ADD"

    const-string v4, "add"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->ADD:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    const/4 v2, 0x1

    const-string v3, "REMOVE"

    const-string v4, "remove"

    .line 2
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->REMOVE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    const/4 v2, 0x2

    const-string v3, "REPLACE"

    const-string v4, "replace"

    .line 3
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->REPLACE:Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->$VALUES:[Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->$VALUES:[Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/ui/PackageChangeType;->value:Ljava/lang/String;

    return-object v0
.end method
