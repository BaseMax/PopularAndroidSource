.class public final enum Lcab/snapp/deeplink/models/types/Scheme;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/deeplink/models/types/Scheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/deeplink/models/types/Scheme;

.field public static final enum Geo:Lcab/snapp/deeplink/models/types/Scheme;

.field public static final enum HTTPS:Lcab/snapp/deeplink/models/types/Scheme;

.field public static final enum Snapp:Lcab/snapp/deeplink/models/types/Scheme;

.field public static final enum SnappDriver:Lcab/snapp/deeplink/models/types/Scheme;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcab/snapp/deeplink/models/types/Scheme;

    const/4 v1, 0x0

    const-string v2, "Snapp"

    const-string v3, "snapp"

    invoke-direct {v0, v2, v1, v3}, Lcab/snapp/deeplink/models/types/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    .line 15
    new-instance v0, Lcab/snapp/deeplink/models/types/Scheme;

    const/4 v2, 0x1

    const-string v3, "SnappDriver"

    const-string v4, "snappdriver"

    invoke-direct {v0, v3, v2, v4}, Lcab/snapp/deeplink/models/types/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Scheme;->SnappDriver:Lcab/snapp/deeplink/models/types/Scheme;

    .line 16
    new-instance v0, Lcab/snapp/deeplink/models/types/Scheme;

    const/4 v3, 0x2

    const-string v4, "HTTPS"

    const-string v5, "https"

    invoke-direct {v0, v4, v3, v5}, Lcab/snapp/deeplink/models/types/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Scheme;->HTTPS:Lcab/snapp/deeplink/models/types/Scheme;

    .line 17
    new-instance v0, Lcab/snapp/deeplink/models/types/Scheme;

    const/4 v4, 0x3

    const-string v5, "Geo"

    const-string v6, "geo"

    invoke-direct {v0, v5, v4, v6}, Lcab/snapp/deeplink/models/types/Scheme;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    const/4 v0, 0x4

    new-array v0, v0, [Lcab/snapp/deeplink/models/types/Scheme;

    .line 12
    sget-object v5, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    aput-object v5, v0, v1

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->SnappDriver:Lcab/snapp/deeplink/models/types/Scheme;

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->HTTPS:Lcab/snapp/deeplink/models/types/Scheme;

    aput-object v1, v0, v3

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    aput-object v1, v0, v4

    sput-object v0, Lcab/snapp/deeplink/models/types/Scheme;->$VALUES:[Lcab/snapp/deeplink/models/types/Scheme;

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

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcab/snapp/deeplink/models/types/Scheme;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/deeplink/models/types/Scheme;
    .locals 1

    .line 12
    const-class v0, Lcab/snapp/deeplink/models/types/Scheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/deeplink/models/types/Scheme;

    return-object p0
.end method

.method public static values()[Lcab/snapp/deeplink/models/types/Scheme;
    .locals 1

    .line 12
    sget-object v0, Lcab/snapp/deeplink/models/types/Scheme;->$VALUES:[Lcab/snapp/deeplink/models/types/Scheme;

    invoke-virtual {v0}, [Lcab/snapp/deeplink/models/types/Scheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/deeplink/models/types/Scheme;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcab/snapp/deeplink/models/types/Scheme;->a:Ljava/lang/String;

    return-object v0
.end method
