.class public final enum Lcom/ebay/mobile/Item$GuestWatchState;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuestWatchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/Item$GuestWatchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/Item$GuestWatchState;

.field public static final enum CAPACITY_REACHED:Lcom/ebay/mobile/Item$GuestWatchState;

.field public static final enum NOT_INITIALIZED:Lcom/ebay/mobile/Item$GuestWatchState;

.field public static final enum NO_CAPACITY_ADD_ERROR:Lcom/ebay/mobile/Item$GuestWatchState;

.field public static final enum WATCHES_REMAINING:Lcom/ebay/mobile/Item$GuestWatchState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1115
    new-instance v0, Lcom/ebay/mobile/Item$GuestWatchState;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/Item$GuestWatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->NOT_INITIALIZED:Lcom/ebay/mobile/Item$GuestWatchState;

    .line 1120
    new-instance v0, Lcom/ebay/mobile/Item$GuestWatchState;

    const-string v1, "CAPACITY_REACHED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/Item$GuestWatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->CAPACITY_REACHED:Lcom/ebay/mobile/Item$GuestWatchState;

    .line 1126
    new-instance v0, Lcom/ebay/mobile/Item$GuestWatchState;

    const-string v1, "NO_CAPACITY_ADD_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/Item$GuestWatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->NO_CAPACITY_ADD_ERROR:Lcom/ebay/mobile/Item$GuestWatchState;

    .line 1130
    new-instance v0, Lcom/ebay/mobile/Item$GuestWatchState;

    const-string v1, "WATCHES_REMAINING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/ebay/mobile/Item$GuestWatchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->WATCHES_REMAINING:Lcom/ebay/mobile/Item$GuestWatchState;

    const/4 v0, 0x4

    .line 1109
    new-array v0, v0, [Lcom/ebay/mobile/Item$GuestWatchState;

    sget-object v1, Lcom/ebay/mobile/Item$GuestWatchState;->NOT_INITIALIZED:Lcom/ebay/mobile/Item$GuestWatchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/Item$GuestWatchState;->CAPACITY_REACHED:Lcom/ebay/mobile/Item$GuestWatchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/Item$GuestWatchState;->NO_CAPACITY_ADD_ERROR:Lcom/ebay/mobile/Item$GuestWatchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/Item$GuestWatchState;->WATCHES_REMAINING:Lcom/ebay/mobile/Item$GuestWatchState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->$VALUES:[Lcom/ebay/mobile/Item$GuestWatchState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/Item$GuestWatchState;
    .locals 1

    .line 1109
    const-class v0, Lcom/ebay/mobile/Item$GuestWatchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/Item$GuestWatchState;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/Item$GuestWatchState;
    .locals 1

    .line 1109
    sget-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->$VALUES:[Lcom/ebay/mobile/Item$GuestWatchState;

    invoke-virtual {v0}, [Lcom/ebay/mobile/Item$GuestWatchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/Item$GuestWatchState;

    return-object v0
.end method
