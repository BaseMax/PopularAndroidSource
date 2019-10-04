.class Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;
.super Ljava/lang/Object;
.source "SellingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/SellingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AugmentedListItemCardResources"
.end annotation


# instance fields
.field private final exampleText:Ljava/lang/String;

.field private final imageResource:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput p1, p0, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;->imageResource:I

    .line 332
    iput-object p2, p0, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;->exampleText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExampleText()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;->exampleText:Ljava/lang/String;

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/ebay/mobile/activities/SellingActivity$AugmentedListItemCardResources;->imageResource:I

    return v0
.end method
