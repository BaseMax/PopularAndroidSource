.class public final enum Lcom/ebay/common/rtm/RtmContextTypeId;
.super Ljava/lang/Enum;
.source "RtmContextTypeId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/rtm/RtmContextTypeId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum ANDROID_MOBILE_APP_CONTEXT_ID_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum BUYER_GUARANTEE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum BUYING_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum CATEGORY_PORTAL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum CCHP_MEBAAG_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum CFADS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum CHECKOUT_MERCH_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum DEFAULT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum EBX_CHECKOUT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum EBX_VALUE_PROPOSITION_CONTEXT_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum EXTERNAL_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum FEEDBACK_CONFIRMATION_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum FEEDBACK_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum GLOBAL_HEADER_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum GUEST_CHECKOUT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum IH_DCP_CAT_RTM_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum INVALID_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum MERCH_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum MERCH_FB_SOCIAL_RECO_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum MOBILE_APP_HOME_PAGE_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum MOTORS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum MYEBAY_DIDNTWIN_MERCH_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum MYWORLD_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum NGXO_PAYPAL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum PAYPAL_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum RESOLN_INTERSTITIAL_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum REWARDS_NEWS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum RTM_IMPRESSION_CONTEXT_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SHOP_CART_MERCH_RTM_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SIGNIN_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SIGNOUT_PP_MODULE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SITE_EMAIL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SPPM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum STATIC_HTML_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum STORE_FUNTIONALITY_GUIDE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SUNSHINE_ADS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SYI32_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum SYI_LISTING_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum VIEW_ITEM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

