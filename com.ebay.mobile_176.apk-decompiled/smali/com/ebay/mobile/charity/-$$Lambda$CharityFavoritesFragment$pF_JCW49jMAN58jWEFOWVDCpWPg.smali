.class public final synthetic Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$pF_JCW49jMAN58jWEFOWVDCpWPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/ebay/android/widget/RemoteImageView$OnRemoteImageLoadedListener;


# instance fields
.field private final synthetic f$0:Landroid/widget/ProgressBar;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$pF_JCW49jMAN58jWEFOWVDCpWPg;->f$0:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public final onRemoteImageLoaded(Lcom/ebay/android/widget/RemoteImageView;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;)V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/charity/-$$Lambda$CharityFavoritesFragment$pF_JCW49jMAN58jWEFOWVDCpWPg;->f$0:Landroid/widget/ProgressBar;

    invoke-static {v0, p1, p2, p3}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->lambda$renderCharity$1(Landroid/widget/ProgressBar;Lcom/ebay/android/widget/RemoteImageView;Ljava/lang/String;Lcom/ebay/nautilus/domain/data/image/ImageData;)V

    return-void
.end method
