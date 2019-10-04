.class public final synthetic Lcom/ebay/mobile/camera/-$$Lambda$58I_Bl9WgnM3tmOavJr7u_JW30o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/camera/BaseCameraViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/camera/BaseCameraViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/-$$Lambda$58I_Bl9WgnM3tmOavJr7u_JW30o;->f$0:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    return-void
.end method


# virtual methods
.method public final onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/camera/-$$Lambda$58I_Bl9WgnM3tmOavJr7u_JW30o;->f$0:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->onMediaScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method
