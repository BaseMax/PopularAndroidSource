.class public final enum Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;
.super Ljava/lang/Enum;
.source "ComposeNewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ComposeNewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MemberMessageTagValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

.field public static final enum BUYER_ASK_QUESTION:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

.field public static final enum PAYMENT_REMINDER:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

.field public static final enum SELLER_REPLY:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 105
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    const-string v1, "BUYER_ASK_QUESTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->BUYER_ASK_QUESTION:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    .line 106
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    const-string v1, "SELLER_REPLY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->SELLER_REPLY:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    .line 107
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    const-string v1, "PAYMENT_REMINDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->PAYMENT_REMINDER:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    const/4 v0, 0x3

    .line 103
    new-array v0, v0, [Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    sget-object v1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->BUYER_ASK_QUESTION:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->SELLER_REPLY:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->PAYMENT_REMINDER:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->$VALUES:[Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;
    .locals 1

    .line 103
    const-class v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;
    .locals 1

    .line 103
    sget-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->$VALUES:[Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    invoke-virtual {v0}, [Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTagValues;

    return-object v0
.end method
