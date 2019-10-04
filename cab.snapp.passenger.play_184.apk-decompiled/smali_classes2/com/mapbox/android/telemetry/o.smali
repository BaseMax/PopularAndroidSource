.class final enum Lcom/mapbox/android/telemetry/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mapbox/android/telemetry/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHINA:Lcom/mapbox/android/telemetry/o;

.field public static final enum COM:Lcom/mapbox/android/telemetry/o;

.field public static final enum STAGING:Lcom/mapbox/android/telemetry/o;

.field private static final synthetic a:[Lcom/mapbox/android/telemetry/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/mapbox/android/telemetry/o;

    const/4 v1, 0x0

    const-string v2, "STAGING"

    invoke-direct {v0, v2, v1}, Lcom/mapbox/android/telemetry/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    .line 6
    new-instance v0, Lcom/mapbox/android/telemetry/o;

    const/4 v2, 0x1

    const-string v3, "COM"

    invoke-direct {v0, v3, v2}, Lcom/mapbox/android/telemetry/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    .line 7
    new-instance v0, Lcom/mapbox/android/telemetry/o;

    const/4 v3, 0x2

    const-string v4, "CHINA"

    invoke-direct {v0, v4, v3}, Lcom/mapbox/android/telemetry/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mapbox/android/telemetry/o;->CHINA:Lcom/mapbox/android/telemetry/o;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mapbox/android/telemetry/o;

    .line 4
    sget-object v4, Lcom/mapbox/android/telemetry/o;->STAGING:Lcom/mapbox/android/telemetry/o;

    aput-object v4, v0, v1

    sget-object v1, Lcom/mapbox/android/telemetry/o;->COM:Lcom/mapbox/android/telemetry/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mapbox/android/telemetry/o;->CHINA:Lcom/mapbox/android/telemetry/o;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mapbox/android/telemetry/o;->a:[Lcom/mapbox/android/telemetry/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mapbox/android/telemetry/o;
    .locals 1

    .line 4
    const-class v0, Lcom/mapbox/android/telemetry/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mapbox/android/telemetry/o;

    return-object p0
.end method

.method public static values()[Lcom/mapbox/android/telemetry/o;
    .locals 1

    .line 4
    sget-object v0, Lcom/mapbox/android/telemetry/o;->a:[Lcom/mapbox/android/telemetry/o;

    invoke-virtual {v0}, [Lcom/mapbox/android/telemetry/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mapbox/android/telemetry/o;

    return-object v0
.end method
