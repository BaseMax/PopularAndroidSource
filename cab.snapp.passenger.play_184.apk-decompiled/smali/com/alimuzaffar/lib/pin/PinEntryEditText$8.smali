.class final Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    .line 591
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 599
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object p1, p1, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;

    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$a;->onPinEntered(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
