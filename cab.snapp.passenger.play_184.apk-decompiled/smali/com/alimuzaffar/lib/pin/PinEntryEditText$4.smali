.class final Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v0, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->m:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 538
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    return-void
.end method
