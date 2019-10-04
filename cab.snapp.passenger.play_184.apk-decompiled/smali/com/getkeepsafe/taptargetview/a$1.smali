.class final Lcom/getkeepsafe/taptargetview/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/a;->onUpdate(Lcom/getkeepsafe/taptargetview/a$b;)Lcom/getkeepsafe/taptargetview/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/a$b;

.field final synthetic b:Lcom/getkeepsafe/taptargetview/a;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/a;Lcom/getkeepsafe/taptargetview/a$b;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/a$1;->b:Lcom/getkeepsafe/taptargetview/a;

    iput-object p2, p0, Lcom/getkeepsafe/taptargetview/a$1;->a:Lcom/getkeepsafe/taptargetview/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/getkeepsafe/taptargetview/a$1;->a:Lcom/getkeepsafe/taptargetview/a$b;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p1}, Lcom/getkeepsafe/taptargetview/a$b;->onUpdate(F)V

    return-void
.end method
