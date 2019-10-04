.class final Lcom/getkeepsafe/taptargetview/a$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/getkeepsafe/taptargetview/a;->build()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/getkeepsafe/taptargetview/a;


# direct methods
.method constructor <init>(Lcom/getkeepsafe/taptargetview/a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/getkeepsafe/taptargetview/a$2;->a:Lcom/getkeepsafe/taptargetview/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/getkeepsafe/taptargetview/a$2;->a:Lcom/getkeepsafe/taptargetview/a;

    iget-object p1, p1, Lcom/getkeepsafe/taptargetview/a;->b:Lcom/getkeepsafe/taptargetview/a$a;

    invoke-interface {p1}, Lcom/getkeepsafe/taptargetview/a$a;->onEnd()V

    return-void
.end method
