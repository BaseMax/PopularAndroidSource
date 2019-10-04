.class public final enum Lcab/snapp/deeplink/models/types/Host;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcab/snapp/deeplink/models/types/Host;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Bike:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Box:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum CompleteGoogle:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Eco:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Google:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Open:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Ride:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Rose:Lcab/snapp/deeplink/models/types/Host;

.field public static final enum Shortcut:Lcab/snapp/deeplink/models/types/Host;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 14
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v1, 0x0

    const-string v2, "Ride"

    const-string v3, "ride"

    invoke-direct {v0, v2, v1, v3}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    .line 15
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v2, 0x1

    const-string v3, "Open"

    const-string v4, "open"

    invoke-direct {v0, v3, v2, v4}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    .line 16
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v3, 0x2

    const-string v4, "Shortcut"

    const-string v5, "shortcut"

    invoke-direct {v0, v4, v3, v5}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    .line 17
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v4, 0x3

    const-string v5, "Google"

    const-string v6, "goo.gl"

    invoke-direct {v0, v5, v4, v6}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Google:Lcab/snapp/deeplink/models/types/Host;

    .line 18
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v5, 0x4

    const-string v6, "CompleteGoogle"

    const-string v7, "www.google.com"

    invoke-direct {v0, v6, v5, v7}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->CompleteGoogle:Lcab/snapp/deeplink/models/types/Host;

    .line 19
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v6, 0x5

    const-string v7, "Eco"

    const-string v8, "eco"

    invoke-direct {v0, v7, v6, v8}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    .line 20
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v7, 0x6

    const-string v8, "Rose"

    const-string v9, "rose"

    invoke-direct {v0, v8, v7, v9}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    .line 21
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/4 v8, 0x7

    const-string v9, "Bike"

    const-string v10, "bike"

    invoke-direct {v0, v9, v8, v10}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    .line 22
    new-instance v0, Lcab/snapp/deeplink/models/types/Host;

    const/16 v9, 0x8

    const-string v10, "Box"

    const-string v11, "box"

    invoke-direct {v0, v10, v9, v11}, Lcab/snapp/deeplink/models/types/Host;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    const/16 v0, 0x9

    new-array v0, v0, [Lcab/snapp/deeplink/models/types/Host;

    .line 12
    sget-object v10, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    aput-object v10, v0, v1

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v2

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v3

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Google:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v4

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->CompleteGoogle:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v5

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v6

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v7

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v8

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    aput-object v1, v0, v9

    sput-object v0, Lcab/snapp/deeplink/models/types/Host;->$VALUES:[Lcab/snapp/deeplink/models/types/Host;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcab/snapp/deeplink/models/types/Host;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcab/snapp/deeplink/models/types/Host;
    .locals 1

    .line 12
    const-class v0, Lcab/snapp/deeplink/models/types/Host;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcab/snapp/deeplink/models/types/Host;

    return-object p0
.end method

.method public static values()[Lcab/snapp/deeplink/models/types/Host;
    .locals 1

    .line 12
    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->$VALUES:[Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v0}, [Lcab/snapp/deeplink/models/types/Host;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcab/snapp/deeplink/models/types/Host;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcab/snapp/deeplink/models/types/Host;->a:Ljava/lang/String;

    return-object v0
.end method
