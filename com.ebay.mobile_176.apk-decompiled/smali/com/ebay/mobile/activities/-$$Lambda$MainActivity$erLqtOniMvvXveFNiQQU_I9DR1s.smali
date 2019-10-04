.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$erLqtOniMvvXveFNiQQU_I9DR1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Landroid/view/Window;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$erLqtOniMvvXveFNiQQU_I9DR1s;->f$0:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$erLqtOniMvvXveFNiQQU_I9DR1s;->f$0:Landroid/view/Window;

    invoke-static {v0, p1}, Lcom/ebay/mobile/activities/MainActivity;->lambda$executeStatusBarRecolor$2(Landroid/view/Window;Landroid/animation/ValueAnimator;)V

    return-void
.end method
