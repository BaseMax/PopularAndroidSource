.class public final enum Lcom/ebay/mobile/Item$PaymentReminderState;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PaymentReminderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/Item$PaymentReminderState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/Item$PaymentReminderState;

.field public static final enum STATE_DISABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

.field public static final enum STATE_ENABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

.field public static final enum STATE_SENT:Lcom/ebay/mobile/Item$PaymentReminderState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 157
    new-instance v0, Lcom/ebay/mobile/Item$PaymentReminderState;

    const-string v1, "STATE_DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/Item$PaymentReminderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_DISABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    .line 163
    new-instance v0, Lcom/ebay/mobile/Item$PaymentReminderState;

    const-string v1, "STATE_ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/Item$PaymentReminderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_ENABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    .line 167
    new-instance v0, Lcom/ebay/mobile/Item$PaymentReminderState;

    const-string v1, "STATE_SENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/Item$PaymentReminderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_SENT:Lcom/ebay/mobile/Item$PaymentReminderState;

    const/4 v0, 0x3

    .line 150
    new-array v0, v0, [Lcom/ebay/mobile/Item$PaymentReminderState;

    sget-object v1, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_DISABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_ENABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_SENT:Lcom/ebay/mobile/Item$PaymentReminderState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/mobile/Item$PaymentReminderState;->$VALUES:[Lcom/ebay/mobile/Item$PaymentReminderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/Item$PaymentReminderState;
    .locals 1

    .line 150
    const-class v0, Lcom/ebay/mobile/Item$PaymentReminderState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/Item$PaymentReminderState;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/Item$PaymentReminderState;
    .locals 1

    .line 150
    sget-object v0, Lcom/ebay/mobile/Item$PaymentReminderState;->$VALUES:[Lcom/ebay/mobile/Item$PaymentReminderState;

    invoke-virtual {v0}, [Lcom/ebay/mobile/Item$PaymentReminderState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/Item$PaymentReminderState;

    return-object v0
.end method
