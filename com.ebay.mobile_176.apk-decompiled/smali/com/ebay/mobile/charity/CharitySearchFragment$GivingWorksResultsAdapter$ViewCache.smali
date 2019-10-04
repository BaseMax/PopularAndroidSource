.class public final Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;
.super Ljava/lang/Object;
.source "CharitySearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewCache"
.end annotation


# instance fields
.field public final image:Lcom/ebay/android/widget/RemoteImageView;

.field public final imageProgressBar:Landroid/view/View;

.field public final text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0708

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ebay/android/widget/RemoteImageView;

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->image:Lcom/ebay/android/widget/RemoteImageView;

    const v0, 0x7f0a0709

    .line 406
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->imageProgressBar:Landroid/view/View;

    const v0, 0x7f0a0713

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->text:Landroid/widget/TextView;

    return-void
.end method
