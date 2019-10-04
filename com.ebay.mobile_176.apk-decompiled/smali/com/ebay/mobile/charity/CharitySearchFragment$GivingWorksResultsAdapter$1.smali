.class Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$1;
.super Ljava/lang/Object;
.source "CharitySearchFragment.java"

# interfaces
.implements Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

.field final synthetic val$cache:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$1;->this$0:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter;

    iput-object p2, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$1;->val$cache:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteImageLoaded(Lcom/ebay/android/widget/RemoteImageView;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;)V
    .locals 0

    .line 389
    iget-object p1, p0, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$1;->val$cache:Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;

    iget-object p1, p1, Lcom/ebay/mobile/charity/CharitySearchFragment$GivingWorksResultsAdapter$ViewCache;->imageProgressBar:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
