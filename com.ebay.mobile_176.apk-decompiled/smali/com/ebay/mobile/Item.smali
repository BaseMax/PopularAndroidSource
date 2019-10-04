.class public Lcom/ebay/mobile/Item;
.super Lcom/ebay/nautilus/domain/data/BaseItem;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/Item$PaidStatus;,
        Lcom/ebay/mobile/Item$BidBounds;,
        Lcom/ebay/mobile/Item$GuestWatchState;,
        Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;,
        Lcom/ebay/mobile/Item$ViewListingSignals;,
        Lcom/ebay/mobile/Item$PaymentReminderState;
    }
.end annotation


# static fields
.field public static final BUSINESS_TYPE_COMMERCIAL:Ljava/lang/String; = "Commercial"

.field public static final BUSINESS_TYPE_PRIVATE:Ljava/lang/String; = "Private"

.field public static final ITEM_SPECIFIC_DEPOSIT_AMOUNT:Ljava/lang/String; = "Deposit amount"

.field public static final ITEM_SPECIFIC_SCREEN_SIZE:Ljava/lang/String; = "Screen Size"

.field public static final US_PROTECTORATES:Ljava/lang/String; = "US Protectorates"

.field public static final VLS_WARNING_DOES_NOT_SHIP_TO_BUYER:I = 0x61bb

.field public static final VLS_WARNING_HIGH_AVAILABILITY:I = 0x61c8

.field public static final VLS_WARNING_SHIPPING_TIMED_OUT:I = 0x61b5

.field private static final logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static mskuNotSelectedStrings:[Ljava/lang/String;

.field public static final shippingRegions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public actualEndDate:Lcom/ebay/nautilus/domain/data/cos/base/DateTime;

.field public addToRecentlyViewed:Z

.field public additionalVATProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$VatProfile;",
            ">;"
        }
    .end annotation
.end field

.field public allBidders:Lcom/ebay/common/model/AllBiddersData;

.field public allSignalsTrackingWithRank:Landroid/util/SparseIntArray;

.field public askQuestionModel:Lcom/ebay/nautilus/domain/data/experience/reviews/QnaAskQuestionModule;

.field public auctionBestOfferHeaderInfo:Lcom/ebay/mobile/viewitem/util/ActionHeaderOverride;

.field public authenticityText:Landroid/text/Spannable;

.field public authenticityTitle:Ljava/lang/String;

.field public authenticityUrl:Ljava/lang/String;

.field public authorizedByBrand:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BrandDetail;",
            ">;"
        }
    .end annotation
.end field

.field public authorizedSeller:Lcom/ebay/nautilus/domain/data/experience/type/module/SectionModule;

.field public autoPay:Z

.field public availableAddons:Lcom/ebay/mobile/addon/AvailableAddons;

.field public availableForPickupAndDropoff:Z

.field public availableForPickupInStore:Z

.field public availablePaymentMethods:Ljava/lang/String;

.field public bestOfferCount:I

.field public bestOfferLimit:I

.field public bsAdditionalContactInformation:Ljava/lang/String;

.field public bsCityName:Ljava/lang/String;

.field public bsCompanyName:Ljava/lang/String;

.field public bsCountryName:Ljava/lang/String;

.field public bsDetailsExists:Z

.field public bsEmail:Ljava/lang/String;

.field public bsFax:Ljava/lang/String;

.field public bsFirstName:Ljava/lang/String;

.field public bsLastName:Ljava/lang/String;

.field public bsLegalInvoice:Z

.field public bsPhone:Ljava/lang/String;

.field public bsPostalCode:Ljava/lang/String;

.field public bsStateOrProvince:Ljava/lang/String;

.field public bsStreet1:Ljava/lang/String;

.field public bsStreet2:Ljava/lang/String;

.field public bsTermsAndConditions:Ljava/lang/String;

.field public bsTradeRegistrationNumber:Ljava/lang/String;

.field public bsVatId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bsVatIssuingCountry:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public bucksRewards:Ljava/lang/String;

.field public buyerAddress:Ljava/lang/String;

.field public buyerCountryCode:Ljava/lang/String;

.field public buyerLocation:Ljava/lang/String;

.field public buyerPostalCodeSpec:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

.field public buyerResponsibleForLogistics:Z

.field public buyingOptionsVerbiage:Ljava/lang/String;

.field public cartCountry:Ljava/lang/String;

.field public charity:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;

.field public compatibilityDetail:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CompatibilityDetail;

.field public compatibilityProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public conditionDescription:Ljava/lang/String;

.field public conditionDisplayName:Ljava/lang/String;

.field public conditionId:Ljava/lang/String;

.field public convertedStartPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public country:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public coupon:Ljava/lang/CharSequence;

.field public couponUrl:Ljava/lang/String;

.field public couponUrlDisplay:Ljava/lang/CharSequence;

.field public couponWithCode:Ljava/lang/CharSequence;

.field public couponsLayerViewModule:Lcom/ebay/nautilus/domain/data/experience/viewitem/CouponsLayerViewModule;

.field public depositAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public depositAmountString:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public destinationSubRegionInExclusions:Z

.field public discountPercentage:Ljava/lang/Double;

.field public displayBuyerResponsibleForLogistics:Ljava/lang/String;

.field public displayCurrentPrice:Ljava/lang/String;

.field public displayCurrentPriceConverted:Ljava/lang/String;

.field public displayEbayPlusItemCard:Ljava/lang/String;

.field public displayEbayPlusItemCardWithEndTime:Ljava/lang/String;

.field public displayEbayPlusSignupDescription:Ljava/lang/String;

.field public displayExcludedPOBox:Ljava/lang/String;

.field public displayExcludedPackstation:Ljava/lang/String;

.field public displayHotnessCharityKeyString:Ljava/lang/String;

.field public displayHotnessCharityValueString:Ljava/lang/String;

.field public displayIncludesVatString:Ljava/lang/String;

.field public displayPlusMainUpsell:Ljava/lang/String;

.field public displayPlusSpokeUpsell:Ljava/lang/String;

.field public displayPrice:Ljava/lang/String;

.field public displayPriceColor:I
    .annotation build Landroidx/annotation/AttrRes;
    .end annotation
.end field

.field public displayPriceContentDescription:Ljava/lang/String;

.field public displayPriceConverted:Ljava/lang/String;

.field public displayPriceConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public displayPriceImportCharges:Ljava/lang/String;

.field public displayPriceImportChargesConverted:Ljava/lang/String;

.field public displayPriceImportChargesCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public displayPriceOriginal:Ljava/lang/String;

.field public displayPriceOriginalConverted:Ljava/lang/String;

.field private displayPriceOriginalConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field private displayPriceOriginalCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public displayPricePerUnit:Ljava/lang/String;

.field public displayPricePerUnitConverted:Ljava/lang/String;

.field public displayPricePercentOff:Ljava/lang/String;

.field public displayPriceShipping:Ljava/lang/String;

.field public displayPriceShippingConverted:Ljava/lang/String;

.field public displayPriceShippingConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public displayPriceShippingConvertedRaw:Ljava/lang/String;

.field public displayPriceShippingCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public displayPriceShippingRaw:Ljava/lang/String;

.field public displayPriceShippingTerse:Ljava/lang/String;

.field public displayShippingAmountConvertedItemCard:Ljava/lang/String;

.field public displayShippingAmountItemCard:Ljava/lang/String;

.field public displayShippingEstimatedDelivery:Landroid/text/Spannable;

.field public displayShippingEstimatedDeliveryContentDescription:Landroid/text/Spannable;

.field public displayShippingLabelItemCard:Ljava/lang/String;

.field public displayWhyToBuy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/Spannable;",
            ">;"
        }
    .end annotation
.end field

.field public doAllVariationsHaveSameDiscount:Z

.field public doVariationsHavePriceRange:Z

.field public dpiMinimumAdvertisedPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public dpiSoldOffEbay:Z

.field public dpiSoldOnEbay:Z

.field public eBayPlusOrderTodayEndTime:Ljava/util/Date;

.field public eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

.field public ebayPaymentProcessEnabled:Z

.field public embeddedMobileCheckoutEnabled:Z

.field public endItemEarlyUrl:Ljava/lang/String;

.field public final excludeShipToLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final excludeShipToRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public feedbackLeft:Z

.field public finalized:Z

.field public financing:Lcom/ebay/nautilus/domain/data/experience/type/module/SectionModule;

.field public financingBanner:Lcom/ebay/nautilus/domain/data/experience/type/module/SectionModule;

.field public financingDetailed:Lcom/ebay/nautilus/domain/data/experience/type/module/SectionModule;

.field public freightErrorMessage:Ljava/lang/String;

.field public final fullCategoryIdPath:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fullCategoryName:Ljava/lang/String;

.field public gspTermsAndConditionsUrl:Ljava/lang/String;

.field public gstImportTax:Z

.field public gstInclusivePricing:Z

.field public gstTaxRate:D

.field public guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

.field public guestWatchState:Lcom/ebay/mobile/Item$GuestWatchState;

.field public handlingTime:Lcom/ebay/nautilus/domain/data/cos/base/TimeDuration;

.field public hasReservePrice:Z

.field public hasVolumePricingModule:Z

.field public highAvailabilityMessage:Landroid/text/Spannable;

.field public highBidderUserId:Ljava/lang/String;

.field public hitCount:I

.field public holidayReturnsDate:Ljava/util/Date;

.field public hotnessEndTime:J

.field public hotnessMeanPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public hotnessMeanPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public hotnessQuantityCountLastDay:Ljava/lang/Integer;

.field public hotnessQuantityCountLastHour:Ljava/lang/Integer;

.field public hotnessQuantityCountTotal:Ljava/lang/Integer;

.field public hotnessTimeLeft:J

.field public hotnessWatchersCount:Ljava/lang/Long;

.field public iTransaction:Lcom/ebay/common/model/ItemTransaction;

.field public idForDraftSource:Ljava/lang/String;

.field public ignoreQuantity:Z

.field public importCharges:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public importChargesConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public inCart:Z

.field public inventoryInfo:Lcom/ebay/common/model/inventory/InventoryInfo;

.field public isActive:Z

.field public isAuctionEnded:Z

.field public isAutopayUnavailable:Z

.field public isAvailableForPickupAndDropoff:Z

.field public isAvailableForPickupInStore:Z

.field public isBidOnly:Z

.field public isBidWithBin:Z

.field public isBinOnly:Z

.field public isBopisable:Z

.field public isBopisableAndPurchasedViaBopis:Z

.field public isBsRestrictedToBusiness:Z

.field public isBuyable:Z

.field public isBuyerProtectionEligible:Z

.field public isCartable:Z

.field public isCounterOffer:Z

.field public isDelivered:Z

.field public isDigitalGiftCard:Z

.field public isDisplayPriceCurrencyCode:Z

.field public isEbayPlusEligible:Z

.field public isEbayPlusInWindow:Z

.field public isEbayPlusLogoShown:Z

.field public isEbayPlusMember:Z

.field public isEbayPlusV2:Z

.field public isEndItemEnabled:Z

.field public isFreightButExcluded:Z

.field public isGTC:Z

.field public isGetItByVerbiageEnabled:Z

.field public isGspItem:Z

.field public isHandlingTimeSameDayAvailable:Z

.field public isHideTimeLeft:Z

.field public isHighAvailability:Z

.field public isHighlightsEnabled:Z

.field public isHighlightsEnoughToDisplay:Z

.field public isHolidayReturns:Z

.field public isHotnessAlmostGone:Z

.field public isHotnessAutoIdentified:Z

.field public isHotnessCharity:Z

.field public isHotnessCharityAll:Z

.field public isHotnessCountdownUrgency:Z

.field public isHotnessDealTimer:Z

.field public isHotnessLastOne:Z

.field public isHotnessOverXSold:Z

.field public isHotnessQuantitySoldOneHour:Z

.field public isHotnessQuantitySoldTotal:Z

.field public isHotnessQuantitySoldTwentyFourHours:Z

.field public isHotnessTrendingHot:Z

.field public isInventoryCallFail:Z

.field public isIspuOnly:Z

.field public isListingCartable:Z

.field public isListingTypeBid:Z

.field public isListingTypeBin:Z

.field public isLiveAuction:Z

.field public isLocalOptionsOnly:Z

.field public isLocalPickup:Z

.field public isLocalPickupOnly:Z

.field public isMap:Z

.field public isMotors:Z

.field public isMultiSku:Z

.field public isMultiSkuSelectable:Z

.field public isOfferValidity:Z

.field public isOutbid:Z

.field public isPaid:Z

.field public isPartOfOrder:Z

.field public isPaymentReminderActivationTimeElaspsed:Z

.field public isPaymentsV2:Z

.field public isPreview:Z

.field public isProductReviewsAvailable:Z

.field public isProductReviewsOld:Z

.field public isPudoable:Z

.field public isPudoableAndPurchasedViaPudo:Z

.field public isRefunded:Z

.field public isReserveMet:Z

.field public isReturnsAccepted:Z

.field public isReturnsNotAccepted:Z

.field public isSalesTaxAppliedToShipping:Z

.field public isScheduled:Z

.field public isSeller:Z

.field public isSellerAcceptsPayPal:Z

.field public isSellerMerchantEbay:Z

.field public isSellerRequirePayPal:Ljava/lang/Boolean;

.field public isSellingSupported:Z

.field public isShipToFundItem:Z

.field public isShipped:Z

.field public isShippingServiceTimedOut:Z

.field public isShipsToUser:Z

.field public isShowAddToCart:Z

.field public isShowAuthenticity:Z

.field public isShowBuyAnother:Z

.field public isShowBuyItNow:Z

.field public isShowBuyingOptions:Z

.field public isShowCallSellerClassifieds:Z

.field public isShowConditionDescription:Z

.field public isShowContactSellerClassifieds:Z

.field public isShowCreateShippingLabel:Z

.field public isShowEbayCollectedTax:Z

.field public isShowEbayPlusPromo:Z

.field public isShowEndItem:Z

.field public isShowEnterTrackingNumber:Z

.field public isShowFitment:Z

.field public isShowHeartOnGallery:Z

.field public isShowHeartOnWatchButtons:Z

.field public isShowIncreaseBid:Z

.field public isShowItemCard:Z

.field public isShowItemCardSingle:Z

.field public isShowLeaveFeedback:Z

.field public isShowMakeOffer:Z

.field public isShowMarkAsPaid:Z

.field public isShowMarkAsShipped:Z

.field public isShowMarkAsUnPaid:Z

.field public isShowMarkAsUnShipped:Z

.field public isShowPayNow:Z

.field public isShowPaymentOptions:Z

.field public isShowPaymentReminder:Z

.field public isShowPlaceBid:Z

.field public isShowRelist:Z

.field public isShowReportAnItem:Z

.field public isShowReviewBid:Z

.field public isShowRevise:Z

.field public isShowSellLike:Z

.field public isShowSellSimilar:Z

.field public isShowSellerVacationNote:Z

.field public isShowShare:Z

.field public isShowShopWithConfidence:Z

.field public isShowSimilar:Z

.field public isShowStubHub:Z

.field public isShowTitleBidFlow:Z

.field public isShowTopRatedListing:Z

.field public isShowTrackPackage:Z

.field public isShowUnwatch:Z

.field public isShowViewInCart:Z

.field public isShowViewRelistedItem:Z

.field public isShowWatch:Z

.field public isSingleSkuOutOfStock:Z

.field public isSmeBuyBoxEnabled:Z

.field public isSmeOfferAvailable:Z

.field public isSmeRedTextEnabled:Z

.field public isStp:Z

.field public isStpButMarkdown:Z

.field public isTotalAmountRefunded:Z

.field public isTransacted:Z

.field public isTransactedAsBin:Z

.field public isUserConsentRequired:Z

.field public isUserHighBidder:Z

.field public isVatIncludedInPrice:Z

.field public isVehiclePurchaseProtectionEligible:Z

.field public isWorldwideShipping:Z

.field public itemCompatibiltyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/ItemCompatibilty;",
            ">;"
        }
    .end annotation
.end field

.field private final itemSpecifics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public legacyFullCategoryIdPath:Ljava/lang/String;

.field public listingDuration:Ljava/lang/String;

.field public listingEndDetail:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ListingEndDetail;

.field public listingStatus:Ljava/lang/String;

.field public listingType:Ljava/lang/String;

.field public listingVariations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;",
            ">;"
        }
    .end annotation
.end field

.field public locale:Ljava/util/Locale;

.field public location:Ljava/lang/String;

.field public lotSize:Ljava/lang/Integer;

.field public maxVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public maxVariationPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public metaCategoryId:J

.field public minVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public minVariationPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public minimumToBid:Lcom/ebay/mobile/Item$BidBounds;

.field public mskuAddOns:Lcom/ebay/mobile/addon/MskuAddOns;

.field public mskuSelections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public nectarRewards:Ljava/lang/String;

.field public offerHoursLeft:I

.field public offerMinutesLeft:I

.field public offerValidityStatusMessage:Lcom/ebay/mobile/viewitem/util/DomainStatusMessage;

.field public offers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/BestOffer;",
            ">;"
        }
    .end annotation
.end field

.field public offersReceived:I

.field public offersSent:I

.field public orderId:Ljava/lang/String;

.field public paidStatus:Ljava/lang/String;

.field public partnerRedirectWebsite:Ljava/lang/String;

.field public paymentInstructions:Ljava/lang/String;

.field public paymentMethodDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;",
            ">;"
        }
    .end annotation
.end field

.field public paymentMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public paymentMethodsLocalized:Ljava/lang/String;

.field public paymentMethodsWire:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public paymentReminderSentDate:Ljava/lang/String;

.field public paymentReminderState:Lcom/ebay/mobile/Item$PaymentReminderState;

.field public final pictureImageDataData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/image/ImageData;",
            ">;"
        }
    .end annotation
.end field

.field public final pictureUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public plusBenefits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Benefit;",
            ">;"
        }
    .end annotation
.end field

.field public powerBidValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            ">;"
        }
    .end annotation
.end field

.field public primaryCategoryId:J

.field public primaryShippingAddress:Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;

.field public privateListing:Z

.field public productDescription:Ljava/lang/String;

.field public productEnergyEfficiencyRating:Lcom/ebay/nautilus/domain/data/EnergyEfficiencyRating;

.field public productId:Ljava/lang/String;

.field public productIdType:Ljava/lang/String;

.field public productRefId:Ljava/lang/String;

.field public productReviewAverageRating:F

.field public productReviewCount:J

.field public productReviewDetailedCount:Ljava/lang/Long;

.field public productReviewSubjectReferenceId:Ljava/lang/String;

.field public productReviews:Lcom/ebay/nautilus/domain/net/api/guidesandreviews/Reviews;

