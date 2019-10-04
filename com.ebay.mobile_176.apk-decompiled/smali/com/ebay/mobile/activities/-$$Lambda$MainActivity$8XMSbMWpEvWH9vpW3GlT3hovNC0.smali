.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Landroidx/appcompat/widget/Toolbar;

.field private final synthetic f$1:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;->f$0:Landroidx/appcompat/widget/Toolbar;

    iput-object p2, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;->f$1:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;->f$0:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/ebay/mobile/activities/-$$Lambda$MainActivity$8XMSbMWpEvWH9vpW3GlT3hovNC0;->f$1:Landroidx/appcompat/widget/Toolbar;

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/activities/MainActivity;->lambda$executeToolbarBarRecolor$0(Landroidx/appcompat/widget/Toolbar;Landroidx/appcompat/widget/Toolbar;Landroid/animation/ValueAnimator;)V

    return-void
.end method
