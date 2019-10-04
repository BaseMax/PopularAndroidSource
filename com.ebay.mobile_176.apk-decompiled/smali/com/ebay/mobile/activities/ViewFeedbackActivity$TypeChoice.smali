.class public final enum Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;
.super Ljava/lang/Enum;
.source "ViewFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ViewFeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeChoice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

.field public static final enum ALL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

.field public static final enum NEGATIVE:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

.field public static final enum NEUTRAL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

.field public static final enum POSITIVE:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;


# instance fields
.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 67
    new-instance v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->ALL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    .line 68
    new-instance v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    const-string v1, "POSITIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->POSITIVE:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    .line 69
    new-instance v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    const-string v1, "NEUTRAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->NEUTRAL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    .line 70
    new-instance v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    const-string v1, "NEGATIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->NEGATIVE:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    const/4 v0, 0x4

    .line 65
    new-array v0, v0, [Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    sget-object v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->ALL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->POSITIVE:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->NEUTRAL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->NEGATIVE:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->$VALUES:[Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput p3, p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->value:I

    return-void
.end method

.method public static getByValue(I)Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;
    .locals 5

    .line 81
    invoke-static {}, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->values()[Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 83
    iget v4, v3, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    sget-object p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->ALL:Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;
    .locals 1

    .line 65
    const-class v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    return-object p0
.end method

.method public static values()[Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;
    .locals 1

    .line 65
    sget-object v0, Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->$VALUES:[Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    invoke-virtual {v0}, [Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/mobile/activities/ViewFeedbackActivity$TypeChoice;

    return-object v0
.end method
