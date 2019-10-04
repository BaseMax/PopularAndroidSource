.class public final enum Lcom/ihsanbal/logging/Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ihsanbal/logging/Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ihsanbal/logging/Level;

.field public static final enum BASIC:Lcom/ihsanbal/logging/Level;

.field public static final enum BODY:Lcom/ihsanbal/logging/Level;

.field public static final enum HEADERS:Lcom/ihsanbal/logging/Level;

.field public static final enum NONE:Lcom/ihsanbal/logging/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 11
    new-instance v0, Lcom/ihsanbal/logging/Level;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/ihsanbal/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihsanbal/logging/Level;->NONE:Lcom/ihsanbal/logging/Level;

    .line 21
    new-instance v0, Lcom/ihsanbal/logging/Level;

    const/4 v2, 0x1

    const-string v3, "BASIC"

    invoke-direct {v0, v3, v2}, Lcom/ihsanbal/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihsanbal/logging/Level;->BASIC:Lcom/ihsanbal/logging/Level;

    .line 30
    new-instance v0, Lcom/ihsanbal/logging/Level;

    const/4 v3, 0x2

    const-string v4, "HEADERS"

    invoke-direct {v0, v4, v3}, Lcom/ihsanbal/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihsanbal/logging/Level;->HEADERS:Lcom/ihsanbal/logging/Level;

    .line 39
    new-instance v0, Lcom/ihsanbal/logging/Level;

    const/4 v4, 0x3

    const-string v5, "BODY"

    invoke-direct {v0, v5, v4}, Lcom/ihsanbal/logging/Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ihsanbal/logging/Level;->BODY:Lcom/ihsanbal/logging/Level;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ihsanbal/logging/Level;

    .line 7
    sget-object v5, Lcom/ihsanbal/logging/Level;->NONE:Lcom/ihsanbal/logging/Level;

    aput-object v5, v0, v1

    sget-object v1, Lcom/ihsanbal/logging/Level;->BASIC:Lcom/ihsanbal/logging/Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ihsanbal/logging/Level;->HEADERS:Lcom/ihsanbal/logging/Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ihsanbal/logging/Level;->BODY:Lcom/ihsanbal/logging/Level;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ihsanbal/logging/Level;->$VALUES:[Lcom/ihsanbal/logging/Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ihsanbal/logging/Level;
    .locals 1

    .line 7
    const-class v0, Lcom/ihsanbal/logging/Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ihsanbal/logging/Level;

    return-object p0
.end method

.method public static values()[Lcom/ihsanbal/logging/Level;
    .locals 1

    .line 7
    sget-object v0, Lcom/ihsanbal/logging/Level;->$VALUES:[Lcom/ihsanbal/logging/Level;

    invoke-virtual {v0}, [Lcom/ihsanbal/logging/Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ihsanbal/logging/Level;

    return-object v0
.end method
