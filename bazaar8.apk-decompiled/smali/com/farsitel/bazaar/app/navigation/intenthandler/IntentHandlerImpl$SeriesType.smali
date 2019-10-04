.class public final enum Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;
.super Ljava/lang/Enum;
.source "IntentHandlerImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SeriesType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EPISODE:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

.field public static final enum SERIAL:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;


# instance fields
.field public final nameValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    new-instance v1, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    const/4 v2, 0x0

    const-string v3, "SERIAL"

    const-string v4, "s"

    .line 1
    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->SERIAL:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    const/4 v2, 0x1

    const-string v3, "EPISODE"

    const-string v4, "e"

    invoke-direct {v1, v3, v2, v4}, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->EPISODE:Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->a:[Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

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

    iput-object p3, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->nameValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->a:[Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;

    return-object v0
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/app/navigation/intenthandler/IntentHandlerImpl$SeriesType;->nameValue:Ljava/lang/String;

    return-object v0
.end method