.field public static final enum VIEW_ITEM_SIMPLE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 5
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "VIEW_ITEM_CONTEXT_TYPE_ID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->VIEW_ITEM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 6
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "STORE_FUNTIONALITY_GUIDE_CONTEXT_TYPE_ID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->STORE_FUNTIONALITY_GUIDE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 7
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SITE_EMAIL_CONTEXT_TYPE_ID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SITE_EMAIL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 8
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "CATEGORY_PORTAL_CONTEXT_TYPE_ID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->CATEGORY_PORTAL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 9
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "EBX_CHECKOUT_CONTEXT_TYPE_ID"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->EBX_CHECKOUT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 10
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SPPM_CONTEXT_TYPE_ID"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SPPM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 11
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "PAYPAL_RTM_CONTEXT_TYPE_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->PAYPAL_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 12
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "MYWORLD_RTM_CONTEXT_TYPE_ID"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->MYWORLD_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 13
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "EXTERNAL_RTM_CONTEXT_TYPE_ID"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->EXTERNAL_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 14
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SYI32_CONTEXT_TYPE_ID"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SYI32_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 15
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "VIEW_ITEM_SIMPLE_CONTEXT_TYPE_ID"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->VIEW_ITEM_SIMPLE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 16
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "MOTORS_CONTEXT_TYPE_ID"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->MOTORS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 17
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SUNSHINE_ADS_CONTEXT_TYPE_ID"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SUNSHINE_ADS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 18
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "NGXO_PAYPAL_CONTEXT_TYPE_ID"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->NGXO_PAYPAL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 19
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SYI_LISTING_CONTEXT_TYPE_ID"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SYI_LISTING_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 20
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "EBX_VALUE_PROPOSITION_CONTEXT_TYPE"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->EBX_VALUE_PROPOSITION_CONTEXT_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 21
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "GUEST_CHECKOUT_CONTEXT_TYPE_ID"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->GUEST_CHECKOUT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 22
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "GLOBAL_HEADER_CONTEXT_TYPE_ID"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->GLOBAL_HEADER_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 23
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "STATIC_HTML_CONTEXT_TYPE_ID"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->STATIC_HTML_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 24
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "BUYER_GUARANTEE_CONTEXT_TYPE_ID"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->BUYER_GUARANTEE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 25
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "FEEDBACK_CONFIRMATION_CONTEXT_TYPE_ID"

    const/16 v14, 0x14

    const/16 v15, 0x14

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->FEEDBACK_CONFIRMATION_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 26
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "CCHP_MEBAAG_CONTEXT_TYPE_ID"

    const/16 v14, 0x15

    const/16 v15, 0x15

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->CCHP_MEBAAG_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 27
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "DEFAULT_CONTEXT_TYPE_ID"

    const/16 v14, 0x16

    const/16 v15, 0x16

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->DEFAULT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 28
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "INVALID_CONTEXT_TYPE_ID"

    const/16 v14, 0x17

    const v15, -0x5f5e0ff

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->INVALID_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 29
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "MERCH_CONTEXT_TYPE_ID"

    const/16 v14, 0x18

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->MERCH_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 30
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "CHECKOUT_MERCH_CONTEXT_TYPE_ID"

    const/16 v14, 0x19

    const/16 v15, 0x18

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->CHECKOUT_MERCH_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 31
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SIGNOUT_PP_MODULE_CONTEXT_TYPE_ID"

    const/16 v14, 0x1a

    const/16 v15, 0x19

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SIGNOUT_PP_MODULE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 32
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "REWARDS_NEWS_CONTEXT_TYPE_ID"

    const/16 v14, 0x1b

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->REWARDS_NEWS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 33
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "RTM_IMPRESSION_CONTEXT_TYPE"

    const/16 v14, 0x1c

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->RTM_IMPRESSION_CONTEXT_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 34
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SHOP_CART_MERCH_RTM_TYPE_ID"

    const/16 v14, 0x1d

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SHOP_CART_MERCH_RTM_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 35
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "IH_DCP_CAT_RTM_TYPE_ID"

    const/16 v14, 0x1e

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->IH_DCP_CAT_RTM_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 36
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "RESOLN_INTERSTITIAL_TYPE_ID"

    const/16 v14, 0x1f

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->RESOLN_INTERSTITIAL_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 37
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "CFADS_CONTEXT_TYPE_ID"

    const/16 v14, 0x20

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->CFADS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 38
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "SIGNIN_CONTEXT_TYPE_ID"

    const/16 v14, 0x21

    const/16 v15, 0x20

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->SIGNIN_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 39
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "BUYING_CONTEXT_TYPE_ID"

    const/16 v14, 0x22

    const/16 v15, 0x21

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->BUYING_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 40
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "FEEDBACK_CONTEXT_TYPE_ID"

    const/16 v14, 0x23

    const/16 v15, 0x22

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->FEEDBACK_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 41
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "MYEBAY_DIDNTWIN_MERCH_CONTEXT_ID"

    const/16 v14, 0x24

    const/16 v15, 0x23

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->MYEBAY_DIDNTWIN_MERCH_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 42
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "MERCH_FB_SOCIAL_RECO_CONTEXT_ID"

    const/16 v14, 0x25

    const/16 v15, 0x24

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->MERCH_FB_SOCIAL_RECO_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 43
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "MOBILE_APP_HOME_PAGE_CONTEXT_ID"

    const/16 v14, 0x26

    const/16 v15, 0x25

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->MOBILE_APP_HOME_PAGE_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    .line 45
    new-instance v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    const-string v1, "ANDROID_MOBILE_APP_CONTEXT_ID_TYPE"

    const/16 v14, 0x27

    const/16 v15, 0x27

    invoke-direct {v0, v1, v14, v15}, Lcom/ebay/common/rtm/RtmContextTypeId;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->ANDROID_MOBILE_APP_CONTEXT_ID_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v0, 0x28

    .line 3
    new-array v0, v0, [Lcom/ebay/common/rtm/RtmContextTypeId;

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->VIEW_ITEM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->STORE_FUNTIONALITY_GUIDE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SITE_EMAIL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->CATEGORY_PORTAL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->EBX_CHECKOUT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SPPM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->PAYPAL_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->MYWORLD_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->EXTERNAL_RTM_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v10

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SYI32_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v11

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->VIEW_ITEM_SIMPLE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v12

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->MOTORS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    aput-object v1, v0, v13

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SUNSHINE_ADS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->NGXO_PAYPAL_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SYI_LISTING_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->EBX_VALUE_PROPOSITION_CONTEXT_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->GUEST_CHECKOUT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->GLOBAL_HEADER_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->STATIC_HTML_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->BUYER_GUARANTEE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->FEEDBACK_CONFIRMATION_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->CCHP_MEBAAG_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->DEFAULT_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->INVALID_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->MERCH_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->CHECKOUT_MERCH_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SIGNOUT_PP_MODULE_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->REWARDS_NEWS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->RTM_IMPRESSION_CONTEXT_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SHOP_CART_MERCH_RTM_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->IH_DCP_CAT_RTM_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->RESOLN_INTERSTITIAL_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->CFADS_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->SIGNIN_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->BUYING_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->FEEDBACK_CONTEXT_TYPE_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->MYEBAY_DIDNTWIN_MERCH_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->MERCH_FB_SOCIAL_RECO_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->MOBILE_APP_HOME_PAGE_CONTEXT_ID:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/rtm/RtmContextTypeId;->ANDROID_MOBILE_APP_CONTEXT_ID_TYPE:Lcom/ebay/common/rtm/RtmContextTypeId;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sput-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->$VALUES:[Lcom/ebay/common/rtm/RtmContextTypeId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/ebay/common/rtm/RtmContextTypeId;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/rtm/RtmContextTypeId;
    .locals 1

    .line 3
    const-class v0, Lcom/ebay/common/rtm/RtmContextTypeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/rtm/RtmContextTypeId;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/rtm/RtmContextTypeId;
    .locals 1

    .line 3
    sget-object v0, Lcom/ebay/common/rtm/RtmContextTypeId;->$VALUES:[Lcom/ebay/common/rtm/RtmContextTypeId;

    invoke-virtual {v0}, [Lcom/ebay/common/rtm/RtmContextTypeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/rtm/RtmContextTypeId;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/ebay/common/rtm/RtmContextTypeId;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 62
    iget v0, p0, Lcom/ebay/common/rtm/RtmContextTypeId;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
