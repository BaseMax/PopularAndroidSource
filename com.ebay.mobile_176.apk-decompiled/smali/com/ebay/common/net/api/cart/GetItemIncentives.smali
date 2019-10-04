.class public Lcom/ebay/common/net/api/cart/GetItemIncentives;
.super Ljava/lang/Object;
.source "GetItemIncentives.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesResponse;,
        Lcom/ebay/common/net/api/cart/GetItemIncentives$GetItemIncentivesRequest;,
        Lcom/ebay/common/net/api/cart/GetItemIncentives$ItemIncentiveType;
    }
.end annotation


# static fields
.field public static final CHINESE_LISTING_TYPE:I = 0x1

.field public static final DUTCH_LISTING_TYPE:I = 0x2

.field public static final FIXED_PRICE_ITEM_LISTING_TYPE:I = 0x9

.field public static final HALF_LISTING_TYPE:I = 0xc

.field public static final OFFLINE_PAYMENT_METHOD_ID:I = -0x1

.field public static final ONLINE_CC_PAYMENT_METHOD_ID:I = 0x19

.field public static final PAYPAL_PAYMENT_METHOD_ID:I = 0x0

.field public static final PERSONAL_OFFER_LISTING_TYPE:I = 0xf

.field public static final STORES_FIXED_PRICE_LISTING_TYPE:I = 0x7

.field public static final UNKNOWN_LISTING_TYPE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