.field public promotionalSaleOriginalPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public psddDiscountName:Ljava/lang/String;

.field public psddItemCount:I

.field public psddOrderAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public psddShippingCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public final purchaseOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/cos/trading/PurchaseOptionEnum;",
            ">;"
        }
    .end annotation
.end field

.field public qnaSummaryModel:Lcom/ebay/nautilus/domain/data/experience/reviews/QnaSummaryModule;

.field public qnaTitleModel:Lcom/ebay/nautilus/domain/data/experience/reviews/QnaTitleModule;

.field public quantity:I

.field public quantityAndSignalsTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

.field public quantityAvailableHint:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

.field public quantityAvailableThreshold:I

.field public quantityModule:Lcom/ebay/nautilus/domain/data/experience/viewitem/QuantityModule;

.field public quantityPurchased:I

.field public quantitySold:I

.field public quantityStringPrimary:Ljava/lang/String;

.field public quantityStringPrimaryColorId:I

.field public quantityStringSecondary:Ljava/lang/String;

.field public quantityStringSecondaryColorId:I

.field public questionAndAnswerModel:Lcom/ebay/nautilus/domain/data/experience/reviews/QnaQuestionsAndAnswersModule;

.field public relistedId:Ljava/lang/String;

.field public removePayPalDependencies:Z

.field public rpAccepted:Ljava/lang/Boolean;

.field public rpDescription:Ljava/lang/String;

.field public rpEAN:Ljava/lang/String;

.field public rpRefund:Ljava/lang/String;

.field public rpRestockingFee:Ljava/lang/String;

.field public rpReturnsAccepted:Ljava/lang/String;

.field public rpReturnsWithin:Ljava/lang/String;

.field public rpReturnsWithinTimeDuration:Lcom/ebay/nautilus/domain/data/cos/base/TimeDuration;

.field public rpShippingCostPaidBy:Ljava/lang/String;

.field public rpShippingCostPaidByEnum:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ReturnShipmentPayeeEnum;

.field public rpWarrantyDuration:Ljava/lang/String;

.field public rpWarrantyOffered:Ljava/lang/String;

.field public rpWarrantyType:Ljava/lang/String;

.field public salesTaxPercent:Ljava/lang/String;

.field public sameDayCutOffTime:Ljava/util/Date;

.field public secondChanceOriginalItemId:Ljava/lang/String;

.field public secondaryCategoryId:J

.field public sellerAvatarUrl:Ljava/lang/String;

.field public sellerFeedbackRatingStar:Ljava/lang/String;

.field public sellerFeedbackScore:Ljava/lang/Integer;

.field public sellerPositiveFeedbackPercent:Ljava/lang/Float;

.field public sellerPrimaryPhone:Ljava/lang/String;

.field public sellerSecondaryPhone:Ljava/lang/String;

.field public sellerSpecifiedAspect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$RankedSellerAspect;",
            ">;"
        }
    .end annotation
.end field

.field public sellerUserId:Ljava/lang/String;

.field public sellerVacationNote:Ljava/lang/String;

.field public final shipToLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final shipToRegions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public shippingCostsPostalCode:Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

.field public shippingDiscountDesc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/cos/base/Text;",
            ">;"
        }
    .end annotation
.end field

.field public shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

.field public shippingInfoUpdated:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

.field public shippingType:Ljava/lang/String;

.field public shortDescription:Ljava/lang/String;

.field public showCouponsInBuyBox:Z

.field public showCtbSmeDiscount:Z

.field public sioHeaderInfo:Lcom/ebay/mobile/transaction/bestoffer/utility/SioListingModel;

.field public site:Ljava/lang/String;

.field public sku:Ljava/lang/String;

.field public sme:Lcom/ebay/nautilus/domain/data/experience/viewitem/SellerMarketingEngineModule;

.field public smeOfferId:Ljava/lang/String;

.field public smeOfferMsg:Ljava/lang/String;

.field public smeOfferType:Ljava/lang/String;

.field public smeSellerName:Ljava/lang/String;

.field public startDate:Ljava/util/Date;

.field public startPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public storesWithItem:I

.field public stpSavingsWasLabel:Ljava/lang/String;

.field public subTitle:Lcom/ebay/nautilus/domain/data/cos/base/Text;

.field public swc:Lcom/ebay/nautilus/domain/data/experience/type/module/SectionModule;

.field public taxExclusivePrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public thumbnailImage:Ljava/net/URL;

.field public timeLeft:Lcom/ebay/nautilus/domain/Duration;

.field public topRatedListing:Z

.field public topRatedSeller:Z

.field public tracking:Lcom/ebay/nautilus/domain/data/ShipmentTracking;

.field public trackingUtil:Lcom/ebay/mobile/viewitem/util/ItemTrackingUtil;

.field public urgencySignal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;

.field public urgencySignalString:Ljava/lang/String;

.field public useBestOfferExperienceService:Z

.field public useItemDescriptionNewDesign:Z

.field public useManageOffersExperienceService:Z

.field public user:Ljava/lang/String;

.field public userToListingRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;

.field public validateModuleType:Ljava/lang/String;

.field public variationIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public variationPictureSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/VariationPictureSet;",
            ">;"
        }
    .end annotation
.end field

.field public variationPicturesSpecificName:Ljava/lang/String;

.field public final variationSpecifics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation
.end field

.field public variations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/Variation;",
            ">;"
        }
    .end annotation
.end field

.field public vehicleHistoryReportSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$VehicleHistoryReportSummary;

.field public vehiclePriceAnalysis:Lcom/ebay/mobile/verticals/viewitem/VehiclePriceAnalysis;

.field public version:Ljava/lang/String;

.field public viewListingExperienceModule:Lcom/ebay/nautilus/domain/data/experience/viewitem/ViewListingExperienceModule;

.field public vin:Ljava/lang/String;

.field public vlsResponseTrackingCorrelationId:Ljava/lang/String;

.field public vlsResponseTrackingData:Ljava/lang/String;

.field public volumePricingModule:Lcom/ebay/nautilus/domain/data/experience/viewitem/VolumePricingModule;

.field public watchCount:I

.field public watchHeartModule:Lcom/ebay/nautilus/domain/data/experience/viewitem/WatchHeartModule;

.field public watched:Z

.field public whyToBuySignals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;",
            ">;"
        }
    .end annotation
.end field

.field public whyToBuyTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

.field public xpTrackingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/base/XpTracking;",
            ">;"
        }
    .end annotation
.end field

