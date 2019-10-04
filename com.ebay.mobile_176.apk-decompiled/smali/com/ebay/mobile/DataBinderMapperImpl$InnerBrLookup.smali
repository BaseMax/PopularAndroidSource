.class Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;
.super Ljava/lang/Object;
.source "DataBinderMapperImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/DataBinderMapperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static final sKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5476
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x4f

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    .line 5479
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "_all"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5480
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "colorStateList"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5481
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "expanded"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5482
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxContainerContent"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5483
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "data"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5484
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxContent"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5485
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "expandable"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5486
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "headerViewModel"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5487
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxItemClickListener"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5488
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxComponentClickListener"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5489
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "selectedIndex"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5490
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "userRate"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5491
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "selected"

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5492
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxErrorContent"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5493
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "offerPerText"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5494
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "zipCodeTextualEntry"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5495
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "nestedScrollingEnabled"

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5496
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "callToAction"

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5497
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "empty"

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5498
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "contentProvider"

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5499
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxCouponClickListener"

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5500
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "indentLevel"

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5501
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "errorAsset"

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5502
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "showKillSwitchError"

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5503
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxClickListener"

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5504
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "refinement"

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5505
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "locked"

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5506
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "primaryButtonText"

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5507
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "group"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5508
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "presenter"

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5509
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "editMotorItemClickListener"

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5510
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "selectedItem"

    const/16 v2, 0x1f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5511
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "primaryAccessibilityText"

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5512
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "confirmation"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5513
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "successMessage"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5514
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxExtra"

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5515
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "listViewSelected"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5516
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "adVisibility"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5517
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "header"

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5518
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "viewModel"

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5519
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "galleryViewSelected"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5520
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "killSwitchError"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5521
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "components"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5522
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "textualEntryListener"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5523
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxSearchContent"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5524
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "showErrorMessage"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5525
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "showMessagingLayout"

    const/16 v2, 0x2e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5526
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "priceGuidanceMessage"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5527
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "secondaryLabel"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5528
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "secondaryKillSwitchText"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5529
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "error"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5530
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "enabled"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5531
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "switchEnabled"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5532
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "lockDisplayed"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5533
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxInfoPresenter"

    const/16 v2, 0x36

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5534
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "showPriceGuidance"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5535
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "contentDescription"

    const/16 v2, 0x38

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5536
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "merchVisibility"

    const/16 v2, 0x39

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5537
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "swipeRefreshListener"

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5538
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "characterCount"

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5539
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "camera"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5540
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "clickListener"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5541
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "accessoryLabel"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5542
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "showConvertedCurrency"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5543
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "secondaryAccessibilityText"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5544
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "errorMessage"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5545
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "label"

    const/16 v2, 0x42

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5546
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "message"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5547
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxFeedbackContent"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5548
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "uxSwipeCallback"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5549
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "secondaryButtonText"

    const/16 v2, 0x46

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5550
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "contentDescriptionForCount"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5551
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "textEntry"

    const/16 v2, 0x48

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5552
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "quantityButtonText"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5553
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string/jumbo v1, "quantityDisclaimer"

    const/16 v2, 0x4a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5554
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "messageButtonText"

    const/16 v2, 0x4b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5555
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "bulkSavingsInfo"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5556
    sget-object v0, Lcom/ebay/mobile/DataBinderMapperImpl$InnerBrLookup;->sKeys:Landroid/util/SparseArray;

    const-string v1, "convertedCurrency"

    const/16 v2, 0x4d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
