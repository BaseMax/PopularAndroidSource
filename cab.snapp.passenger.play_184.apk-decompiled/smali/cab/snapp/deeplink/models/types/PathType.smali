.class public final enum Lcab/snapp/deeplink/models/types/PathType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/deeplink/models/types/PathType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/deeplink/models/types/PathType;

.field public static final enum GoogleMaps:Lcab/snapp/deeplink/models/types/PathType;

.field public static final enum Here:Lcab/snapp/deeplink/models/types/PathType;

.field public static final enum Location:Lcab/snapp/deeplink/models/types/PathType;

.field public static final enum Selective:Lcab/snapp/deeplink/models/types/PathType;

.field public static final enum StringData:Lcab/snapp/deeplink/models/types/PathType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 14
    new-instance v0, Lcab/snapp/deeplink/models/types/PathType;

    const/4 v1, 0x0

    const-string v2, "Here"

    const-string v3, "here"

    invoke-direct {v0, v2, v1, v3}, Lcab/snapp/deeplink/models/types/PathType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    .line 15
    new-instance v0, Lcab/snapp/deeplink/models/types/PathType;

    const/4 v2, 0x1

    const-string v3, "Location"

    const-string v4, ","

    invoke-direct {v0, v3, v2, v4}, Lcab/snapp/deeplink/models/types/PathType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    .line 16
    new-instance v0, Lcab/snapp/deeplink/models/types/PathType;

    const/4 v3, 0x2

    const-string v4, "GoogleMaps"

    const-string v5, "maps"

    invoke-direct {v0, v4, v3, v5}, Lcab/snapp/deeplink/models/types/PathType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/PathType;->GoogleMaps:Lcab/snapp/deeplink/models/types/PathType;

    .line 17
    new-instance v0, Lcab/snapp/deeplink/models/types/PathType;

    const/4 v4, 0x3

    const-string v5, "Selective"

    const-string v6, "selective"

    invoke-direct {v0, v5, v4, v6}, Lcab/snapp/deeplink/models/types/PathType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    .line 18
    new-instance v0, Lcab/snapp/deeplink/models/types/PathType;

    const/4 v5, 0x4

    const-string v6, "StringData"

    const-string v7, ""

    invoke-direct {v0, v6, v5, v7}, Lcab/snapp/deeplink/models/types/PathType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/PathType;->StringData:Lcab/snapp/deeplink/models/types/PathType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcab/snapp/deeplink/models/types/PathType;

    .line 12
    sget-object v6, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    aput-object v6, v0, v1

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->GoogleMaps:Lcab/snapp/deeplink/models/types/PathType;

    aput-object v1, v0, v3

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    aput-object v1, v0, v4

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->StringData:Lcab/snapp/deeplink/models/types/PathType;

    aput-object v1, v0, v5

    sput-object v0, Lcab/snapp/deeplink/models/types/PathType;->$VALUES:[Lcab/snapp/deeplink/models/types/PathType;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcab/snapp/deeplink/models/types/PathType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/deeplink/models/types/PathType;
    .locals 1

    .line 12
    const-class v0, Lcab/snapp/deeplink/models/types/PathType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/deeplink/models/types/PathType;

    return-object p0
.end method

.method public static values()[Lcab/snapp/deeplink/models/types/PathType;
    .locals 1

    .line 12
    sget-object v0, Lcab/snapp/deeplink/models/types/PathType;->$VALUES:[Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v0}, [Lcab/snapp/deeplink/models/types/PathType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/deeplink/models/types/PathType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/deeplink/models/types/PathType;->a:Ljava/lang/String;

    return-object v0
.end method
