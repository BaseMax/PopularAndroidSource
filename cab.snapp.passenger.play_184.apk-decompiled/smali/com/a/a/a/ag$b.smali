.class final enum Lcom/a/a/a/ag$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/a/a/a/ag$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CRASH:Lcom/a/a/a/ag$b;

.field public static final enum CUSTOM:Lcom/a/a/a/ag$b;

.field public static final enum INSTALL:Lcom/a/a/a/ag$b;

.field public static final enum PAUSE:Lcom/a/a/a/ag$b;

.field public static final enum PREDEFINED:Lcom/a/a/a/ag$b;

.field public static final enum RESUME:Lcom/a/a/a/ag$b;

.field public static final enum START:Lcom/a/a/a/ag$b;

.field public static final enum STOP:Lcom/a/a/a/ag$b;

.field private static final synthetic a:[Lcom/a/a/a/ag$b;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v1, 0x0

    const-string v2, "START"

    invoke-direct {v0, v2, v1}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->START:Lcom/a/a/a/ag$b;

    .line 17
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v2, 0x1

    const-string v3, "RESUME"

    invoke-direct {v0, v3, v2}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->RESUME:Lcom/a/a/a/ag$b;

    .line 18
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v3, 0x2

    const-string v4, "PAUSE"

    invoke-direct {v0, v4, v3}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->PAUSE:Lcom/a/a/a/ag$b;

    .line 19
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v4, 0x3

    const-string v5, "STOP"

    invoke-direct {v0, v5, v4}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->STOP:Lcom/a/a/a/ag$b;

    .line 20
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v5, 0x4

    const-string v6, "CRASH"

    invoke-direct {v0, v6, v5}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->CRASH:Lcom/a/a/a/ag$b;

    .line 21
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v6, 0x5

    const-string v7, "INSTALL"

    invoke-direct {v0, v7, v6}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->INSTALL:Lcom/a/a/a/ag$b;

    .line 22
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v7, 0x6

    const-string v8, "CUSTOM"

    invoke-direct {v0, v8, v7}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->CUSTOM:Lcom/a/a/a/ag$b;

    .line 23
    new-instance v0, Lcom/a/a/a/ag$b;

    const/4 v8, 0x7

    const-string v9, "PREDEFINED"

    invoke-direct {v0, v9, v8}, Lcom/a/a/a/ag$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/ag$b;->PREDEFINED:Lcom/a/a/a/ag$b;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/a/a/a/ag$b;

    .line 15
    sget-object v9, Lcom/a/a/a/ag$b;->START:Lcom/a/a/a/ag$b;

    aput-object v9, v0, v1

    sget-object v1, Lcom/a/a/a/ag$b;->RESUME:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/a/a/a/ag$b;->PAUSE:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/ag$b;->STOP:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/a/ag$b;->CRASH:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/a/ag$b;->INSTALL:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/a/ag$b;->CUSTOM:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/a/a/a/ag$b;->PREDEFINED:Lcom/a/a/a/ag$b;

    aput-object v1, v0, v8

    sput-object v0, Lcom/a/a/a/ag$b;->a:[Lcom/a/a/a/ag$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/ag$b;
    .locals 1

    .line 15
    const-class v0, Lcom/a/a/a/ag$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/a/a/a/ag$b;

    return-object p0
.end method

.method public static values()[Lcom/a/a/a/ag$b;
    .locals 1

    .line 15
    sget-object v0, Lcom/a/a/a/ag$b;->a:[Lcom/a/a/a/ag$b;

    invoke-virtual {v0}, [Lcom/a/a/a/ag$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/ag$b;

    return-object v0
.end method
