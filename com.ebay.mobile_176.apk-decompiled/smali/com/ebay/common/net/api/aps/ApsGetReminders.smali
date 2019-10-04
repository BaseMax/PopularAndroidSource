.class public final Lcom/ebay/common/net/api/aps/ApsGetReminders;
.super Ljava/lang/Object;
.source "ApsGetReminders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersRequest;,
        Lcom/ebay/common/net/api/aps/ApsGetReminders$GetRemindersResponse;
    }
.end annotation


# static fields
.field public static final BUYING_REMINDER_BEST_OFFER:I = 0x5

.field public static final BUYING_REMINDER_BEST_OFFER_SEL:Ljava/lang/String; = "buyingReminder.bestOffer"

.field public static final BUYING_REMINDER_BIDDING_ENDING:I = 0x3

.field public static final BUYING_REMINDER_BIDDING_ENDING_SEL:Ljava/lang/String; = "buyingReminder.bidEndingSoon"

.field public static final BUYING_REMINDER_FEEDBACK_TO_SEND:I = 0x0

.field public static final BUYING_REMINDER_FEEDBACK_TO_SEND_SEL:Ljava/lang/String; = "buyingReminder.feedbackToSend"

.field public static final BUYING_REMINDER_OUTBID:I = 0x4

.field public static final BUYING_REMINDER_OUTBID_SEL:Ljava/lang/String; = "buyingReminder.outbid"

.field public static final BUYING_REMINDER_PAYMENT_TO_SEND:I = 0x1

.field public static final BUYING_REMINDER_PAYMENT_TO_SEND_SEL:Ljava/lang/String; = "buyingReminder.paymentToSend"

.field public static final BUYING_REMINDER_PICKUP_READY:I = 0x7

.field public static final BUYING_REMINDER_PICKUP_READY_SEL:Ljava/lang/String; = "buyingReminder.pickupReady"

.field public static final BUYING_REMINDER_SECOND_CHANCE_OFFER:I = 0x6

.field public static final BUYING_REMINDER_SECOND_CHANCE_OFFER_SEL:Ljava/lang/String; = "buyingReminder.secondChanceOffer"

.field public static final BUYING_REMINDER_WATCHING_ENDING:I = 0x2

.field public static final BUYING_REMINDER_WATCHING_ENDING_SEL:Ljava/lang/String; = "buyingReminder.watchEndingSoon"

.field public static final SELLING_REMINDER_BEST_OFFER:I = 0xe

.field public static final SELLING_REMINDER_BEST_OFFER_SEL:Ljava/lang/String; = "sellingReminder.bestOffer"

.field public static final SELLING_REMINDER_FEEDBACK_TO_SEND:I = 0xa

.field public static final SELLING_REMINDER_FEEDBACK_TO_SEND_SEL:Ljava/lang/String; = "sellingReminder.feedbackToSend"

.field public static final SELLING_REMINDER_PAYMENT_TO_RECEIVE:I = 0xb

.field public static final SELLING_REMINDER_PAYMENT_TO_RECEIVE_SEL:Ljava/lang/String; = "sellingReminder.paymentToReceive"

.field public static final SELLING_REMINDER_SELL_ENDING:I = 0xd

.field public static final SELLING_REMINDER_SELL_ENDING_SEL:Ljava/lang/String; = "sellingReminder.sellEndingSoon"

.field public static final SELLING_REMINDER_SHIPPING_NEEDED:I = 0xc

.field public static final SELLING_REMINDER_SHIPPING_NEEDED_SEL:Ljava/lang/String; = "sellingReminder.shippingNeeded"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
