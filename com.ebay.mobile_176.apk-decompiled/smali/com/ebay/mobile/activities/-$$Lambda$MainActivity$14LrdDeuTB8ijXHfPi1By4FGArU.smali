.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/activities/MainActivity;

.field private final synthetic f$1:Landroid/widget/ImageView;

.field private final synthetic f$2:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/activities/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;->f$0:Lcom/ebay/mobile/activities/MainActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;->f$1:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;->f$2:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;->f$0:Lcom/ebay/mobile/activities/MainActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;->f$1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$14LrdDeuTB8ijXHfPi1By4FGArU;->f$2:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p1}, Lcom/ebay/mobile/activities/MainActivity;->lambda$executeToolbarBarRecolor$1(Lcom/ebay/mobile/activities/MainActivity;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
