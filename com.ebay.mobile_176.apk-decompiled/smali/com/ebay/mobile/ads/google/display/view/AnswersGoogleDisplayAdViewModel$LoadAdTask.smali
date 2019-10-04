.class final Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;
.super Lcom/ebay/nautilus/domain/content/AsynchronousTask;
.source "AnswersGoogleDisplayAdViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadAdTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/content/AsynchronousTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field request:Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

.field final synthetic this$0:Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->this$0:Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    invoke-direct {p0}, Lcom/ebay/nautilus/domain/content/AsynchronousTask;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->request:Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->doInBackground()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doInBackground()Ljava/lang/Void;
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->this$0:Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    invoke-static {v0}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->access$200(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;)Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->this$0:Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    invoke-static {v1}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->access$000(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->request:Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;

    iget-object v3, p0, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel$LoadAdTask;->this$0:Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;

    invoke-static {v3}, Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;->access$100(Lcom/ebay/mobile/ads/google/display/view/AnswersGoogleDisplayAdViewModel;)Lcom/ebay/mobile/ads/google/display/listeners/pagelisteners/AnswersEbayGoogleDisplayAdListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->loadAd(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;)V

    const/4 v0, 0x0

    return-object v0
.end method
