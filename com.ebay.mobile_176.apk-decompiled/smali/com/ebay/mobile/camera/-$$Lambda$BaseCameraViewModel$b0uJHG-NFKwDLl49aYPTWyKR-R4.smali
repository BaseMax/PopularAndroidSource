.class public final synthetic Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/camera/BaseCameraViewModel;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/camera/BaseCameraViewModel;Landroid/net/Uri;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;->f$0:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    iput-object p2, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;->f$2:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;->f$0:Lcom/ebay/mobile/camera/BaseCameraViewModel;

    iget-object v1, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/ebay/mobile/camera/-$$Lambda$BaseCameraViewModel$b0uJHG-NFKwDLl49aYPTWyKR-R4;->f$2:[B

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/camera/BaseCameraViewModel;->lambda$processBitmap$0(Lcom/ebay/mobile/camera/BaseCameraViewModel;Landroid/net/Uri;[B)V

    return-void
.end method