.field public year:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 128
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Item"

    const-string v2, "Items"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 193
    invoke-static {}, Lcom/ebay/mobile/Item;->setupShippingRegions()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/data/BaseItem;-><init>()V

    const-wide/16 v0, -0x1

    .line 202
    iput-wide v0, p0, Lcom/ebay/mobile/Item;->metaCategoryId:J

    .line 203
    iput-wide v0, p0, Lcom/ebay/mobile/Item;->primaryCategoryId:J

    .line 205
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/ebay/mobile/Item;->fullCategoryIdPath:Ljava/util/List;

    .line 213
    iput-wide v0, p0, Lcom/ebay/mobile/Item;->secondaryCategoryId:J

    const-string v0, "NotSpecified"

    .line 236
    iput-object v0, p0, Lcom/ebay/mobile/Item;->shippingType:Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->shipToRegions:Ljava/util/List;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToRegions:Ljava/util/List;

    .line 251
    new-instance v0, Lcom/ebay/mobile/Item$BidBounds;

    invoke-direct {v0}, Lcom/ebay/mobile/Item$BidBounds;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->minimumToBid:Lcom/ebay/mobile/Item$BidBounds;

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lcom/ebay/mobile/Item;->isReserveMet:Z

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->variationIds:Ljava/util/ArrayList;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->itemSpecifics:Ljava/util/ArrayList;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->variationPictureSets:Ljava/util/ArrayList;

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->variationSpecifics:Ljava/util/ArrayList;

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->paymentMethods:Ljava/util/ArrayList;

    .line 291
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->paymentMethodsWire:Ljava/util/ArrayList;

    .line 293
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->pictureUrls:Ljava/util/ArrayList;

    .line 294
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->pictureImageDataData:Ljava/util/List;

    .line 297
    iput-boolean v0, p0, Lcom/ebay/mobile/Item;->embeddedMobileCheckoutEnabled:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    .line 413
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->itemCompatibiltyList:Ljava/util/List;

    .line 462
    sget-object v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;->NONE:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->quantityAvailableHint:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

    const/16 v0, 0xa

    .line 463
    iput v0, p0, Lcom/ebay/mobile/Item;->quantityAvailableThreshold:I

    .line 480
    new-instance v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    invoke-direct {v0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    const/4 v0, -0x1

    .line 503
    iput v0, p0, Lcom/ebay/mobile/Item;->storesWithItem:I

    .line 590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->mskuSelections:Ljava/util/ArrayList;

    .line 900
    sget-object v0, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_DISABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->paymentReminderState:Lcom/ebay/mobile/Item$PaymentReminderState;

    const-string v0, ""

    .line 905
    iput-object v0, p0, Lcom/ebay/mobile/Item;->paymentReminderSentDate:Ljava/lang/String;

    .line 1019
    new-instance v0, Lcom/ebay/mobile/viewitem/util/ItemTrackingUtil;

    invoke-direct {v0}, Lcom/ebay/mobile/viewitem/util/ItemTrackingUtil;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->trackingUtil:Lcom/ebay/mobile/viewitem/util/ItemTrackingUtil;

    .line 1076
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->purchaseOptions:Ljava/util/List;

    .line 1104
    sget-object v0, Lcom/ebay/mobile/Item$GuestWatchState;->NOT_INITIALIZED:Lcom/ebay/mobile/Item$GuestWatchState;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->guestWatchState:Lcom/ebay/mobile/Item$GuestWatchState;

    return-void
.end method

.method private buildConvertedRangePrice(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V
    .locals 4

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 3720
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result v0

    const v1, 0x7f120788

    const/4 v2, 0x2

    .line 3721
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3722
    invoke-static {p2, v0}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 3723
    invoke-static {p3, v0}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, p2

    .line 3721
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceConverted:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static clearNotSelectedStrings(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4328
    sput-object v0, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    .line 4329
    invoke-static {p0}, Lcom/ebay/mobile/Item;->getNotSelectedStrings(Landroid/content/Context;)[Ljava/lang/String;

    return-void
.end method

.method public static convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    const/4 v0, 0x0

    .line 2244
    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/common/model/currency/CurrencyConversionRate;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    return-object p0
.end method

.method public static convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/common/model/currency/CurrencyConversionRate;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 0

    if-eqz p1, :cond_0

    .line 2361
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/Item;->getCachedCurrencyPrice(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/common/model/currency/CurrencyConversionRate;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static convertDepositAmountToString(Lcom/ebay/mobile/Item;)Ljava/lang/String;
    .locals 3

    const-string v0, "Deposit amount"

    .line 2140
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->getItemSpecficByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2141
    invoke-static {v0}, Lcom/ebay/mobile/util/Util;->makeCommaDelimitedString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2144
    new-instance v1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2145
    invoke-static {v1, v0}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/CurrencyAmount;I)Ljava/lang/String;

    move-result-object v0

    .line 2148
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/Item;->depositAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_0
    return-object v0
.end method

.method public static getApproximateString(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Landroid/text/SpannableStringBuilder;
    .locals 5

    .line 4205
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const v1, 0x7f120242

    const/4 v2, 0x1

    .line 4209
    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4210
    invoke-static {p1, v2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 4209
    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    return-object v0
.end method

.method private getBinPriceString(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Ljava/util/List;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/kernel/content/EbayContext;",
            "Lcom/ebay/mobile/viewitem/ViewItemViewData;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3851
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 3853
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    const/4 v6, 0x0

    if-nez v0, :cond_3

    .line 3855
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_0

    .line 3857
    iget-object v0, p0, Lcom/ebay/mobile/Item;->mskuSelections:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->getMinVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    .line 3858
    iget-object v2, p0, Lcom/ebay/mobile/Item;->mskuSelections:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/ebay/mobile/Item;->getMaxVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v2

    goto :goto_1

    .line 3860
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isListingTypeBin:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isBidWithBin:Z

    if-eqz v0, :cond_3

    .line 3861
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :goto_0
    move-object v2, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    move-object v2, v0

    :goto_1
    const/4 v3, 0x1

    if-eqz v2, :cond_6

    .line 3864
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    .line 3884
    :cond_4
    new-instance p1, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    invoke-direct {p1, v1, p0, v0, v2}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;-><init>(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3885
    invoke-virtual {p1, v3}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->setLineBreak(Z)Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    .line 3887
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 3890
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3892
    invoke-static {v1}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f120146

    .line 3894
    invoke-virtual {p1, v0}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->setMinMaxStringId(I)Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    .line 3895
    invoke-virtual {p1}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 3897
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_5
    move-object p2, v6

    goto :goto_5

    .line 3867
    :cond_6
    :goto_2
    new-instance v2, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    invoke-direct {v2, v1, p0, v0}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;-><init>(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3868
    invoke-virtual {v2, v3}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->setLineBreak(Z)Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    .line 3870
    invoke-virtual {v2}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 3871
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 3874
    iget-object v0, p0, Lcom/ebay/mobile/Item;->promotionalSaleOriginalPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_8

    .line 3875
    iget-object v0, p0, Lcom/ebay/mobile/Item;->promotionalSaleOriginalPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v3

    iget-object v4, p0, Lcom/ebay/mobile/Item;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz p1, :cond_7

    iget-object p1, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    move-object v5, p1

    goto :goto_3

    :cond_7
    move-object v5, v6

    :goto_3
    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/mobile/Item;->setupDisplayPercentOff(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V

    .line 3878
    :cond_8
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_9
    move-object p1, v6

    :goto_4
    move-object p2, p1

    .line 3902
    :cond_a
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_b

    .line 3905
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v6, :cond_c

    .line 3907
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object p1
.end method

.method public static getCachedCurrencyPrice(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/common/model/currency/CurrencyConversionRate;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 2477
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/ebay/common/CurrencyConversionCache;->getConversionRate(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p2

    :cond_0
    if-eqz p2, :cond_1

    .line 2479
    iget-boolean p0, p2, Lcom/ebay/common/model/currency/CurrencyConversionRate;->isExchangeRateAvailable:Z

    if-eqz p0, :cond_1

    .line 2481
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    .line 2483
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-direct {v0, p1, p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    iget-object p0, p2, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->multiplyBy(Ljava/math/BigDecimal;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p0

    .line 2485
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCurrencyGstAware(Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4185
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->gstImportTax:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ebay/mobile/Item;->gstTaxRate:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 4186
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->includeGstInPrices:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4188
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 4189
    new-instance p1, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lcom/ebay/mobile/Item;->gstTaxRate:D

    invoke-direct {p1, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->multiplyBy(Ljava/math/BigDecimal;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p0

    .line 4190
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getCurrencyUtilFlag(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3751
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-nez v1, :cond_2

    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->CA:Lcom/ebay/nautilus/domain/EbaySite;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbaySite;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/ebay/nautilus/domain/EbaySite;->AU:Lcom/ebay/nautilus/domain/EbaySite;

    .line 3752
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbaySite;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :cond_2
    :goto_0
    return v0
.end method

.method private getCurrentPrice(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    .line 3787
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v0, :cond_1

    .line 3790
    iget-object p1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object p1, p1, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p1, :cond_0

    .line 3792
    new-instance p1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object p2, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object p2, p2, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p1, p2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3793
    iget-object p2, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget p2, p2, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->multiplyBy(I)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p1

    .line 3795
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 3801
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getCurrentPriceString(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Ljava/lang/String;
    .locals 2

    .line 3919
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3920
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v1, :cond_0

    .line 3922
    invoke-direct {p0}, Lcom/ebay/mobile/Item;->getTransactionPriceString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3927
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    .line 3929
    new-instance p2, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    invoke-direct {p2, v0, p0, p1}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;-><init>(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    const/4 p1, 0x1

    .line 3930
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->setLineBreak(Z)Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    .line 3932
    invoke-virtual {p2}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3933
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static getItemGuestWatchedState(I)Lcom/ebay/mobile/Item$GuestWatchState;
    .locals 5

    .line 1140
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 1141
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Guest watches remaining "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 1152
    sget-object p0, Lcom/ebay/mobile/Item$GuestWatchState;->WATCHES_REMAINING:Lcom/ebay/mobile/Item$GuestWatchState;

    return-object p0

    .line 1150
    :pswitch_0
    sget-object p0, Lcom/ebay/mobile/Item$GuestWatchState;->CAPACITY_REACHED:Lcom/ebay/mobile/Item$GuestWatchState;

    return-object p0

    .line 1148
    :pswitch_1
    sget-object p0, Lcom/ebay/mobile/Item$GuestWatchState;->NOT_INITIALIZED:Lcom/ebay/mobile/Item$GuestWatchState;

    return-object p0

    .line 1146
    :pswitch_2
    sget-object p0, Lcom/ebay/mobile/Item$GuestWatchState;->NO_CAPACITY_ADD_ERROR:Lcom/ebay/mobile/Item$GuestWatchState;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getLocation(Lcom/ebay/nautilus/domain/data/cos/base/Region;)Ljava/lang/String;
    .locals 4

    .line 4377
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionName:Ljava/lang/String;

    .line 4378
    sget-object v1, Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;->COUNTRY:Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionType:Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionId:Ljava/lang/String;

    .line 4379
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4380
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionId:Ljava/lang/String;

    .line 4382
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VLS Item Mapper"

    .line 4383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No region name regionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";regionName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";regionType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionType:Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private getMutable(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/ImmutableNameValue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4590
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4591
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/ImmutableNameValue;

    .line 4592
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ImmutableNameValue;->getMutable()Lcom/ebay/nautilus/domain/data/NameValue;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getNotSelectedStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 3

    .line 4314
    sget-object v0, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x4

    .line 4316
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f1203da

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x7f120c1a

    .line 4317
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f120817

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    sput-object v0, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    .line 4320
    :cond_1
    sget-object p0, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    return-object p0
.end method

.method public static getObfuscatedQuantityAvailable(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/common/ConstantsCommon$ItemKind;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/mobile/Item;",
            "Lcom/ebay/common/ConstantsCommon$ItemKind;",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 4402
    invoke-virtual {p1, p3}, Lcom/ebay/mobile/Item;->getQuantityAvailable(Ljava/util/ArrayList;)I

    move-result p2

    .line 4403
    iget-boolean p3, p1, Lcom/ebay/mobile/Item;->isSeller:Z

    if-nez p3, :cond_2

    .line 4405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 4408
    iget-object v0, p1, Lcom/ebay/mobile/Item;->quantityAvailableHint:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

    sget-object v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;->MORE_THAN:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/ebay/mobile/Item;->quantityAvailableThreshold:I

    if-le p2, v0, :cond_0

    const p0, 0x7f100058

    .line 4409
    iget p2, p1, Lcom/ebay/mobile/Item;->quantityAvailableThreshold:I

    new-array v0, v3, [Ljava/lang/Object;

    iget p1, p1, Lcom/ebay/mobile/Item;->quantityAvailableThreshold:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p3, p0, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4410
    :cond_0
    iget-object p1, p1, Lcom/ebay/mobile/Item;->quantityAvailableHint:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

    sget-object v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;->LIMITED:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$QuantityAvailableHint;

    if-ne p1, v0, :cond_1

    const p1, 0x7f120650

    .line 4411
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p0, 0x7f10005a

    .line 4413
    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-virtual {p3, p0, p2, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4416
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getPaidStatus(Lcom/ebay/mobile/Item;)Lcom/ebay/mobile/Item$PaidStatus;
    .locals 3

    .line 2195
    sget-object v0, Lcom/ebay/mobile/Item$PaidStatus;->UNKNOWN:Lcom/ebay/mobile/Item$PaidStatus;

    .line 2196
    iget-object v1, p0, Lcom/ebay/mobile/Item;->paidStatus:Ljava/lang/String;

    .line 2198
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz v2, :cond_0

    .line 2199
    iget-object p0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v1, p0, Lcom/ebay/common/model/ItemTransaction;->completeStatus:Ljava/lang/String;

    :cond_0
    const-string p0, "Complete"

    .line 2201
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "MarkedAsPaid"

    .line 2202
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "Paid"

    .line 2203
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "PaidCOD"

    .line 2204
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "PaidWithEscrow"

    .line 2205
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "PaidWithPayPal"

    .line 2206
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    const-string p0, "Incomplete"

    .line 2211
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "BuyerHasNotCompletedCheckout"

    .line 2212
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "EscrowPaymentCancelled"

    .line 2213
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "NotPaid"

    .line 2214
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, "Pending"

    .line 2219
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "PaymentPending"

    .line 2220
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "PaymentPendingWithEscrow"

    .line 2221
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "PaymentPendingWithPayPal"

    .line 2222
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "WaitingForCODPayment"

    .line 2223
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const-string p0, "Refunded"

    .line 2228
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 2231
    sget-object v0, Lcom/ebay/mobile/Item$PaidStatus;->REFUNDED:Lcom/ebay/mobile/Item$PaidStatus;

    goto :goto_3

    .line 2226
    :cond_4
    :goto_0
    sget-object v0, Lcom/ebay/mobile/Item$PaidStatus;->PENDING:Lcom/ebay/mobile/Item$PaidStatus;

    goto :goto_3

    .line 2217
    :cond_5
    :goto_1
    sget-object v0, Lcom/ebay/mobile/Item$PaidStatus;->NOT_PAID:Lcom/ebay/mobile/Item$PaidStatus;

    goto :goto_3

    .line 2209
    :cond_6
    :goto_2
    sget-object v0, Lcom/ebay/mobile/Item$PaidStatus;->PAID:Lcom/ebay/mobile/Item$PaidStatus;

    :cond_7
    :goto_3
    return-object v0
.end method

.method public static getSavingsPercentString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .line 2022
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 2025
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    const v0, 0x7f121062

    .line 2035
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2036
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 2035
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const v0, 0x7f121063

    .line 2031
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    .line 2032
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    .line 2031
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getShipping(Lcom/ebay/mobile/Item;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 2

    .line 4154
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isLocalPickupOnly:Z

    if-nez v0, :cond_1

    .line 4156
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget v0, v0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_0

    .line 4160
    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p0, v0}, Lcom/ebay/mobile/Item;->getCurrencyGstAware(Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    goto :goto_0

    .line 4161
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1

    .line 4164
    iget-object p0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object p0, p0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 4167
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getShippingString(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;
    .locals 5

    .line 4078
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 4079
    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->isLiveAuction:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->buyerResponsibleForLogistics:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->VI_feature_liveAuctionsShipping:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 4082
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4087
    iget-boolean v3, p1, Lcom/ebay/mobile/Item;->isLocalPickupOnly:Z

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v3, v3, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v4, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v4, v4, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v3, v4}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 4088
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    const p1, 0x7f120084

    .line 4090
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4091
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4093
    :cond_1
    iget-object v3, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v3, v3, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/ebay/mobile/dcs/Dcs$App$B;->guaranteedDelivery:Lcom/ebay/mobile/dcs/Dcs$App$B;

    .line 4094
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4095
    iget-object v0, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_2
    if-nez v2, :cond_3

    .line 4099
    iget-object v0, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_3

    .line 4101
    iget-object v0, p1, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v2, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_3
    if-eqz v2, :cond_7

    .line 4106
    iget-boolean v0, p1, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget v0, v0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    const/4 v3, 0x1

    if-le v0, v3, :cond_4

    iget-object v0, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_4

    .line 4109
    iget-object v0, p1, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->getCurrencyGstAware(Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v2

    .line 4112
    :cond_4
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4114
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getShipToPostalCode()Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    move-result-object v0

    .line 4115
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->postalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4117
    :cond_5
    invoke-virtual {p1}, Lcom/ebay/mobile/Item;->isFreightFirstShippingOption()Z

    move-result p1

    if-nez p1, :cond_8

    const p1, 0x7f12052e

    .line 4120
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 4126
    :cond_6
    iput-object v2, p1, Lcom/ebay/mobile/Item;->displayPriceShippingCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 4128
    new-instance v0, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;

    invoke-direct {v0, p0, p1, v2}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;-><init>(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 4129
    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/DisplayPriceBuilder;->build()Landroid/text/SpannableStringBuilder;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 4132
    :cond_7
    invoke-virtual {p1}, Lcom/ebay/mobile/Item;->isFreightFirstShippingOption()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4135
    iget-boolean p1, p1, Lcom/ebay/mobile/Item;->isSeller:Z

    if-nez p1, :cond_8

    const p1, 0x7f120279

    .line 4136
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4139
    :cond_8
    :goto_0
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTransactionPrice(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    .line 3766
    iget-object p1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object p1, p1, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p1, :cond_0

    .line 3768
    new-instance p1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3769
    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget v0, v0, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->multiplyBy(I)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p1

    .line 3770
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ebay/mobile/Item;->getCurrencyGstAware(Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getTransactionPriceString()Ljava/lang/String;
    .locals 4

    .line 3816
    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3819
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3820
    new-instance v2, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v3, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v3, v3, Lcom/ebay/common/model/ItemTransaction;->transactionPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3821
    iget-object v3, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget v3, v3, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->multiplyBy(I)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object v2

    .line 3823
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toItemCurrency()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/ebay/mobile/Item;->getCurrencyGstAware(Lcom/ebay/mobile/Item;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v2

    .line 3826
    iget-boolean v3, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    invoke-static {v2, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3829
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method private getUnitPriceString(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Ljava/lang/String;
    .locals 6

    .line 3654
    iget-object v0, p0, Lcom/ebay/mobile/Item;->unitPriceType:Ljava/lang/String;

    .line 3655
    iget-object v1, p0, Lcom/ebay/mobile/Item;->unitPriceQuantity:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/Item;->getUnitQuantity(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 3656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 3661
    :try_start_0
    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 3662
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v2, v3, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Ljava/lang/String;DI)Ljava/lang/String;

    move-result-object p1

    .line 3665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3669
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "computeDisplayPrice, showUnitPrice exception"

    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->logAsError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getUnitQuantity(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    const-wide/16 v0, 0x0

    .line 4266
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 4269
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4270
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    :catch_0
    :cond_0
    return-object v0
.end method

.method private getVariationPosition(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 2402
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2405
    iget-object v1, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, -0x1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/Variation;

    add-int/lit8 v2, v2, 0x1

    .line 2408
    invoke-virtual {v3, p1}, Lcom/ebay/nautilus/domain/data/Variation;->isMatch(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    :cond_1
    return v0
.end method

.method private getVariationQuantityAvailable(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)I"
        }
    .end annotation

    .line 2388
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPosition(Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2389
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/Variation;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/Variation;->getQuantity()I

    move-result v0

    iget-object v1, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Variation;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Variation;->getQuantitySold()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private isCountryExcludedViaRegion(Ljava/lang/String;)Z
    .locals 5

    .line 2430
    iget-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2432
    sget-object v3, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 2441
    iget-object v1, p0, Lcom/ebay/mobile/Item;->excludeShipToRegions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2443
    sget-object v4, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private isEndTimeLessThanXHours(I)Z
    .locals 6

    .line 4909
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getAuctionTimeRemainingMs()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isQuantityDisplayStringInRed(Lcom/ebay/mobile/Item;)Z
    .locals 1

    .line 3325
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHotnessLastOne:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHotnessCountdownUrgency:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/ebay/mobile/Item;->isHotnessAlmostGone:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSavings(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z
    .locals 3

    .line 2004
    iget-object v0, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2006
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 2007
    new-instance v2, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v2, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 2008
    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareTo(Lcom/ebay/nautilus/domain/data/CurrencyAmount;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isValidBid(Lcom/ebay/mobile/Item;D)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 2164
    iget-object v1, p0, Lcom/ebay/mobile/Item;->minimumToBid:Lcom/ebay/mobile/Item$BidBounds;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ebay/mobile/Item;->minimumToBid:Lcom/ebay/mobile/Item$BidBounds;

    iget-object v1, v1, Lcom/ebay/mobile/Item$BidBounds;->lowerBound:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    if-eqz v1, :cond_2

    .line 2166
    iget-object v1, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(DLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 2170
    iget-object p1, p0, Lcom/ebay/mobile/Item;->minimumToBid:Lcom/ebay/mobile/Item$BidBounds;

    iget-object p1, p1, Lcom/ebay/mobile/Item$BidBounds;->lowerBound:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareTo(Lcom/ebay/nautilus/domain/data/CurrencyAmount;)I

    move-result p1

    .line 2171
    iget-object p0, p0, Lcom/ebay/mobile/Item;->minimumToBid:Lcom/ebay/mobile/Item$BidBounds;

    iget-boolean p0, p0, Lcom/ebay/mobile/Item$BidBounds;->allowLowerBound:Z

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    if-ltz p1, :cond_2

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    return v0
.end method

.method private static modifyShippingPriceStringAccretive(Landroid/content/Context;Lcom/ebay/mobile/Item;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3686
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3688
    invoke-virtual {p1}, Lcom/ebay/mobile/Item;->isFreightFirstShippingOption()Z

    move-result p1

    const v0, 0x7f120955

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const p1, 0x7f120279

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f12052d

    .line 3693
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f1206c5

    .line 3696
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3697
    new-array p2, v2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const p1, 0x7f120954

    .line 3702
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 3691
    :cond_2
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    aput-object p2, p1, v1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_3
    :goto_1
    return-object p2
.end method

.method private setColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 6
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2809
    invoke-virtual {p2, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2810
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v0

    .line 2811
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2813
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    sget-object v3, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->egdRebranding:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v2, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    const/16 v3, 0x21

    if-eqz v2, :cond_0

    .line 2815
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const v4, 0x7f04015a

    const v5, 0x7f0600de

    invoke-static {p1, v4, v5}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p1

    invoke-direct {v2, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 p1, 0x0

    .line 2816
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .line 2815
    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2817
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1, p1, v0, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2819
    :cond_0
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1, p1, v0, p3, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private setupBuyerResponsibleForLogisticsString(Landroid/content/Context;)V
    .locals 2

    .line 3334
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->buyerResponsibleForLogistics:Z

    if-eqz v0, :cond_1

    .line 3336
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isLiveAuction:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->VI_feature_liveAuctionsShipping:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1203c3

    .line 3337
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayBuyerResponsibleForLogistics:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v0, 0x7f1210e9

    .line 3339
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayBuyerResponsibleForLogistics:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3343
    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayBuyerResponsibleForLogistics:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setupEbayPlusItemCardWording(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z
    .locals 11

    .line 3527
    iget-object v0, p0, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3530
    :cond_0
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object v0

    .line 3531
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->estimatedDeliveryMinTime:Ljava/util/Date;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/ebay/mobile/util/Util;->getDeliveryDateString(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v2

    .line 3532
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->estimatedDeliveryMaxTime:Ljava/util/Date;

    invoke-static {p1, v3, v4}, Lcom/ebay/mobile/util/Util;->getDeliveryDateString(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p1

    .line 3534
    iget-object v3, p0, Lcom/ebay/mobile/Item;->eBayPlusOrderTodayEndTime:Ljava/util/Date;

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ebay/mobile/Item;->eBayPlusOrderTodayEndTime:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    goto :goto_0

    :cond_1
    move-wide v7, v5

    :goto_0
    cmp-long v3, v7, v5

    if-lez v3, :cond_2

    const-wide/32 v5, 0x5265c00

    cmp-long v5, v7, v5

    if-gez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 3542
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_3

    .line 3544
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x2

    if-nez v6, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    if-lez v3, :cond_5

    .line 3546
    iget-boolean v3, p0, Lcom/ebay/mobile/Item;->isEbayPlusInWindow:Z

    if-nez v3, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    const v3, 0x7f120422

    .line 3547
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object p1, v5, v4

    const-string v6, "%s"

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ebay/mobile/Item;->displayEbayPlusItemCardWithEndTime:Ljava/lang/String;

    :cond_5
    const v3, 0x7f120424

    .line 3552
    invoke-interface {v0, v3}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayEbayPlusItemCard:Ljava/lang/String;

    goto :goto_2

    .line 3556
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    move-object p1, v2

    :cond_7
    if-lez v3, :cond_9

    .line 3558
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isEbayPlusInWindow:Z

    if-nez v2, :cond_8

    if-eqz v5, :cond_9

    :cond_8
    const v2, 0x7f120423

    .line 3559
    invoke-interface {v0, v2}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v1

    const-string v5, "%s"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ebay/mobile/Item;->displayEbayPlusItemCardWithEndTime:Ljava/lang/String;

    :cond_9
    const v2, 0x7f120425

    .line 3564
    invoke-interface {v0, v2}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayEbayPlusItemCard:Ljava/lang/String;

    :goto_2
    const/4 v1, 0x1

    :goto_3
    return v1
.end method

.method private setupEbayPlusNonMember(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/Item;)V
    .locals 9

    .line 3577
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object v0

    .line 3578
    iget-boolean v1, p2, Lcom/ebay/mobile/Item;->isShowEbayPlusPromo:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 3580
    iget-object v1, p0, Lcom/ebay/mobile/Item;->eBayPlusOrderTodayEndTime:Ljava/util/Date;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/Item;->eBayPlusOrderTodayEndTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const/4 v1, 0x1

    cmp-long v3, v5, v3

    if-lez v3, :cond_1

    const-wide/32 v3, 0x5265c00

    cmp-long v3, v5, v3

    if-gez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 3583
    :goto_1
    iget-object v4, p0, Lcom/ebay/mobile/Item;->eBayPlusOrderTodayEndTime:Ljava/util/Date;

    if-eqz v4, :cond_2

    .line 3585
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 3586
    iget-object v5, p0, Lcom/ebay/mobile/Item;->eBayPlusOrderTodayEndTime:Ljava/util/Date;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3588
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x5

    .line 3589
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 3592
    :goto_2
    iget-object v5, p2, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    if-eqz v5, :cond_7

    iget-object v5, p2, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-boolean v5, v5, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->isHandlingTimeSameDayAvailable:Z

    if-nez v5, :cond_3

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 3595
    :cond_3
    iget-object v3, p2, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->sameDayCutOff:Ljava/util/Date;

    if-eqz v3, :cond_4

    .line 3596
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p2, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->sameDayCutOff:Ljava/util/Date;

    invoke-static {v3, v4}, Lcom/ebay/mobile/util/Util;->getFormattedTimeStringFromDate(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    .line 3599
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3601
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->estimatedDeliveryMinTime:Ljava/util/Date;

    invoke-static {v4, v5, v1}, Lcom/ebay/mobile/util/Util;->getDeliveryDateString(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v4

    .line 3602
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v5, p2, Lcom/ebay/mobile/Item;->eBayPlusShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    iget-object v5, v5, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->estimatedDeliveryMaxTime:Ljava/util/Date;

    invoke-static {p1, v5, v1}, Lcom/ebay/mobile/util/Util;->getDeliveryDateString(Landroid/content/Context;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p1

    .line 3603
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v1

    .line 3604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v1

    const/4 v7, 0x2

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    .line 3605
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const v5, 0x7f12042c

    .line 3608
    invoke-interface {v0, v5}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    aput-object p1, v6, v1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/mobile/Item;->displayEbayPlusSignupDescription:Ljava/lang/String;

    goto :goto_4

    :cond_5
    const v6, 0x7f12042b

    .line 3611
    invoke-interface {v0, v6}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/Object;

    if-eqz v5, :cond_6

    move-object p1, v4

    :cond_6
    aput-object p1, v7, v2

    aput-object v3, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/mobile/Item;->displayEbayPlusSignupDescription:Ljava/lang/String;

    .line 3616
    :cond_7
    :goto_4
    iget-object p1, p2, Lcom/ebay/mobile/Item;->displayEbayPlusSignupDescription:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    const p1, 0x7f12042d

    .line 3617
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/mobile/Item;->displayEbayPlusSignupDescription:Ljava/lang/String;

    .line 3620
    :cond_8
    iput-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusLogoShown:Z

    .line 3623
    :cond_9
    iput-boolean v2, p2, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    return-void
.end method

.method private setupGuaranteedByStrings(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 7

    .line 2774
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getSelectedShippingOption()Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    move-result-object v0

    .line 2775
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 2776
    iget-boolean v1, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->isGuaranteed:Z

    if-eqz v1, :cond_1

    .line 2778
    iget-object v4, v0, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->estimatedDeliveryMaxTime:Ljava/util/Date;

    if-eqz v4, :cond_1

    .line 2783
    iget-object v1, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    if-nez v1, :cond_0

    .line 2784
    new-instance v1, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    invoke-direct {v1}, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    .line 2786
    :cond_0
    iget-object v3, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    iget-object v5, p0, Lcom/ebay/mobile/Item;->sameDayCutOffTime:Ljava/util/Date;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/ebay/mobile/Item;->setupGuaranteedStrings(Landroid/content/Context;Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;Ljava/util/Date;Ljava/util/Date;Z)V

    .line 2791
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    if-nez v1, :cond_2

    .line 2792
    new-instance v1, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    invoke-direct {v1}, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;-><init>()V

    iput-object v1, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    .line 2794
    :cond_2
    iget-object v1, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    invoke-direct {p0, p1, v1, v0}, Lcom/ebay/mobile/Item;->setupGuaranteedDeliveryUpsellStrings(Landroid/content/Context;Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V

    return-void
.end method

.method private setupGuaranteedDeliveryUpsellStrings(Landroid/content/Context;Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;)V
    .locals 7
    .param p3    # Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    .line 2895
    iget v0, p3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingTimeMax:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shipToHomeOptions:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2901
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shipToHomeOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    .line 2903
    iget-boolean v5, v4, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->isGuaranteed:Z

    if-eqz v5, :cond_0

    if-eqz v3, :cond_1

    iget v5, v4, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingTimeMax:I

    iget v6, v3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingTimeMax:I

    if-ge v5, v6, :cond_0

    :cond_1
    move-object v3, v4

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    if-eq v3, p3, :cond_3

    .line 2909
    new-instance p3, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    iget-object v0, v3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->estimatedDeliveryMaxTime:Ljava/util/Date;

    invoke-direct {p3, p1, v0, v2}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)V

    .line 2911
    invoke-virtual {p3, v1}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setReturnJustDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    const/4 v0, 0x0

    .line 2912
    invoke-virtual {p3, v0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setIncludeDayOfWeek(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2913
    invoke-virtual {p3, v0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setBoldDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2915
    new-instance v2, Landroid/text/SpannableString;

    const v4, 0x7f1207e8

    new-array v1, v1, [Ljava/lang/Object;

    .line 2917
    invoke-virtual {p3}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->build()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v0

    .line 2916
    invoke-virtual {p1, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v2, p2, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;->displayGuaranteedByUpsellMessage:Landroid/text/Spannable;

    .line 2919
    iget p1, v3, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingTimeMax:I

    .line 2920
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;->displayGuaranteedByUpsellMessageTracking:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private setupHotnessCharityString(Landroid/content/Context;)V
    .locals 4

    .line 3353
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHotnessCharity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v2, Lcom/ebay/mobile/dcs/DcsBoolean;->VI_feature_hotnessCharitySignal:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v2}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->charity:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->charity:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;->name:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->toSpannable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f120326

    .line 3355
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayHotnessCharityKeyString:Ljava/lang/String;

    .line 3357
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHotnessCharityAll:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f1205b0

    .line 3359
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->charity:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;->name:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->toSpannable()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3358
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayHotnessCharityValueString:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v0, 0x7f1205af

    .line 3361
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ebay/mobile/Item;->charity:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;->donationPercentage:Ljava/lang/Double;

    .line 3362
    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/ebay/mobile/Item;->charity:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$CharityTerms;->name:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    .line 3363
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/cos/base/Text;->toSpannable()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 3361
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayHotnessCharityValueString:Ljava/lang/String;

    goto :goto_0

    .line 3368
    :cond_1
    iput-boolean v1, p0, Lcom/ebay/mobile/Item;->isHotnessCharity:Z

    const/4 p1, 0x0

    .line 3369
    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayHotnessCharityValueString:Ljava/lang/String;

    .line 3370
    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayHotnessCharityKeyString:Ljava/lang/String;

    .line 3371
    iput-boolean v1, p0, Lcom/ebay/mobile/Item;->isHotnessCharityAll:Z

    :goto_0
    return-void
.end method

.method private setupItemCard(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 5

    .line 3435
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object v0

    .line 3440
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isShipsToUser:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLocalPickupOnly:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v1, v1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->orderedOptions:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v1, v1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->orderedOptions:Ljava/util/List;

    .line 3446
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    .line 3447
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    if-eqz v1, :cond_4

    .line 3448
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isIspuOnly:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusEligible:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLocalPickupOnly:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/ebay/mobile/Item;->isShowItemCardSingle:Z

    .line 3451
    :cond_4
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isIspuOnly:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLocalOptionsOnly:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBopisable:Z

    if-eqz v1, :cond_5

    goto/16 :goto_5

    .line 3457
    :cond_5
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLiveAuction:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->buyerResponsibleForLogistics:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v4, Lcom/ebay/mobile/dcs/DcsBoolean;->VI_feature_liveAuctionsShipping:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3458
    iput-boolean v3, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    goto/16 :goto_6

    .line 3459
    :cond_6
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusEligible:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusV2:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusMember:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->setupEbayPlusItemCardWording(Lcom/ebay/nautilus/kernel/content/EbayContext;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3462
    iput-boolean v2, p0, Lcom/ebay/mobile/Item;->isEbayPlusLogoShown:Z

    goto/16 :goto_6

    .line 3464
    :cond_7
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusEligible:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusV2:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isEbayPlusMember:Z

    if-nez v1, :cond_8

    .line 3465
    invoke-direct {p0, p1, p0}, Lcom/ebay/mobile/Item;->setupEbayPlusNonMember(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/Item;)V

    goto/16 :goto_6

    .line 3466
    :cond_8
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLocalPickupOnly:Z

    if-nez v1, :cond_c

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLocalOptionsOnly:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isLocalPickup:Z

    if-eqz v1, :cond_9

    goto :goto_4

    .line 3491
    :cond_9
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isDigitalGiftCard:Z

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v4, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->includeDigital:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {v1, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v1, v1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->orderedOptions:Ljava/util/List;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v1, v1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->orderedOptions:Ljava/util/List;

    .line 3492
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3494
    iget-object p1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object p1, p1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->orderedOptions:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    .line 3495
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceName:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 3497
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceName:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    .line 3499
    iput-boolean v2, p0, Lcom/ebay/mobile/Item;->isShowItemCardSingle:Z

    goto/16 :goto_6

    .line 3504
    :cond_a
    iget-object v1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingRaw:Ljava/lang/String;

    iput-object v1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    .line 3505
    iget-object v1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingConverted:Ljava/lang/String;

    .line 3506
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v1, :cond_b

    const v1, 0x7f12023f

    iget-object v2, p0, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedRaw:Ljava/lang/String;

    .line 3507
    invoke-virtual {p0, p1, v1, v2}, Lcom/ebay/mobile/Item;->getApproximatelyString(Lcom/ebay/nautilus/kernel/content/EbayContext;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountConvertedItemCard:Ljava/lang/String;

    const p1, 0x7f120e19

    .line 3508
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingLabelItemCard:Ljava/lang/String;

    .line 3510
    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 3511
    iput-boolean v3, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    goto/16 :goto_6

    :cond_c
    :goto_4
    const p1, 0x7f12052d

    .line 3468
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    .line 3471
    iget-object p1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object p1, p1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->orderedOptions:Ljava/util/List;

    if-eqz p1, :cond_d

    .line 3472
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 3474
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    .line 3475
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_d

    new-instance v1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v2, p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3476
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isGreaterThanZero()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3477
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 3478
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result v1

    .line 3477
    invoke-static {p1, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    .line 3481
    :cond_d
    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p1, :cond_e

    new-instance p1, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p1, v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result p1

    if-nez p1, :cond_e

    .line 3482
    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingRaw:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    .line 3485
    :cond_e
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p1, :cond_f

    .line 3486
    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 3487
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result v1

    .line 3486
    invoke-static {p1, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountConvertedItemCard:Ljava/lang/String;

    :cond_f
    const p1, 0x7f120084

    .line 3489
    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingLabelItemCard:Ljava/lang/String;

    goto :goto_6

    .line 3453
    :cond_10
    :goto_5
    iget-object v1, p0, Lcom/ebay/mobile/Item;->displayPriceShippingRaw:Ljava/lang/String;

    iput-object v1, p0, Lcom/ebay/mobile/Item;->displayShippingAmountItemCard:Ljava/lang/String;

    .line 3455
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f1200a0

    .line 3454
    invoke-static {p1, v1}, Lcom/ebay/mobile/common/LocalUtil;->getInStorePickupResourceForCountry(Landroid/content/Context;I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingLabelItemCard:Ljava/lang/String;

    .line 3515
    :cond_11
    :goto_6
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isShowItemCardSingle:Z

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayShippingEstimatedDelivery:Landroid/text/Spannable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3516
    iput-boolean v3, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    :cond_12
    return-void
.end method

.method private setupQuantity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V
    .locals 3

    const v0, 0x7f040156

    const v1, 0x7f0601d9

    .line 3222
    invoke-static {p1, v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 3224
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBopisable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isListingTypeBin:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBidWithBin:Z

    if-nez v1, :cond_2

    :cond_1
    return-void

    .line 3228
    :cond_2
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 3231
    iget-object p1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget p1, p1, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    if-le p1, v2, :cond_4

    .line 3234
    iget-object p1, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget p1, p1, Lcom/ebay/common/model/ItemTransaction;->quantityPurchased:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    goto :goto_0

    .line 3237
    :cond_3
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isAuctionEnded:Z

    if-nez v1, :cond_4

    .line 3239
    invoke-static {p1, p0, p2}, Lcom/ebay/mobile/Item;->setupQuantityStrings(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 3240
    aget-object p2, p1, p2

    iput-object p2, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3241
    aget-object p1, p1, v2

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3242
    invoke-static {p0}, Lcom/ebay/mobile/Item;->isQuantityDisplayStringInRed(Lcom/ebay/mobile/Item;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 3243
    iput v0, p0, Lcom/ebay/mobile/Item;->quantityStringPrimaryColorId:I

    :cond_4
    :goto_0
    return-void
.end method

.method private setupQuantityAndWatchersString(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V
    .locals 10

    .line 3068
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3069
    new-instance v1, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f040156

    const v3, 0x7f0601d9

    .line 3071
    invoke-static {p1, v2, v3}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v2

    .line 3072
    iget v3, p0, Lcom/ebay/mobile/Item;->quantity:I

    const v4, 0x7f1000bf

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    iget v3, p0, Lcom/ebay/mobile/Item;->quantitySold:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/ebay/mobile/Item;->quantitySold:I

    if-ne v3, v6, :cond_1

    :cond_0
    const p1, 0x7f10005a

    .line 3080
    new-array p2, v6, [Ljava/lang/Object;

    .line 3081
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v5

    .line 3080
    invoke-virtual {v0, p1, v6, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3083
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    if-eqz p1, :cond_18

    .line 3085
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    .line 3086
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v5

    .line 3085
    invoke-virtual {v0, v4, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3087
    iput v2, p0, Lcom/ebay/mobile/Item;->quantityStringSecondaryColorId:I

    .line 3089
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3095
    :cond_1
    iget-boolean v3, p0, Lcom/ebay/mobile/Item;->isHotnessLastOne:Z

    const v7, 0x7f100051

    const v8, 0x7f100050

    const v9, 0x7f10005b

    if-eqz v3, :cond_8

    const p1, 0x7f1205b3

    .line 3099
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3100
    iput v2, p0, Lcom/ebay/mobile/Item;->quantityStringPrimaryColorId:I

    .line 3101
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->LAST_ONE:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 3103
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    if-eqz p1, :cond_2

    .line 3106
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    .line 3107
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v5

    .line 3106
    invoke-virtual {v0, v4, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3108
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3110
    :cond_2
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isHotnessTrendingHot:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    if-eqz p1, :cond_7

    .line 3114
    :cond_3
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3115
    iget-boolean p2, p0, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTwentyFourHours:Z

    if-eqz p2, :cond_5

    const v7, 0x7f100050

    :cond_5
    new-array p2, v6, [Ljava/lang/Object;

    .line 3117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v5

    .line 3115
    invoke-virtual {v0, v7, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3119
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-eqz p1, :cond_6

    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_DAY:Lcom/ebay/mobile/Item$ViewListingSignals;

    :goto_1
    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_HOUR:Lcom/ebay/mobile/Item$ViewListingSignals;

    goto :goto_1

    :goto_2
    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3121
    :cond_7
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTotal:Z

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    if-eqz p1, :cond_18

    .line 3124
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    .line 3125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    aput-object v2, p2, v5

    .line 3124
    invoke-virtual {v0, v9, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3126
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3129
    :cond_8
    iget-boolean v3, p0, Lcom/ebay/mobile/Item;->isHotnessAlmostGone:Z

    if-eqz v3, :cond_f

    const p1, 0x7f1205ac

    .line 3133
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3134
    iput v2, p0, Lcom/ebay/mobile/Item;->quantityStringPrimaryColorId:I

    .line 3135
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->ALMOST_GONE:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 3137
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isHotnessTrendingHot:Z

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    if-eqz p1, :cond_d

    .line 3139
    :cond_9
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    goto :goto_3

    :cond_a
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3142
    iget-boolean p2, p0, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTwentyFourHours:Z

    if-eqz p2, :cond_b

    const v7, 0x7f100050

    :cond_b
    new-array p2, v6, [Ljava/lang/Object;

    .line 3144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v5

    .line 3142
    invoke-virtual {v0, v7, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3146
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-eqz p1, :cond_c

    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_DAY:Lcom/ebay/mobile/Item$ViewListingSignals;

    :goto_4
    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_c
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_HOUR:Lcom/ebay/mobile/Item$ViewListingSignals;

    goto :goto_4

    :goto_5
    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3148
    :cond_d
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTotal:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    if-eqz p1, :cond_e

    .line 3151
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    .line 3152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    aput-object v2, p2, v5

    .line 3151
    invoke-virtual {v0, v9, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3154
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3156
    :cond_e
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    if-eqz p1, :cond_18

    .line 3160
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    .line 3161
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v5

    .line 3160
    invoke-virtual {v0, v4, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3163
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto/16 :goto_9

    .line 3166
    :cond_f
    iget-boolean v3, p0, Lcom/ebay/mobile/Item;->isHotnessTrendingHot:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    if-eqz v3, :cond_15

    .line 3171
    :cond_10
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    goto :goto_6

    :cond_11
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3172
    iget-boolean p2, p0, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTwentyFourHours:Z

    if-eqz p2, :cond_12

    const v7, 0x7f100050

    :cond_12
    new-array p2, v6, [Ljava/lang/Object;

    .line 3174
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p2, v5

    .line 3172
    invoke-virtual {v0, v7, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3175
    iput v2, p0, Lcom/ebay/mobile/Item;->quantityStringPrimaryColorId:I

    .line 3177
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    if-eqz p1, :cond_13

    .line 3178
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    .line 3179
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    aput-object v2, p2, v5

    .line 3178
    invoke-virtual {v0, v9, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    .line 3181
    :cond_13
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    if-eqz p1, :cond_14

    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_DAY:Lcom/ebay/mobile/Item$ViewListingSignals;

    :goto_7
    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_14
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD_LAST_HOUR:Lcom/ebay/mobile/Item$ViewListingSignals;

    goto :goto_7

    :goto_8
    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 3182
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto :goto_9

    .line 3184
    :cond_15
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTotal:Z

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    if-eqz v2, :cond_16

    .line 3188
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    .line 3189
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    aput-object v2, p2, v5

    .line 3188
    invoke-virtual {v0, v9, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3191
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_SOLD:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto :goto_9

    .line 3193
    :cond_16
    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    if-eqz v2, :cond_18

    iget v2, p0, Lcom/ebay/mobile/Item;->quantity:I

    if-le v2, v6, :cond_18

    .line 3198
    iget-object v2, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->kind:Lcom/ebay/common/ConstantsCommon$ItemKind;

    iget-object p2, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-static {p1, p0, v2, p2}, Lcom/ebay/mobile/Item;->getObfuscatedQuantityAvailable(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/common/ConstantsCommon$ItemKind;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    .line 3199
    iget-object p1, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    .line 3200
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    new-array p2, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->hotnessWatchersCount:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v5

    .line 3199
    invoke-virtual {v0, v4, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringSecondary:Ljava/lang/String;

    const p1, 0x7f120650

    .line 3203
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 3204
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->LIMITED_QTY:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 3206
    :cond_17
    sget-object p1, Lcom/ebay/mobile/Item$ViewListingSignals;->X_WATCHERS:Lcom/ebay/mobile/Item$ViewListingSignals;

    invoke-virtual {p1}, Lcom/ebay/mobile/Item$ViewListingSignals;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 3211
    :cond_18
    :goto_9
    invoke-virtual {v1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_19

    .line 3212
    iput-object v1, p0, Lcom/ebay/mobile/Item;->quantityAndSignalsTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    :cond_19
    return-void
.end method

.method public static setupQuantityStrings(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;)[Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_b

    if-eqz p1, :cond_b

    if-eqz p2, :cond_b

    const/4 v0, 0x2

    .line 3260
    new-array v0, v0, [Ljava/lang/String;

    .line 3261
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3268
    iget-boolean v2, p1, Lcom/ebay/mobile/Item;->isMultiSku:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 3269
    iget-object v4, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Lcom/ebay/mobile/Item;->getQuantityAvailable(Ljava/util/ArrayList;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-gt v4, v2, :cond_1

    iget v2, p1, Lcom/ebay/mobile/Item;->quantitySold:I

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v5

    goto/16 :goto_5

    .line 3271
    :cond_1
    :goto_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v2

    sget-object v4, Lcom/ebay/mobile/dcs/DcsBoolean;->VI_feature_QuantitySold:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v2, v4}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v2

    .line 3272
    iget-boolean v4, p1, Lcom/ebay/mobile/Item;->isHotnessAlmostGone:Z

    if-nez v4, :cond_3

    iget-boolean v4, p1, Lcom/ebay/mobile/Item;->isHotnessLastOne:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    if-eqz v4, :cond_5

    .line 3276
    iget-boolean p0, p1, Lcom/ebay/mobile/Item;->isHotnessAlmostGone:Z

    if-eqz p0, :cond_4

    const p0, 0x7f1205ac

    goto :goto_3

    :cond_4
    const p0, 0x7f1205b3

    :goto_3
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 3282
    :cond_5
    iget-object v7, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->kind:Lcom/ebay/common/ConstantsCommon$ItemKind;

    iget-object p2, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-static {p0, p1, v7, p2}, Lcom/ebay/mobile/Item;->getObfuscatedQuantityAvailable(Landroid/content/Context;Lcom/ebay/mobile/Item;Lcom/ebay/common/ConstantsCommon$ItemKind;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    .line 3286
    :goto_4
    iget-boolean p2, p1, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldOneHour:Z

    if-eqz p2, :cond_6

    const p2, 0x7f100051

    .line 3287
    iget-object v2, p1, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    .line 3288
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastHour:Ljava/lang/Integer;

    aput-object p1, v4, v6

    .line 3287
    invoke-virtual {v1, p2, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 3289
    :cond_6
    iget-boolean p2, p1, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTwentyFourHours:Z

    if-eqz p2, :cond_7

    const p2, 0x7f100050

    .line 3290
    iget-object v2, p1, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    .line 3291
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ebay/mobile/Item;->hotnessQuantityCountLastDay:Ljava/lang/Integer;

    aput-object p1, v4, v6

    .line 3290
    invoke-virtual {v1, p2, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 3292
    :cond_7
    iget-boolean p2, p1, Lcom/ebay/mobile/Item;->isHotnessQuantitySoldTotal:Z

    if-eqz p2, :cond_8

    const p2, 0x7f100052

    .line 3293
    iget-object v2, p1, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    .line 3294
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/ebay/mobile/Item;->hotnessQuantityCountTotal:Ljava/lang/Integer;

    aput-object p1, v4, v6

    .line 3293
    invoke-virtual {v1, p2, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 3295
    :cond_8
    iget p2, p1, Lcom/ebay/mobile/Item;->quantitySold:I

    if-lez p2, :cond_a

    const p2, 0x7f10005b

    .line 3297
    iget v7, p1, Lcom/ebay/mobile/Item;->quantitySold:I

    new-array v8, v3, [Ljava/lang/Object;

    iget p1, p1, Lcom/ebay/mobile/Item;->quantitySold:I

    .line 3298
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v6

    .line 3297
    invoke-virtual {v1, p2, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz v2, :cond_9

    if-nez v4, :cond_9

    move-object p0, p1

    goto :goto_5

    :cond_9
    move-object v5, p1

    :cond_a
    :goto_5
    aput-object p0, v0, v6

    aput-object v5, v0, v3

    return-object v0

    .line 3258
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private setupSTP(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V
    .locals 2

    .line 3997
    iget-object v0, p0, Lcom/ebay/mobile/Item;->pricingTreatment:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 3998
    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->isSavings(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->promotionalSaleOriginalPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->isSavings(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_5

    .line 4001
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMap:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isStp:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/Item;->promotionalSaleOriginalPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_5

    .line 4005
    :cond_2
    iget-object p2, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez p2, :cond_3

    .line 4007
    iget-object p2, p0, Lcom/ebay/mobile/Item;->promotionalSaleOriginalPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_3
    if-nez p2, :cond_4

    .line 4009
    iget-object p2, p0, Lcom/ebay/mobile/Item;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_4
    if-eqz p2, :cond_5

    .line 4013
    iput-object p2, p0, Lcom/ebay/mobile/Item;->displayPriceOriginalCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 4014
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceOriginalCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 4015
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result v1

    .line 4014
    invoke-static {v0, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceOriginal:Ljava/lang/String;

    .line 4016
    invoke-static {p1, p2}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceOriginalConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 4017
    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceOriginalConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 4019
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result p2

    .line 4017
    invoke-static {p1, p2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceOriginalConverted:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public static setupShippingDisplayPrices(Landroid/content/Context;Lcom/ebay/mobile/Item;)V
    .locals 5

    .line 3382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3383
    invoke-static {p0, p1}, Lcom/ebay/mobile/Item;->getShippingString(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    .line 3384
    iget-object v1, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    iput-object v1, p1, Lcom/ebay/mobile/Item;->displayPriceShippingRaw:Ljava/lang/String;

    .line 3386
    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->isIspuOnly:Z

    const v2, 0x7f12052d

    if-eqz v1, :cond_0

    .line 3387
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/ebay/mobile/Item;->displayPriceShippingRaw:Ljava/lang/String;

    .line 3389
    :cond_0
    iget-object v1, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3391
    iget-object v1, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3393
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingTerse:Ljava/lang/String;

    .line 3394
    iget-object v0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingTerse:Ljava/lang/String;

    iput-object v0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingRaw:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const v1, 0x7f120955

    const/4 v2, 0x1

    .line 3397
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingTerse:Ljava/lang/String;

    .line 3400
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/Item;->modifyShippingPriceStringAccretive(Landroid/content/Context;Lcom/ebay/mobile/Item;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShipping:Ljava/lang/String;

    return-void
.end method

.method public static setupShippingDisplayPricesConverted(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/Item;)V
    .locals 2

    .line 3410
    invoke-interface {p0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3411
    invoke-static {p1}, Lcom/ebay/mobile/Item;->getShipping(Lcom/ebay/mobile/Item;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v1

    .line 3412
    invoke-static {p0, v1}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p0

    iput-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 3413
    iget-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p0, :cond_0

    .line 3415
    iget-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 3417
    invoke-virtual {p1}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result v1

    .line 3415
    invoke-static {p0, v1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConverted:Ljava/lang/String;

    .line 3419
    iget-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConverted:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 3421
    iget-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConverted:Ljava/lang/String;

    iput-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConvertedRaw:Ljava/lang/String;

    .line 3422
    iget-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConverted:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/ebay/mobile/Item;->modifyShippingPriceStringAccretive(Landroid/content/Context;Lcom/ebay/mobile/Item;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/ebay/mobile/Item;->displayPriceShippingConverted:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static setupShippingRegions()Ljava/util/HashMap;
    .locals 56
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "DZ"

    const-string v1, "AO"

    const-string v2, "BJ"

    const-string v3, "BW"

    const-string v4, "BF"

    const-string v5, "BI"

    const-string v6, "CM"

    const-string v7, "CV"

    const-string v8, "CF"

    const-string v9, "TD"

    const-string v10, "KM"

    const-string v11, "CD"

    const-string v12, "CG"

    const-string v13, "CI"

    const-string v14, "DJ"

    const-string v15, "EG"

    const-string v16, "GQ"

    const-string v17, "ER"

    const-string v18, "ET"

    const-string v19, "GA"

    const-string v20, "GM"

    const-string v21, "GH"

    const-string v22, "GN"

    const-string v23, "GW"

    const-string v24, "KE"

    const-string v25, "LS"

    const-string v26, "LR"

    const-string v27, "LY"

    const-string v28, "MG"

    const-string v29, "MW"

    const-string v30, "ML"

    const-string v31, "MR"

    const-string v32, "MU"

    const-string v33, "YT"

    const-string v34, "MA"

    const-string v35, "MZ"

    const-string v36, "NA"

    const-string v37, "NE"

    const-string v38, "NG"

    const-string v39, "RE"

    const-string v40, "RW"

    const-string v41, "SH"

    const-string v42, "SN"

    const-string v43, "SC"

    const-string v44, "SL"

    const-string v45, "SO"

    const-string v46, "ZA"

    const-string v47, "SD"

    const-string v48, "SZ"

    const-string v49, "TZ"

    const-string v50, "TG"

    const-string v51, "TN"

    const-string v52, "UG"

    const-string v53, "EH"

    const-string v54, "ZM"

    const-string v55, "ZW"

    .line 1787
    filled-new-array/range {v0 .. v55}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "AF"

    const-string v2, "AM"

    const-string v3, "AZ"

    const-string v4, "BH"

    const-string v5, "BD"

    const-string v6, "BT"

    const-string v7, "BN"

    const-string v8, "KH"

    const-string v9, "CN"

    const-string v10, "GE"

    const-string v11, "HK"

    const-string v12, "IN"

    const-string v13, "ID"

    const-string v14, "IQ"

    const-string v15, "IL"

    const-string v16, "JP"

    const-string v17, "JO"

    const-string v18, "KZ"

    const-string v19, "KR"

    const-string v20, "KW"

    const-string v21, "KG"

    const-string v22, "LA"

    const-string v23, "LB"

    const-string v24, "MO"

    const-string v25, "MY"

    const-string v26, "MV"

    const-string v27, "MN"

    const-string v28, "NP"

    const-string v29, "OM"

    const-string v30, "PK"

    const-string v31, "PH"

    const-string v32, "QA"

    const-string v33, "RU"

    const-string v34, "SA"

    const-string v35, "SG"

    const-string v36, "LK"

    const-string v37, "TW"

    const-string v38, "TJ"

    const-string v39, "TH"

    const-string v40, "TR"

    const-string v41, "TM"

    const-string v42, "AE"

    const-string v43, "UZ"

    const-string v44, "VN"

    const-string v45, "YE"

    .line 1791
    filled-new-array/range {v1 .. v45}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "AI"

    const-string v3, "AG"

    const-string v4, "AW"

    const-string v5, "BS"

    const-string v6, "BB"

    const-string v7, "BZ"

    const-string v8, "VG"

    const-string v9, "KY"

    const-string v10, "CR"

    const-string v11, "CU"

    const-string v12, "DM"

    const-string v13, "DO"

    const-string v14, "SV"

    const-string v15, "GD"

    const-string v16, "GP"

    const-string v17, "GT"

    const-string v18, "HT"

    const-string v19, "HN"

    const-string v20, "JM"

    const-string v21, "MQ"

    const-string v22, "MS"

    const-string v23, "AN"

    const-string v24, "NI"

    const-string v25, "PA"

    const-string v26, "PR"

    const-string v27, "KN"

    const-string v28, "LC"

    const-string v29, "VC"

    const-string v30, "TT"

    const-string v31, "TC"

    const-string v32, "VI"

    .line 1794
    filled-new-array/range {v2 .. v32}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "AL"

    const-string v4, "AD"

    const-string v5, "AT"

    const-string v6, "BY"

    const-string v7, "BE"

    const-string v8, "BA"

    const-string v9, "BG"

    const-string v10, "HR"

    const-string v11, "CY"

    const-string v12, "CZ"

    const-string v13, "DK"

    const-string v14, "EE"

    const-string v15, "FI"

    const-string v16, "FR"

    const-string v17, "DE"

    const-string v18, "GI"

    const-string v19, "GR"

    const-string v20, "HU"

    const-string v21, "IS"

    const-string v22, "IE"

    const-string v23, "IT"

    const-string v24, "LV"

    const-string v25, "LI"

    const-string v26, "LT"

    const-string v27, "LU"

    const-string v28, "MK"

    const-string v29, "MT"

    const-string v30, "MD"

    const-string v31, "MC"

    const-string v32, "ME"

    const-string v33, "NL"

    const-string v34, "NO"

    const-string v35, "PL"

    const-string v36, "PT"

    const-string v37, "RO"

    const-string v38, "RU"

    const-string v39, "SM"

    const-string v40, "RS"

    const-string v41, "SK"

    const-string v42, "SI"

    const-string v43, "ES"

    const-string v44, "SJ"

    const-string v45, "SE"

    const-string v46, "CH"

    const-string v47, "UA"

    const-string v48, "GB"

    const-string v49, "VA"

    .line 1796
    filled-new-array/range {v3 .. v49}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "AT"

    const-string v5, "BE"

    const-string v6, "BG"

    const-string v7, "CY"

    const-string v8, "CZ"

    const-string v9, "DE"

    const-string v10, "DK"

    const-string v11, "EE"

    const-string v12, "ES"

    const-string v13, "FI"

    const-string v14, "FR"

    const-string v15, "GB"

    const-string v16, "GR"

    const-string v17, "HU"

    const-string v18, "IE"

    const-string v19, "IT"

    const-string v20, "LT"

    const-string v21, "LU"

    const-string v22, "LV"

    const-string v23, "MT"

    const-string v24, "NL"

    const-string v25, "PL"

    const-string v26, "PT"

    const-string v27, "RO"

    const-string v28, "SE"

    const-string v29, "SI"

    const-string v30, "SK"

    .line 1799
    filled-new-array/range {v4 .. v30}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "BH"

    const-string v6, "IR"

    const-string v7, "IQ"

    const-string v8, "IL"

    const-string v9, "JO"

    const-string v10, "KW"

    const-string v11, "LB"

    const-string v12, "OM"

    const-string v13, "QA"

    const-string v14, "SA"

    const-string v15, "SY"

    const-string v16, "TR"

    const-string v17, "AE"

    const-string v18, "YE"

    .line 1801
    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "BM"

    const-string v7, "CA"

    const-string v8, "GL"

    const-string v9, "MX"

    const-string v10, "PM"

    const-string v11, "US"

    .line 1802
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS"

    const-string v8, "AU"

    const-string v9, "CK"

    const-string v10, "FJ"

    const-string v11, "PF"

    const-string v12, "GU"

    const-string v13, "KI"

    const-string v14, "MH"

    const-string v15, "FM"

    const-string v16, "NR"

    const-string v17, "NC"

    const-string v18, "NZ"

    const-string v19, "NU"

    const-string v20, "PW"

    const-string v21, "PG"

    const-string v22, "SB"

    const-string v23, "TO"

    const-string v24, "TV"

    const-string v25, "VU"

    const-string v26, "WF"

    const-string v27, "WS"

    .line 1803
    filled-new-array/range {v7 .. v27}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "AR"

    const-string v9, "BO"

    const-string v10, "BR"

    const-string v11, "CL"

    const-string v12, "CO"

    const-string v13, "EC"

    const-string v14, "FK"

    const-string v15, "GF"

    const-string v16, "GY"

    const-string v17, "PY"

    const-string v18, "PE"

    const-string v19, "SR"

    const-string v20, "UY"

    const-string v21, "VE"

    .line 1805
    filled-new-array/range {v8 .. v21}, [Ljava/lang/String;

    move-result-object v8

    const-string v9, "AS"

    const-string v10, "GU"

    const-string v11, "MP"

    const-string v12, "MH"

    const-string v13, "MN"

    const-string v14, "PW"

    const-string v15, "PR"

    const-string v16, "VI"

    .line 1808
    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v9

    .line 1810
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v11, "Africa"

    const/4 v12, 0x1

    .line 1815
    new-array v13, v12, [[Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Asia"

    .line 1816
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v1, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Carribean"

    .line 1817
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v2, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Europe"

    .line 1818
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v3, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "EuropeanUnion"

    .line 1819
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v4, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "European Union"

    .line 1820
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v4, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "MiddleEast"

    .line 1821
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v5, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Middle East"

    .line 1822
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v5, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "NorthAmerica"

    .line 1823
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v6, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "North America"

    .line 1824
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v6, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Oceania"

    .line 1825
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v7, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "SouthAmerica"

    .line 1826
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v8, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "South America"

    .line 1827
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v8, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "LatinAmerica"

    const/4 v13, 0x2

    .line 1828
    new-array v15, v13, [[Ljava/lang/String;

    aput-object v2, v15, v14

    aput-object v8, v15, v12

    invoke-static {v15}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Latin America"

    .line 1829
    new-array v15, v13, [[Ljava/lang/String;

    aput-object v2, v15, v14

    aput-object v8, v15, v12

    invoke-static {v15}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v15

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "Americas"

    const/4 v15, 0x3

    .line 1830
    new-array v13, v15, [[Ljava/lang/String;

    aput-object v2, v13, v14

    aput-object v8, v13, v12

    const/16 v16, 0x2

    aput-object v6, v13, v16

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "US Protectorates"

    .line 1831
    new-array v13, v12, [[Ljava/lang/String;

    aput-object v9, v13, v14

    invoke-static {v13}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "AFRICA"

    .line 1834
    new-array v11, v12, [[Ljava/lang/String;

    aput-object v0, v11, v14

    invoke-static {v11}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "AMERICAS"

    .line 1835
    new-array v9, v15, [[Ljava/lang/String;

    aput-object v2, v9, v14

    aput-object v8, v9, v12

    const/4 v11, 0x2

    aput-object v6, v9, v11

    invoke-static {v9}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v10, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ASIA"

    .line 1836
    new-array v9, v12, [[Ljava/lang/String;

    aput-object v1, v9, v14

    invoke-static {v9}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CARIBBEAN"

    .line 1837
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v2, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EUROPE"

    .line 1839
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v3, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "EUROPEAN_UNION"

    .line 1840
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v4, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LATIN_AMERICA"

    const/4 v1, 0x2

    .line 1841
    new-array v3, v1, [[Ljava/lang/String;

    aput-object v2, v3, v14

    aput-object v8, v3, v12

    invoke-static {v3}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "MIDDLE_EAST"

    .line 1842
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v5, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "NORTH_AMERICA"

    .line 1843
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v6, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OCEANIA"

    .line 1844
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v7, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SOUTH_AMERICA"

    .line 1845
    new-array v1, v12, [[Ljava/lang/String;

    aput-object v8, v1, v14

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "CENTRAL_AMERICA_AND_CARIBBEAN"

    const/4 v1, 0x2

    .line 1846
    new-array v1, v1, [[Ljava/lang/String;

    aput-object v2, v1, v14

    aput-object v8, v1, v12

    invoke-static {v1}, Lcom/ebay/mobile/Item;->toSet([[Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v10
.end method

.method private setupWhyToBuyDisplayStrings(Landroid/content/Context;)Z
    .locals 9

    .line 2935
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2936
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2938
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuySignals:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuySignals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 2940
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2941
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    .line 2944
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    const-string v3, ","

    invoke-direct {v0, v3}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuyTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    .line 2947
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 2948
    iget-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuySignals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2951
    iget-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuySignals:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    :cond_3
    :goto_1
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;

    .line 2956
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isShowFastAndFree()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessEnum;

    sget-object v6, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessEnum;->QUALIFIES_FAST_N_FREE_SHIPPING_SIGNAL:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessEnum;

    if-ne v5, v6, :cond_4

    goto :goto_1

    .line 2961
    :cond_4
    iget-object v5, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessEnum;

    if-eqz v5, :cond_3

    .line 2963
    sget-object v5, Lcom/ebay/mobile/Item$1;->$SwitchMap$com$ebay$nautilus$domain$net$api$viewlisting$ListingBuyingContext$ListingHotnessEnum:[I

    iget-object v6, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessEnum;

    invoke-virtual {v6}, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessEnum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 2972
    iget-object v5, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->displayLevel:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$DisplayLevelEnum;

    sget-object v6, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$DisplayLevelEnum;->EMPHASIS:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$DisplayLevelEnum;

    if-ne v5, v6, :cond_5

    .line 2974
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2975
    iget-object v6, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->hotnessMessage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2976
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x12

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2977
    iget-object v6, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2980
    :cond_5
    iget-object v5, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    new-instance v6, Landroid/text/SpannableString;

    iget-object v7, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->hotnessMessage:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2982
    :goto_2
    iget-object v5, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signalId:Ljava/lang/Integer;

    if-eqz v5, :cond_6

    .line 2983
    iget-object v5, p0, Lcom/ebay/mobile/Item;->whyToBuyTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signalId:Ljava/lang/Integer;

    invoke-virtual {v5, v4}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/Object;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    :cond_6
    add-int/lit8 v3, v3, 0x1

    if-lt v3, p1, :cond_3

    .line 2991
    :cond_7
    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayWhyToBuy:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs toSet([[Ljava/lang/String;)Ljava/util/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2456
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2458
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p0, v3

    .line 2459
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 2460
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addItemSpecific(Lcom/ebay/nautilus/domain/data/NameValue;)V
    .locals 1

    monitor-enter p0

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->itemSpecifics:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1193
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1191
    monitor-exit p0

    throw p1
.end method

.method public addShipToOrExclusion(Lcom/ebay/nautilus/domain/data/cos/base/Region;Z)V
    .locals 2

    if-eqz p1, :cond_4

    .line 4340
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionType:Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;

    if-nez v0, :cond_0

    goto :goto_2

    .line 4343
    :cond_0
    sget-object v0, Lcom/ebay/mobile/Item$1;->$SwitchMap$com$ebay$nautilus$domain$data$cos$base$RegionTypeEnum:[I

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionType:Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/cos/base/RegionTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_1

    .line 4351
    iget-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToRegions:Ljava/util/List;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4353
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shipToRegions:Ljava/util/List;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/cos/base/Region;->regionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    xor-int/lit8 v0, p2, 0x1

    .line 4346
    iput-boolean v0, p0, Lcom/ebay/mobile/Item;->isWorldwideShipping:Z

    .line 4359
    :goto_0
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getLocation(Lcom/ebay/nautilus/domain/data/cos/base/Region;)Ljava/lang/String;

    move-result-object p1

    .line 4360
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 4363
    iget-object p2, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4365
    :cond_2
    iget-object p2, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public addTrackingOfDisplayedPaymentMethods(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;)V
    .locals 4

    .line 3034
    iget-object v0, p0, Lcom/ebay/mobile/Item;->paymentMethodDetails:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/Item;->paymentMethodDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3036
    new-instance v0, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;-><init>(Ljava/lang/String;)V

    .line 3037
    iget-object v1, p0, Lcom/ebay/mobile/Item;->paymentMethodDetails:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;

    .line 3038
    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PaymentMethodDetail;->paymentMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->append(Ljava/lang/String;)Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    goto :goto_0

    .line 3040
    :cond_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3042
    sget-object v1, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_1

    .line 3043
    sget-object v1, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tracking pmtMtds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_1
    const-string v1, "pmtMtds"

    .line 3045
    invoke-virtual {p1, v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_2
    return-void
.end method

.method public addTrackingOfDisplayedSignals(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;)V
    .locals 4

    .line 3001
    iget-object v0, p0, Lcom/ebay/mobile/Item;->urgencySignal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;

    if-eqz v0, :cond_1

    .line 3003
    iget-object v0, p0, Lcom/ebay/mobile/Item;->urgencySignal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signalId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 3005
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 3006
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tracking wtbsh="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->urgencySignal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signalId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "wtbsh"

    .line 3008
    iget-object v1, p0, Lcom/ebay/mobile/Item;->urgencySignal:Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/ListingBuyingContext$ListingHotnessDetail;->signalId:Ljava/lang/Integer;

    .line 3009
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3008
    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    .line 3014
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuyTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    if-eqz v0, :cond_3

    .line 3016
    iget-object v0, p0, Lcom/ebay/mobile/Item;->whyToBuyTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3018
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3020
    sget-object v1, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_2

    .line 3021
    sget-object v1, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tracking wtbss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "wtbss"

    .line 3023
    invoke-virtual {p1, v1, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    :cond_3
    return-void
.end method

.method public bestOfferPending(Ljava/lang/String;)Z
    .locals 4

    .line 1652
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->sellerUserId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/Item;->sellerUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1657
    iget-object p1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/BestOffer;

    .line 1659
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v3, "Pending"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1665
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/BestOffer;

    .line 1666
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v0, "Pending"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method public canMakeOffer(Ljava/lang/String;)Z
    .locals 4

    .line 1499
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->bestOfferEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1502
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1505
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->newestBestOffer(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/BestOffer;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 1510
    :cond_2
    iget-object v3, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 1514
    :cond_3
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    const-string v3, "SellerCounterOffer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v3, "Pending"

    .line 1515
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    .line 1518
    :cond_4
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    const-string v3, "BuyerBestOffer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    const-string v3, "BuyerCounterOffer"

    .line 1519
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v3, "Declined"

    .line 1520
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v3, "Expired"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v0, "Accepted"

    .line 1521
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v2

    :cond_8
    :goto_1
    return v2
.end method

.method public currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    const/4 v0, 0x0

    .line 2053
    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;Z)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    return-object p1
.end method

.method public currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;Z)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    .line 2069
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isScheduled:Z

    if-eqz v0, :cond_0

    .line 2070
    iget-object p2, p0, Lcom/ebay/mobile/Item;->startPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    .line 2071
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2072
    iget-object p2, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/Item;->getVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 2076
    iget-object p2, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2077
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isBinOnly:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    .line 2078
    iget-object p2, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_2
    if-eqz p3, :cond_3

    .line 2082
    invoke-static {p1, p2}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p2

    :cond_3
    return-object p2
.end method

.method public doesItemShipToBuyer(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5027
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 5029
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->getId()I

    move-result v3

    const/16 v4, 0x61bb

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->Warning:Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    .line 5030
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v2

    if-ne v3, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_5

    .line 5040
    iget-object v2, p0, Lcom/ebay/mobile/Item;->primaryShippingAddress:Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;

    if-eqz v2, :cond_5

    .line 5043
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isLocalPickupOnly:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/ebay/mobile/Item;->inventoryInfo:Lcom/ebay/common/model/inventory/InventoryInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ebay/mobile/Item;->inventoryInfo:Lcom/ebay/common/model/inventory/InventoryInfo;

    .line 5044
    invoke-virtual {v2}, Lcom/ebay/common/model/inventory/InventoryInfo;->getAvailabilities()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 5047
    iget-object v0, p0, Lcom/ebay/mobile/Item;->primaryShippingAddress:Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;

    iget-boolean v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;->isPOBoxOrPackstation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    const-string v2, "PO Box"

    .line 5048
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    const-string v2, "Packstation"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 p1, 0x0

    :cond_5
    return p1
.end method

.method public getAppSpeedTags()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4758
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isPreview:Z

    if-eqz v1, :cond_0

    const-string v1, "preview"

    .line 4759
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4761
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "tx"

    .line 4762
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4764
    :cond_1
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->bestOfferEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "bo"

    .line 4765
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4767
    :cond_2
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isAuctionEnded:Z

    if-eqz v1, :cond_3

    const-string v1, "end"

    .line 4768
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4770
    :cond_3
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBidOnly:Z

    if-eqz v1, :cond_4

    const-string v1, "bidonly"

    .line 4771
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4772
    :cond_4
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBinOnly:Z

    if-eqz v1, :cond_5

    const-string v1, "binonly"

    .line 4773
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4774
    :cond_5
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBidWithBin:Z

    if-eqz v1, :cond_6

    const-string v1, "abin"

    .line 4775
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4777
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v1, :cond_7

    const-string v1, "msku"

    .line 4779
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4781
    iget-object v1, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 4782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "varcount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4785
    :cond_7
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->hasVolumePricingModule:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "vp"

    .line 4786
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4788
    :cond_8
    iget-object v1, p0, Lcom/ebay/mobile/Item;->swc:Lcom/ebay/nautilus/domain/data/experience/type/module/SectionModule;

    if-eqz v1, :cond_9

    const-string/jumbo v1, "swcmod"

    .line 4789
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4791
    :cond_9
    iget-object v1, p0, Lcom/ebay/mobile/Item;->sme:Lcom/ebay/nautilus/domain/data/experience/viewitem/SellerMarketingEngineModule;

    if-eqz v1, :cond_a

    const-string/jumbo v1, "smemod"

    .line 4792
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4794
    :cond_a
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    if-eqz v1, :cond_b

    const-string v1, "newhighlights"

    .line 4795
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4797
    :cond_b
    iget-object v1, p0, Lcom/ebay/mobile/Item;->validateModuleType:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 4798
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->validateModuleType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4800
    :cond_c
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isSeller:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "sel"

    goto :goto_1

    :cond_d
    const-string v1, "buy"

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getApproximatelyString(Lcom/ebay/nautilus/kernel/content/EbayContext;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3637
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3638
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    :cond_0
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getResources()Lcom/ebay/nautilus/kernel/content/EbayResources;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/kernel/content/EbayResources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p3

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAuctionTimeRemainingMs()J
    .locals 4

    .line 2329
    iget-object v0, p0, Lcom/ebay/mobile/Item;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 2330
    iget-object v0, p0, Lcom/ebay/mobile/Item;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getBaseOrUpdatedImportCharges()Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1

    .line 4953
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfoUpdated:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfoUpdated:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_0

    .line 4954
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfoUpdated:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    .line 4955
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1

    .line 4956
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getCurrencySymbol(Lcom/ebay/nautilus/domain/EbayCurrency;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 4443
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    invoke-direct {v0, p1, v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "0.00"

    const-string v1, ""

    .line 4452
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0,00"

    const-string v1, ""

    .line 4453
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    const-string v1, ""

    .line 4454
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4456
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getCurrencyUtilFlag()I
    .locals 1

    .line 3734
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v0

    .line 3735
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    .line 3737
    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDiscountPercentage(Ljava/util/List;)Ljava/lang/Double;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 1379
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1381
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 1383
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariation(Ljava/lang/String;)Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1386
    iget-object v0, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1389
    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;

    .line 1391
    iget-object v2, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;->discountPercentage:Ljava/lang/Double;

    if-eqz v2, :cond_0

    .line 1393
    iget-object p1, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;->discountPercentage:Ljava/lang/Double;

    move-object v1, p1

    goto :goto_0

    .line 1402
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getDiscountPercentageForMinPriceVariation()Ljava/lang/Double;

    move-result-object v1

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    .line 1408
    iget-object p1, p0, Lcom/ebay/mobile/Item;->discountPercentage:Ljava/lang/Double;

    if-eqz p1, :cond_3

    .line 1409
    iget-object v1, p0, Lcom/ebay/mobile/Item;->discountPercentage:Ljava/lang/Double;

    :cond_3
    return-object v1
.end method

.method public getDiscountPercentageForMinPriceVariation()Ljava/lang/Double;
    .locals 6

    .line 1295
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 1297
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    .line 1300
    invoke-virtual {v3}, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->getQuantityAvailable()I

    move-result v4

    if-gtz v4, :cond_1

    goto :goto_0

    .line 1304
    :cond_1
    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->price:Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    .line 1305
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1307
    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v4, v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->price:Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    invoke-virtual {v4}, Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;->getAmount()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1308
    iget-object v5, v4, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1310
    new-instance v5, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v5, v4}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    if-eqz v2, :cond_2

    .line 1311
    invoke-virtual {v2, v5}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareTo(Lcom/ebay/nautilus/domain/data/CurrencyAmount;)I

    move-result v4

    if-lez v4, :cond_0

    .line 1315
    :cond_2
    iget-object v2, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;

    if-eqz v2, :cond_3

    .line 1317
    iget-object v1, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;->discountPercentage:Ljava/lang/Double;

    :cond_3
    move-object v2, v5

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public getHighAvailabilityMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 5091
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 5093
    instance-of v1, v0, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;

    if-eqz v1, :cond_0

    .line 5095
    move-object v1, v0

    check-cast v1, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;

    .line 5097
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;->getId()I

    move-result v2

    const/16 v3, 0x61c8

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->Warning:Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    .line 5098
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v0

    if-ne v2, v0, :cond_0

    .line 5100
    iget-object p1, v1, Lcom/ebay/nautilus/domain/data/ErrorMessageDetails;->altLongMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getIdString()Ljava/lang/String;
    .locals 2

    .line 1781
    iget-wide v0, p0, Lcom/ebay/mobile/Item;->id:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getItemSpecficByName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1164
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1165
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1167
    iget-object v1, p0, Lcom/ebay/mobile/Item;->itemSpecifics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/NameValue;

    .line 1169
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/NameValue;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1171
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/NameValue;->getValues()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1177
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 1163
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getItemSpecifics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->itemSpecifics:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMSKUPrice(Landroid/content/res/Resources;Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Ljava/lang/String;
    .locals 0

    .line 4921
    iget-object p1, p3, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->needsToSelectMultiSku(Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPrice:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4922
    invoke-virtual {p0, p2, p3, p1}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;Z)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result p2

    invoke-static {p1, p2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMSKUPriceConverted(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Ljava/lang/String;
    .locals 1

    .line 4933
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4936
    :cond_0
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->needsToSelectMultiSku(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/Item;->displayPriceConverted:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    .line 4937
    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/mobile/Item;->currentPriceForType(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;Z)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    .line 4938
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag()I

    move-result p2

    .line 4937
    invoke-static {p1, p2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMaxBid()Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 5

    .line 4223
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4224
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog;->logMethod(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 4228
    iget-object v2, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4230
    iget-object v2, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    .line 4231
    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->maxBidPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    if-eqz v2, :cond_4

    .line 4233
    iget-object v0, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->maxBidPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->convertedFromValue:Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 4235
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 4236
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "converted usage"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 4237
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->maxBidPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->convertedFromCurrency:Ljava/lang/String;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->maxBidPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->convertedFromValue:Ljava/lang/Double;

    .line 4240
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4244
    :cond_2
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_3

    .line 4245
    sget-object v0, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "non-converted usage"

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 4246
    :cond_3
    new-instance v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->maxBidPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->currency:Ljava/lang/String;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->maxBidPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    iget-wide v3, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    .line 4247
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4252
    :cond_4
    :goto_0
    sget-object v1, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_5

    .line 4253
    sget-object v1, Lcom/ebay/mobile/Item;->logTag:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxBid returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public getMaxVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;"
        }
    .end annotation

    .line 1337
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1343
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 1350
    iget-object p1, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/Variation;

    .line 1352
    iget-boolean v3, v2, Lcom/ebay/nautilus/domain/data/Variation;->isOutOfStock:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1355
    :cond_2
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/Variation;->getStartPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1356
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1358
    new-instance v3, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v3, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    if-eqz v0, :cond_3

    .line 1359
    invoke-virtual {v0, v3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareTo(Lcom/ebay/nautilus/domain/data/CurrencyAmount;)I

    move-result v2

    if-gez v2, :cond_1

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1364
    new-instance v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public getMinVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;"
        }
    .end annotation

    .line 1254
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1260
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_4

    .line 1266
    iget-object p1, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/Variation;

    .line 1268
    iget-boolean v3, v2, Lcom/ebay/nautilus/domain/data/Variation;->isOutOfStock:Z

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1271
    :cond_2
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/Variation;->getStartPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1272
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;->value:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1274
    new-instance v3, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v3, v2}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    if-eqz v0, :cond_3

    .line 1275
    invoke-virtual {v0, v3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareTo(Lcom/ebay/nautilus/domain/data/CurrencyAmount;)I

    move-result v2

    if-lez v2, :cond_1

    :cond_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    .line 1280
    new-instance v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getCurrencyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v1
.end method

.method public getNameValueListForVariationId(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;"
        }
    .end annotation

    .line 1229
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/Variation;

    .line 1233
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/Variation;->id:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1235
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/Variation;->getNameValueList()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPudoTrackingValue()Ljava/lang/String;
    .locals 3

    const-string v0, "0"

    .line 4814
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isPudoable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v1, v1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->pudoOptions:Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 4817
    iget-object v1, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v1, v1, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->pudoOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    if-eqz v2, :cond_0

    .line 4819
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    const-string v0, "2"

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getQuantityAndSignalsTrackingValue()Ljava/lang/String;
    .locals 1

    .line 4838
    iget-object v0, p0, Lcom/ebay/mobile/Item;->quantityAndSignalsTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->quantityAndSignalsTrackingIds:Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;

    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/util/DelimitedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getQuantityAvailable(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)I"
        }
    .end annotation

    .line 1919
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getVariationQuantityAvailable(Ljava/util/List;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/ebay/mobile/Item;->quantity:I

    iget v0, p0, Lcom/ebay/mobile/Item;->quantitySold:I

    sub-int/2addr p1, v0

    :goto_0
    return p1
.end method

.method public getReceivedOffersForSeller()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/BestOffer;",
            ">;"
        }
    .end annotation

    .line 1706
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1708
    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1710
    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/BestOffer;

    const-string v3, "Pending"

    .line 1712
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BuyerBestOffer"

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    .line 1713
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BuyerCounterOffer"

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    .line 1714
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1716
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getRenderedDate(Landroid/content/Context;Lcom/ebay/common/ConstantsCommon$ItemKind;Ljava/util/Date;IIZ)Landroid/text/SpannableString;
    .locals 6

    .line 2261
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2263
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isScheduled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    sget-object v2, Lcom/ebay/common/ConstantsCommon$ItemKind;->Won:Lcom/ebay/common/ConstantsCommon$ItemKind;

    if-eq v2, p2, :cond_1

    sget-object v2, Lcom/ebay/common/ConstantsCommon$ItemKind;->Sold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    if-eq v2, p2, :cond_1

    sget-object v2, Lcom/ebay/common/ConstantsCommon$ItemKind;->Lost:Lcom/ebay/common/ConstantsCommon$ItemKind;

    if-eq v2, p2, :cond_1

    sget-object v2, Lcom/ebay/common/ConstantsCommon$ItemKind;->Unsold:Lcom/ebay/common/ConstantsCommon$ItemKind;

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-nez p6, :cond_2

    if-nez p2, :cond_2

    .line 2265
    iget-boolean p2, p0, Lcom/ebay/mobile/Item;->isAuctionEnded:Z

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x0

    :goto_2
    if-eqz p2, :cond_3

    .line 2271
    invoke-static {p1, v0, v1}, Lcom/ebay/mobile/util/Util;->formatDayHourMinSec(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 2276
    :cond_3
    invoke-static {p1}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p2

    .line 2277
    invoke-static {p1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p6

    const v2, 0x7f120001

    const/4 v5, 0x2

    .line 2278
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v4

    invoke-virtual {p6, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v3

    invoke-virtual {p1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2281
    :goto_3
    new-instance p2, Landroid/text/SpannableString;

    invoke-direct {p2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p3, -0x1

    if-eq p4, p3, :cond_5

    .line 2286
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/Item;->isTimeLeftDisplayColorRed(J)Z

    move-result p3

    if-eqz p3, :cond_4

    move p4, p5

    .line 2289
    :cond_4
    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p2, p3, v4, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_5
    return-object p2
.end method

.method public getReturnsPaidByMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4987
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->useSellerPaidReturnsVerbiage:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4988
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isReturnsPaidBySeller()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120532

    .line 4989
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4990
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/Item;->rpShippingCostPaidBy:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4991
    iget-object p1, p0, Lcom/ebay/mobile/Item;->rpShippingCostPaidBy:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSaleTypeForTracking()Ljava/lang/String;
    .locals 3

    .line 4556
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "0"

    return-object v0

    .line 4559
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingType:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "FixedPriceItem"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "PersonalOffer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "Half"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "StoresFixedPrice"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "LeadGeneration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "Chinese"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v0, "0"

    return-object v0

    :pswitch_0
    const-string v0, "13"

    return-object v0

    :pswitch_1
    const-string v0, "12"

    return-object v0

    :pswitch_2
    const-string v0, "7"

    return-object v0

    :pswitch_3
    const-string v0, "8"

    return-object v0

    :pswitch_4
    const-string v0, "9"

    return-object v0

    :pswitch_5
    const-string v0, "1"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x704b4f33 -> :sswitch_5
        -0x3bc6924c -> :sswitch_4
        -0x3928d059 -> :sswitch_3
        0x223453 -> :sswitch_2
        0x515c1bdc -> :sswitch_1
        0x554bfb08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedShippingOption()Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;
    .locals 1

    .line 5011
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->selectedShippingOption:Lcom/ebay/nautilus/domain/data/ShippingCostsShippingOption;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getShippingMessage(Landroid/content/Context;I)Landroid/text/SpannableStringBuilder;
    .locals 2

    const v0, 0x7f040156

    const v1, 0x7f0601d9

    .line 4471
    invoke-static {p1, v0, v1}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v0

    .line 4470
    invoke-virtual {p0, p1, p2, v0}, Lcom/ebay/mobile/Item;->getShippingMessage(Landroid/content/Context;II)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getShippingMessage(Landroid/content/Context;II)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 4483
    invoke-static {p1, p0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->getShippingError(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object v0

    .line 4484
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    const v2, 0x7f120279

    .line 4486
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 4489
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    if-lez p3, :cond_0

    .line 4493
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4494
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 4496
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 4497
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v3

    const/16 v2, 0x21

    .line 4496
    invoke-virtual {v1, v6, v3, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    const v2, 0x7f120621

    .line 4504
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, ""

    aput-object v6, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 4505
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const p3, 0x7f040156

    const v2, 0x7f0601d9

    .line 4508
    invoke-static {p1, p3, v2}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result p3

    .line 4507
    invoke-static {v0, p3}, Lcom/ebay/mobile/util/Util;->RenderString(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p3, 0x1

    :cond_2
    if-nez p3, :cond_3

    .line 4514
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4517
    :cond_3
    iget-object p3, p0, Lcom/ebay/mobile/Item;->location:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4

    const-string p3, "\n"

    .line 4518
    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p3

    invoke-static {p1, p0, p2}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->getLocationAsFrom(Landroid/content/Context;Lcom/ebay/mobile/Item;I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    return-object v1
.end method

.method public getTaxExclusiveBuyItNowPriceForTransaction(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 3
    .param p1    # Lcom/ebay/mobile/viewitem/ViewItemViewData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2095
    iget-object v0, p0, Lcom/ebay/mobile/Item;->taxExclusivePrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_0

    .line 2096
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->gstImportTax:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->gstInclusivePricing:Z

    if-nez v1, :cond_1

    .line 2097
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2099
    :cond_1
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2101
    iget-object p1, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPosition(Ljava/util/List;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_4

    .line 2104
    iget-object v1, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Variation;

    .line 2105
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Variation;->getTaxExclusiveStartPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2106
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->gstImportTax:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->gstInclusivePricing:Z

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    goto :goto_1

    .line 2107
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Variation;->getStartPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p1, v0

    :goto_2
    return-object p1
.end method

.method public getTimeRemainingForTracking()Ljava/lang/String;
    .locals 4

    .line 4742
    iget-object v0, p0, Lcom/ebay/mobile/Item;->endDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 4744
    iget-object v0, p0, Lcom/ebay/mobile/Item;->endDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    .line 4748
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUpsellMessage(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2743
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isEbayPlusV2:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ebay/mobile/Item;->plusBenefits:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ebay/mobile/Item;->plusBenefits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2747
    iget-object v0, p0, Lcom/ebay/mobile/Item;->plusBenefits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Benefit;

    .line 2749
    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Benefit;->type:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BenefitTypeEnum;

    sget-object v5, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BenefitTypeEnum;->FREE_SHIPPING:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BenefitTypeEnum;

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 2751
    :cond_1
    iget-object v3, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Benefit;->type:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BenefitTypeEnum;

    sget-object v4, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BenefitTypeEnum;->FREE_RETURN:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$BenefitTypeEnum;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    const p2, 0x7f120950

    goto :goto_1

    :cond_3
    const p2, 0x7f120952

    .line 2756
    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    const p2, 0x7f120951

    goto :goto_2

    :cond_5
    const p2, 0x7f120953

    .line 2759
    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVariation(Ljava/lang/String;)Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;
    .locals 3

    .line 4633
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4635
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    .line 4637
    iget-object v2, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->variationId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getVariationId(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1216
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPosition(Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variationIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->variationIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVariationPrice(Ljava/util/List;)Lcom/ebay/nautilus/domain/data/ItemCurrency;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;"
        }
    .end annotation

    .line 2118
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPosition(Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Variation;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Variation;->getStartPrice()Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getVariationSKU(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1204
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getVariationPosition(Ljava/util/List;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/Variation;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/Variation;->getSKU()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public guestWatchMode()Z
    .locals 1

    .line 4621
    invoke-static {}, Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;->getInstance()Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/myebay/ep/GuestWatchEpConfiguration;->isGuestWatchEnabled()Z

    move-result v0

    return v0
.end method

.method public hasAtLeastOneSelection(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 1966
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 1970
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/NameValue;

    .line 1972
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1974
    sget-object v3, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 1976
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method public hasMultiSkuValues(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1931
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_2

    .line 1934
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/ebay/mobile/Item;->variationSpecifics:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 1938
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/NameValue;

    .line 1940
    sget-object v3, Lcom/ebay/mobile/Item;->mskuNotSelectedStrings:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    .line 1942
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/data/NameValue;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1943
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    if-nez v1, :cond_2

    :cond_5
    return v1

    :cond_6
    :goto_2
    return v0
.end method

.method public isBidding()Z
    .locals 3

    .line 5130
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-static {v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5132
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    .line 5133
    iget-object v2, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->bidding:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 5134
    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->bidding:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public isBusinessTypeOkForPurchase()Z
    .locals 2

    .line 4302
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    const-string v1, "Private"

    invoke-virtual {v0, v1}, Lcom/ebay/common/Preferences;->getUserBusinessType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4303
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isBsRestrictedToBusiness:Z

    if-eqz v1, :cond_1

    const-string v1, "Commercial"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isCancelled()Ljava/lang/Integer;
    .locals 4

    .line 4850
    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->cancelStatus:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4852
    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-object v0, v0, Lcom/ebay/common/model/ItemTransaction;->cancelStatus:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "CancelPending"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "CancelComplete"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "CancelClosedUnknownRefund"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "CancelClosedForCommitment"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "CancelClosedWithRefund"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v2, "CancelClosedNoRefund"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4860
    :pswitch_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->iTransaction:Lcom/ebay/common/model/ItemTransaction;

    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isSeller:Z

    invoke-static {v0, v2, v3, v1}, Lcom/ebay/mobile/util/Util;->getAfterSalesHeaderResId(Lcom/ebay/common/model/ItemTransaction;ZILjava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 4862
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    :goto_2
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x7ab1d0a1 -> :sswitch_5
        -0x30f0dedc -> :sswitch_4
        -0x6591248 -> :sswitch_3
        -0x2ac06a4 -> :sswitch_2
        0x2d6f75f3 -> :sswitch_1
        0x55cdc59d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isClassifiedItem()Z
    .locals 2

    const-string v0, "LeadGeneration"

    .line 2129
    iget-object v1, p0, Lcom/ebay/mobile/Item;->listingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFreightFirstShippingOption()Z
    .locals 1

    .line 4966
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->isFreightFirstShippingOption()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHighBidder()Z
    .locals 2

    .line 2374
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/Item;->highBidderUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isItemEndable()Z
    .locals 1

    .line 4878
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isItemEndableWithoutSelling()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isSellToHighestBidderAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isItemEndableWithoutSelling()Z
    .locals 1

    const/16 v0, 0xc

    .line 4883
    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->isEndTimeLessThanXHours(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isSellToHighestBidderAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isListingHalfOrLeadGeneration()Z
    .locals 2

    const-string v0, "Half"

    .line 1880
    iget-object v1, p0, Lcom/ebay/mobile/Item;->listingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LeadGeneration"

    iget-object v1, p0, Lcom/ebay/mobile/Item;->listingType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isManageOffersPossible()Z
    .locals 1

    .line 1533
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isSeller:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->bestOfferEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiSkuAspectPricingEnabled()Z
    .locals 1

    .line 5150
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->doVariationsHavePriceRange:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ebay/mobile/viewitem/ep/AspectPriceEpConfiguration;->getInstance()Lcom/ebay/mobile/viewitem/ep/ExperimentDeviceConfigurationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ep/ExperimentDeviceConfigurationHelper;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOfferListAllDeclined()Z
    .locals 5

    .line 1586
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1591
    iget-object v2, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/BestOffer;

    const-string v4, "Declined"

    .line 1593
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public isOfferListAllExpired()Z
    .locals 5

    .line 1563
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1568
    iget-object v2, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/BestOffer;

    const-string v4, "Expired"

    .line 1570
    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public isOutOfStock()Z
    .locals 4

    .line 4529
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isAuctionEnded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4532
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isSingleSkuOutOfStock:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 4535
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 4538
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/Item;->variations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/Variation;

    .line 4540
    iget-boolean v3, v3, Lcom/ebay/nautilus/domain/data/Variation;->isOutOfStock:Z

    if-nez v3, :cond_3

    return v1

    :cond_4
    return v2

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v1
.end method

.method public isReturnsPaidBySeller()Z
    .locals 2

    .line 4975
    iget-object v0, p0, Lcom/ebay/mobile/Item;->rpShippingCostPaidByEnum:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ReturnShipmentPayeeEnum;

    sget-object v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ReturnShipmentPayeeEnum;->SELLER:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ReturnShipmentPayeeEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSellToHighestBidderAllowed()Z
    .locals 2

    .line 4895
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->hasReservePrice:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/ebay/mobile/Item;->bidCount:I

    if-ge v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->hasReservePrice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isReserveMet:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public isSellToHighestBidderRequired()Z
    .locals 2

    const/16 v0, 0xc

    .line 4904
    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->isEndTimeLessThanXHours(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ebay/mobile/Item;->bidCount:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isShippingServiceTimedOut(Ljava/util/List;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/ebay/nautilus/domain/net/EbayResponseError;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 5066
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/net/EbayResponseError;

    .line 5068
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->getId()I

    move-result v1

    const/16 v2, 0x61b5

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;->Warning:Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    .line 5069
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/EbayResponseError;->getSeverity()Lcom/ebay/nautilus/kernel/content/ResultStatus$Severity;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isShowFastAndFree()Z
    .locals 1

    .line 5002
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isEbayPlusV2:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    invoke-virtual {v0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->isShowFastAndFree()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStp(Ljava/util/List;)Z
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)Z"
        }
    .end annotation

    .line 4032
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isStp:Z

    .line 4033
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v1, :cond_1

    .line 4035
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4038
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariation(Ljava/lang/String;)Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4039
    iget-object v1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    .line 4040
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4042
    iget-object v1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->priceSettings:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PriceSettings;->discountPrice:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;

    .line 4043
    iget-object v3, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;->discountPriceType:Lcom/ebay/nautilus/domain/data/cos/listing/DiscountPriceTypeEnum;

    if-eqz v3, :cond_1

    .line 4045
    sget-object v3, Lcom/ebay/mobile/Item$1;->$SwitchMap$com$ebay$nautilus$domain$data$cos$listing$DiscountPriceTypeEnum:[I

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$DiscountPrice;->discountPriceType:Lcom/ebay/nautilus/domain/data/cos/listing/DiscountPriceTypeEnum;

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/data/cos/listing/DiscountPriceTypeEnum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 4056
    :pswitch_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->getOriginalPrice()Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 4052
    :pswitch_1
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->getOriginalPrice()Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isTimeLeftDisplayColorRed(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/32 v0, 0x36ee80

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isTimeLeftDisplayColorRed(Ljava/util/Date;)Z
    .locals 4

    .line 2301
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 2303
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/Item;->isTimeLeftDisplayColorRed(J)Z

    move-result p1

    return p1
.end method

.method public isUseQuantityDataModel()Z
    .locals 1

    .line 3056
    iget-object v0, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isValidShippingCountry(Ljava/lang/String;)Z
    .locals 7

    .line 1425
    iget-object v0, p0, Lcom/ebay/mobile/Item;->site:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/Item;->site:Ljava/lang/String;

    .line 1426
    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "APO/FPO"

    .line 1429
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    iget-object p1, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    const-string v0, "US"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    const-string v0, "US"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1433
    :cond_2
    iget-object v3, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    const-string v4, "Worldwide"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/ebay/mobile/Item;->isWorldwideShipping:Z

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 1438
    :cond_3
    iget-object v3, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 1441
    :cond_4
    iget-object v3, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_6

    return v2

    .line 1446
    :cond_6
    iget-object v4, p0, Lcom/ebay/mobile/Item;->shipToRegions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1448
    sget-object v6, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    :cond_8
    if-nez v3, :cond_a

    .line 1458
    iget-object v4, p0, Lcom/ebay/mobile/Item;->shipToLocations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1460
    sget-object v6, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v3, 0x1

    :cond_a
    if-eqz v3, :cond_d

    if-nez v0, :cond_d

    .line 1473
    iget-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToRegions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1475
    sget-object v5, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/ebay/mobile/Item;->shippingRegions:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v3, 0x0

    :cond_c
    if-eqz v3, :cond_d

    .line 1483
    iget-object v0, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v3, p1, 0x1

    :cond_d
    return v3

    .line 1434
    :cond_e
    :goto_2
    iget-object v3, p0, Lcom/ebay/mobile/Item;->excludeShipToLocations:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    if-nez v0, :cond_f

    .line 1435
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->isCountryExcludedViaRegion(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_10

    :cond_f
    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public isWatched()Z
    .locals 1

    const/4 v0, 0x0

    .line 4669
    check-cast v0, Lcom/ebay/mobile/viewitem/ViewItemViewData;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->isWatched(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z

    move-result v0

    return v0
.end method

.method public isWatched(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z
    .locals 2
    .param p1    # Lcom/ebay/mobile/viewitem/ViewItemViewData;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4674
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->useVlsForWatchInfo:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->guestWatchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4699
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->watched:Z

    return p1

    .line 4678
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4680
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 4686
    iget-object v0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4687
    iget-object p1, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->isWatched(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 4692
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    .line 4693
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->watching:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isWatched(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4604
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->useVlsForWatchInfo:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->guestWatchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4616
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->watched:Z

    return p1

    .line 4608
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariation(Ljava/lang/String;)Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 4610
    iget-object v1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-boolean p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->watching:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public mapLogistics(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$LogisticsPlan;",
            ">;)V"
        }
    .end annotation

    .line 4429
    new-instance v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    invoke-direct {v0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    .line 4430
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    invoke-virtual {v0, p1, p2, p0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->initialize(Landroid/content/Context;Ljava/util/List;Lcom/ebay/mobile/Item;)V

    return-void
.end method

.method public needsToSelectMultiSku(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)Z"
        }
    .end annotation

    .line 2343
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public newestBestOffer(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/BestOffer;
    .locals 2

    if-eqz p1, :cond_1

    .line 1544
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/BestOffer;

    .line 1548
    iget-object v1, p0, Lcom/ebay/mobile/Item;->sellerUserId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1551
    :cond_0
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public numberOfPendingBestOffersForSeller()I
    .locals 5

    .line 1682
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1684
    iget-object v0, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/BestOffer;

    const-string v3, "Pending"

    .line 1686
    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "BuyerBestOffer"

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    .line 1687
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "BuyerCounterOffer"

    iget-object v4, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    .line 1688
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "SellerCounterOffer"

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    .line 1689
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public numberOfUniqueBuyersWithOffersForSeller()I
    .locals 4

    .line 1726
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1727
    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1729
    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/BestOffer;

    .line 1731
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1732
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1735
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public remainingBestOffersForBuyer(Ljava/lang/String;)I
    .locals 5

    .line 1611
    iget v0, p0, Lcom/ebay/mobile/Item;->bestOfferLimit:I

    .line 1612
    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return v0

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/Item;->offers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/BestOffer;

    .line 1617
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->buyerId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1619
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    const-string v4, "BuyerBestOffer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    const-string v4, "BuyerCounterOffer"

    .line 1620
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1630
    :cond_2
    iget-object v3, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->codeType:Ljava/lang/String;

    const-string v4, "SellerCounterOffer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v3, "Accepted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1635
    iget v0, p0, Lcom/ebay/mobile/Item;->bestOfferLimit:I

    goto :goto_0

    .line 1622
    :cond_3
    :goto_1
    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/BestOffer;->status:Ljava/lang/String;

    const-string v3, "Accepted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1625
    iget v0, p0, Lcom/ebay/mobile/Item;->bestOfferLimit:I

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    if-gez v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public setFollowingSeller(Z)V
    .locals 1

    .line 5119
    iget-object v0, p0, Lcom/ebay/mobile/Item;->userToListingRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;

    if-eqz v0, :cond_0

    .line 5120
    iget-object v0, p0, Lcom/ebay/mobile/Item;->userToListingRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;

    iput-boolean p1, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;->followingSeller:Z

    :cond_0
    return-void
.end method

.method public setWatched(Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;Z)V
    .locals 2

    .line 4709
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->useVlsForWatchInfo:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->guestWatchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4731
    :cond_0
    iput-boolean p2, p0, Lcom/ebay/mobile/Item;->watched:Z

    goto :goto_1

    .line 4711
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 4713
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 4717
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/EbayItemIdAndVariationSpecifics;->variationSpecifics:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->getMutable(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariationId(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4720
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getVariation(Ljava/lang/String;)Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4722
    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iput-boolean p2, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->watching:Z

    goto :goto_1

    .line 4727
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iput-boolean p2, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->watching:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setupDisplayPercentOff(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V
    .locals 2
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/ebay/mobile/viewitem/ViewItemViewData;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 3951
    invoke-virtual {p0, p5}, Lcom/ebay/mobile/Item;->getDiscountPercentage(Ljava/util/List;)Ljava/lang/Double;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 3953
    invoke-virtual {p5}, Ljava/lang/Double;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 3956
    new-instance p5, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {p5, p4}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3957
    new-instance p4, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {p4, p3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3958
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, p3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 3959
    invoke-virtual {v0, p5}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->subtract(Lcom/ebay/nautilus/domain/data/CurrencyAmount;)Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    move-result-object p3

    .line 3961
    iget p2, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->savingsRate:I

    if-nez p2, :cond_1

    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result p2

    if-nez p2, :cond_1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 3964
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsDouble()D

    move-result-wide p2

    invoke-virtual {p4}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->getValueAsDouble()D

    move-result-wide p4

    div-double/2addr p2, p4

    mul-double p2, p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_2

    .line 3969
    invoke-static {p1, p2}, Lcom/ebay/mobile/Item;->getSavingsPercentString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPricePercentOff:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public setupDisplayPercentOff(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/NameValue;",
            ">;)V"
        }
    .end annotation

    .line 3981
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/Item;->getDiscountPercentage(Ljava/util/List;)Ljava/lang/Double;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 3983
    invoke-virtual {p2}, Ljava/lang/Double;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_1

    .line 3986
    invoke-static {p1, p2}, Lcom/ebay/mobile/Item;->getSavingsPercentString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPricePercentOff:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public setupDisplayStrings(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V
    .locals 11

    .line 2501
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 2503
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2506
    iget-object v0, p0, Lcom/ebay/mobile/Item;->site:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    .line 2507
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v1

    .line 2508
    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 2514
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2515
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2516
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    .line 2518
    invoke-direct {p0, v1}, Lcom/ebay/mobile/Item;->getCurrencyUtilFlag(Ljava/lang/String;)I

    move-result v9

    .line 2523
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ebay/mobile/Item;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_1

    .line 2524
    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2527
    :cond_1
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v0, :cond_3

    .line 2529
    iget-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    .line 2530
    iget-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2531
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/Item;->maxVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_3

    .line 2532
    iget-object v0, p0, Lcom/ebay/mobile/Item;->maxVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->maxVariationPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :cond_3
    const-string v0, ""

    .line 2539
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v2, :cond_4

    .line 2540
    invoke-direct {p0}, Lcom/ebay/mobile/Item;->getTransactionPriceString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2543
    :cond_4
    iget-boolean v2, p0, Lcom/ebay/mobile/Item;->isBidOnly:Z

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isClassifiedItem()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    .line 2547
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/Item;->getBinPriceString(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2548
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 2550
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2552
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 2553
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/ebay/mobile/Item;->displayPriceContentDescription:Ljava/lang/String;

    goto :goto_2

    .line 2544
    :cond_6
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/Item;->getCurrentPriceString(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Ljava/lang/String;

    move-result-object v0

    .line 2558
    :cond_7
    :goto_2
    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPrice:Ljava/lang/String;

    .line 2563
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v0, :cond_8

    .line 2564
    invoke-direct {p0, p2}, Lcom/ebay/mobile/Item;->getTransactionPrice(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_4

    .line 2567
    :cond_8
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isBidOnly:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isClassifiedItem()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3

    .line 2569
    :cond_9
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_b

    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/Item;->hasMultiSkuValues(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2571
    iget-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->maxVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-virtual {v0, v2}, Lcom/ebay/nautilus/domain/data/ItemCurrency;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2574
    iget-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_4

    .line 2579
    :cond_a
    iget-object v0, p0, Lcom/ebay/mobile/Item;->minVariationPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p0, Lcom/ebay/mobile/Item;->maxVariationPriceConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p0, v6, v0, v2}, Lcom/ebay/mobile/Item;->buildConvertedRangePrice(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    goto :goto_4

    .line 2583
    :cond_b
    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_4

    .line 2568
    :cond_c
    :goto_3
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/Item;->getCurrentPrice(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2587
    :goto_4
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    .line 2588
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2589
    iput-boolean v7, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    .line 2594
    :cond_d
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_e

    .line 2596
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2597
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_e

    .line 2598
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceConvertedCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v0, v9}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceConverted:Ljava/lang/String;

    .line 2604
    :cond_e
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isBidOnly:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isBidWithBin:Z

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isClassifiedItem()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    iget-object v0, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_10

    .line 2606
    iget-object v0, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v0, v9}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayCurrentPrice:Ljava/lang/String;

    .line 2607
    iget-object v0, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2608
    iget-object v0, p0, Lcom/ebay/mobile/Item;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_10

    .line 2609
    iget-object v0, p0, Lcom/ebay/mobile/Item;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v0, v9}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayCurrentPriceConverted:Ljava/lang/String;

    .line 2615
    :cond_10
    invoke-static {v6, p0}, Lcom/ebay/mobile/Item;->setupShippingDisplayPrices(Landroid/content/Context;Lcom/ebay/mobile/Item;)V

    .line 2620
    invoke-static {p1, p0}, Lcom/ebay/mobile/Item;->setupShippingDisplayPricesConverted(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/Item;)V

    .line 2622
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v10

    .line 2623
    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->useNewHighlights:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v10, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2624
    invoke-direct {p0, v6}, Lcom/ebay/mobile/Item;->setupWhyToBuyDisplayStrings(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    .line 2627
    :cond_11
    invoke-static {p0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->getEstimatedShippingDates(Lcom/ebay/mobile/Item;)[Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 2630
    new-instance v1, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    aget-object v2, v0, v7

    aget-object v0, v0, v8

    invoke-direct {v1, v6, v2, v0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)V

    .line 2631
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    xor-int/2addr v0, v8

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setReturnJustDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2632
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setIncludeDayOfWeek(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2633
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setBoldDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2634
    invoke-virtual {v1, v8}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setUseLocaleDateFormatOverrides(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2637
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->isDateRange()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2638
    invoke-virtual {v1, v8}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setDayOfWeekLongFormat(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2640
    :cond_12
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isGetItByVerbiageEnabled:Z

    if-eqz v0, :cond_13

    const v0, 0x7f120541

    const v2, 0x7f120542

    const v3, 0x7f120543

    .line 2641
    invoke-virtual {v1, v3, v3, v0, v2}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setStringIdsToUse(IIII)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2644
    :cond_13
    invoke-virtual {v1}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->buildSpannable()Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayShippingEstimatedDelivery:Landroid/text/Spannable;

    .line 2647
    invoke-static {v6}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2649
    invoke-virtual {v1, v8}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setAccessibilityEnabled(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2650
    invoke-virtual {v1, v7}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setReturnJustDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2651
    invoke-virtual {v1}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->buildSpannable()Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayShippingEstimatedDeliveryContentDescription:Landroid/text/Spannable;

    .line 2655
    :cond_14
    sget-object v0, Lcom/ebay/mobile/dcs/Dcs$App$B;->guaranteedDelivery:Lcom/ebay/mobile/dcs/Dcs$App$B;

    invoke-interface {v10, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 2656
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->setupGuaranteedByStrings(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_5

    .line 2657
    :cond_15
    iget-object v0, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    if-eqz v0, :cond_16

    .line 2658
    iput-object v1, p0, Lcom/ebay/mobile/Item;->guaranteedDeliveryStrings:Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;

    .line 2660
    :cond_16
    :goto_5
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/Item;->setupSTP(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V

    .line 2663
    iget-object v0, p0, Lcom/ebay/mobile/Item;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-nez v0, :cond_18

    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_17

    goto :goto_6

    .line 2673
    :cond_17
    iget-object v0, p0, Lcom/ebay/mobile/Item;->discountPercentage:Ljava/lang/Double;

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_1b

    .line 2674
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v0}, Lcom/ebay/mobile/Item;->setupDisplayPercentOff(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_a

    .line 2666
    :cond_18
    :goto_6
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isMultiSku:Z

    if-eqz v0, :cond_19

    .line 2667
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    move-object v5, v0

    goto :goto_7

    :cond_19
    move-object v5, v1

    .line 2669
    :goto_7
    iget-object v0, p0, Lcom/ebay/mobile/Item;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ebay/mobile/Item;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    :goto_8
    move-object v3, v0

    goto :goto_9

    :cond_1a
    iget-object v0, p2, Lcom/ebay/mobile/viewitem/ViewItemViewData;->originalRetailPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    goto :goto_8

    :goto_9
    iget-object v4, p0, Lcom/ebay/mobile/Item;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-object v0, p0

    move-object v1, v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ebay/mobile/Item;->setupDisplayPercentOff(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/nautilus/domain/data/ItemCurrency;Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/List;)V

    .line 2677
    :cond_1b
    :goto_a
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isGspItem:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1d

    .line 2680
    iget-object v0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object v0, v0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->importCharge:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->importCharges:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2681
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    iget-object v1, p0, Lcom/ebay/mobile/Item;->importCharges:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {v0, v1}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1c

    const v0, 0x7f12052d

    .line 2683
    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceImportCharges:Ljava/lang/String;

    .line 2684
    iget-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceImportCharges:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceImportChargesConverted:Ljava/lang/String;

    goto :goto_b

    .line 2688
    :cond_1c
    iget-object v0, p0, Lcom/ebay/mobile/Item;->importCharges:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceImportChargesCurrency:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2689
    iget-object v0, p0, Lcom/ebay/mobile/Item;->importCharges:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v0, v9}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceImportCharges:Ljava/lang/String;

    .line 2690
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isDisplayPriceCurrencyCode:Z

    if-eqz v0, :cond_1d

    .line 2692
    iget-object v0, p0, Lcom/ebay/mobile/Item;->importCharges:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {p1, v0}, Lcom/ebay/mobile/Item;->convertCurrency(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/data/ItemCurrency;)Lcom/ebay/nautilus/domain/data/ItemCurrency;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->importChargesConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 2693
    iget-object v0, p0, Lcom/ebay/mobile/Item;->importChargesConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1d

    .line 2694
    iget-object v0, p0, Lcom/ebay/mobile/Item;->importChargesConverted:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-static {v0, v9}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPriceImportChargesConverted:Ljava/lang/String;

    .line 2701
    :cond_1d
    :goto_b
    iget-object v0, p0, Lcom/ebay/mobile/Item;->buyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->getUnitPriceString(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPricePerUnit:Ljava/lang/String;

    .line 2702
    iget-object v0, p0, Lcom/ebay/mobile/Item;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_1e

    .line 2703
    iget-object v0, p0, Lcom/ebay/mobile/Item;->convertedBuyItNowPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/Item;->getUnitPriceString(Lcom/ebay/nautilus/domain/data/ItemCurrency;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/Item;->displayPricePerUnitConverted:Ljava/lang/String;

    .line 2706
    :cond_1e
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isHighlightsEnoughToDisplay:Z

    if-eqz v0, :cond_1f

    .line 2707
    iput-boolean v7, p0, Lcom/ebay/mobile/Item;->isShowItemCard:Z

    goto :goto_c

    .line 2709
    :cond_1f
    invoke-direct {p0, p1}, Lcom/ebay/mobile/Item;->setupItemCard(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 2711
    :goto_c
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isEbayPlusEligible:Z

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isEbayPlusMember:Z

    if-nez v0, :cond_20

    .line 2712
    invoke-direct {p0, p1, p0}, Lcom/ebay/mobile/Item;->setupEbayPlusNonMember(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/Item;)V

    .line 2714
    :cond_20
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isHotnessCharity:Z

    if-eqz p1, :cond_21

    .line 2715
    invoke-direct {p0, v6}, Lcom/ebay/mobile/Item;->setupHotnessCharityString(Landroid/content/Context;)V

    .line 2717
    :cond_21
    invoke-direct {p0, v6}, Lcom/ebay/mobile/Item;->setupBuyerResponsibleForLogisticsString(Landroid/content/Context;)V

    .line 2720
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isBidOnly:Z

    if-nez p1, :cond_22

    sget-object p1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->useNewQuantityAndWatchersRule:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v10, p1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 2721
    invoke-direct {p0, v6, p2}, Lcom/ebay/mobile/Item;->setupQuantityAndWatchersString(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V

    .line 2724
    :cond_22
    iget-object p1, p0, Lcom/ebay/mobile/Item;->quantityStringPrimary:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2725
    invoke-direct {p0, v6, p2}, Lcom/ebay/mobile/Item;->setupQuantity(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;)V

    .line 2727
    :cond_23
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isEbayPlusV2:Z

    if-eqz p1, :cond_24

    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isEbayPlusMember:Z

    if-nez p1, :cond_24

    .line 2729
    invoke-virtual {p0, v6, v8}, Lcom/ebay/mobile/Item;->getUpsellMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPlusMainUpsell:Ljava/lang/String;

    .line 2730
    invoke-virtual {p0, v6, v7}, Lcom/ebay/mobile/Item;->getUpsellMessage(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/Item;->displayPlusSpokeUpsell:Ljava/lang/String;

    :cond_24
    return-void
.end method

.method public setupGuaranteedStrings(Landroid/content/Context;Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;Ljava/util/Date;Ljava/util/Date;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    const v4, 0x7f04015a

    const v5, 0x7f0600d5

    .line 2837
    invoke-static {v1, v4, v5}, Lcom/ebay/nautilus/shell/util/ThemeUtil;->resolveThemeColor(Landroid/content/Context;II)I

    move-result v4

    .line 2840
    new-instance v5, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v3, v6}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)V

    const/4 v3, 0x1

    .line 2842
    invoke-virtual {v5, v3}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setReturnJustDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2843
    invoke-virtual {v5, v3}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setIncludeDayOfWeek(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    const/4 v7, 0x0

    .line 2844
    invoke-virtual {v5, v7}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setBoldDates(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    move/from16 v8, p5

    .line 2845
    invoke-virtual {v5, v8}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setDayOfWeekLongFormat(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2848
    invoke-virtual {v5}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->build()Ljava/lang/String;

    move-result-object v8

    .line 2849
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v7

    const v10, 0x7f12058c

    invoke-virtual {v1, v10, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2850
    invoke-direct {v0, v1, v9, v8, v4}, Lcom/ebay/mobile/Item;->setColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    iput-object v9, v2, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;->displayGuaranteedByNoCutOff:Landroid/text/Spannable;

    const/4 v9, 0x2

    const v11, 0x7f120589

    if-eqz p4, :cond_0

    .line 2854
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    invoke-static {}, Lcom/ebay/nautilus/domain/net/EbayResponse;->currentHostTime()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 2856
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v8, v6, v7

    const-string v12, "%s"

    aput-object v12, v6, v3

    invoke-virtual {v1, v11, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2859
    invoke-direct {v0, v1, v6, v8, v4}, Lcom/ebay/mobile/Item;->setColorSpan(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    iput-object v4, v2, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;->displayGuaranteedByCutOff:Landroid/text/Spannable;

    const/4 v4, 0x1

    goto :goto_0

    .line 2862
    :cond_0
    iput-object v6, v2, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;->displayGuaranteedByCutOff:Landroid/text/Spannable;

    const/4 v4, 0x0

    .line 2865
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/ebay/mobile/util/Util;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2867
    invoke-virtual {v5, v3}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setAccessibilityEnabled(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2868
    invoke-virtual {v5, v3}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setDayOfWeekLongFormat(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    .line 2869
    invoke-virtual {v5, v3}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->setMonthLongFormat(Z)Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;

    if-eqz v4, :cond_1

    .line 2872
    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->build()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "%s"

    aput-object v5, v4, v3

    invoke-virtual {v1, v11, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2874
    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/ebay/mobile/util/EstimatedDeliveryDateBuilder;->build()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2876
    :goto_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v3, v2, Lcom/ebay/mobile/Item$GuaranteedDeliveryStrings;->displayGuaranteedByContentDescription:Landroid/text/Spannable;

    :cond_2
    return-void
.end method

.method public setupWatchStatus(Lcom/ebay/mobile/viewitem/ViewItemViewData;)V
    .locals 1

    .line 4656
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->isWatched(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4657
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isAuctionEnded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ebay/mobile/Item;->isShowWatch:Z

    .line 4660
    iput-boolean p1, p0, Lcom/ebay/mobile/Item;->isShowUnwatch:Z

    return-void
.end method

.method public shouldGetOfferList()Z
    .locals 5

    .line 1744
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->bestOfferEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/ebay/mobile/Item;->bestOfferCount:I

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/common/view/util/EbayCountryManager$Default;->supportsBestOffer(Lcom/ebay/nautilus/domain/EbayCountry;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1747
    :cond_0
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isSeller:Z

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/Item;->userToListingRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ebay/mobile/Item;->userToListingRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipSummary;->userToListingRelationship:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipEnum;

    sget-object v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipEnum;->NONE:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToListingRelationshipEnum;

    if-ne v0, v3, :cond_3

    .line 1755
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1757
    iget-object v0, p0, Lcom/ebay/mobile/Item;->listingVariations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;

    .line 1759
    iget-object v4, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    if-eqz v4, :cond_1

    iget-object v3, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$ItemVariation;->userToItemVariationRelationshipSummary:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$UserToItemVariationRelationshipSummary;->bestOfferStatus:Ljava/lang/String;

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public showBuyAnother(Landroid/content/Context;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z
    .locals 0

    .line 1890
    invoke-virtual {p0, p2}, Lcom/ebay/mobile/Item;->showBuyAnotherWithoutRegardToPayPal(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/ebay/mobile/Item;->removePayPalDependencies:Z

    if-nez p2, :cond_0

    .line 1891
    invoke-static {p1, p0}, Lcom/ebay/mobile/ItemViewPayPalable;->canUsePaypal(Landroid/content/Context;Lcom/ebay/mobile/Item;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public showBuyAnotherWithoutRegardToPayPal(Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z
    .locals 1

    .line 1906
    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isSeller:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isAuctionEnded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isListingTypeBin:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->nameValueList:Ljava/util/ArrayList;

    .line 1907
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/Item;->getQuantityAvailable(Ljava/util/ArrayList;)I

    move-result p1

    if-lez p1, :cond_0

    .line 1908
    invoke-virtual {p0}, Lcom/ebay/mobile/Item;->isListingHalfOrLeadGeneration()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updatePaymentReminderState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4288
    sget-object p1, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_SENT:Lcom/ebay/mobile/Item$PaymentReminderState;

    iput-object p1, p0, Lcom/ebay/mobile/Item;->paymentReminderState:Lcom/ebay/mobile/Item$PaymentReminderState;

    goto :goto_0

    .line 4289
    :cond_0
    iget-boolean p1, p0, Lcom/ebay/mobile/Item;->isPaymentReminderActivationTimeElaspsed:Z

    if-eqz p1, :cond_1

    .line 4290
    sget-object p1, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_ENABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    iput-object p1, p0, Lcom/ebay/mobile/Item;->paymentReminderState:Lcom/ebay/mobile/Item$PaymentReminderState;

    goto :goto_0

    .line 4292
    :cond_1
    sget-object p1, Lcom/ebay/mobile/Item$PaymentReminderState;->STATE_DISABLED:Lcom/ebay/mobile/Item$PaymentReminderState;

    iput-object p1, p0, Lcom/ebay/mobile/Item;->paymentReminderState:Lcom/ebay/mobile/Item$PaymentReminderState;

    :goto_0
    return-void
.end method
