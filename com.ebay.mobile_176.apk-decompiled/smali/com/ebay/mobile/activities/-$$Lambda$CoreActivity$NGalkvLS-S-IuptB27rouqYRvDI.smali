.class public final synthetic Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/activities/CoreActivity;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;->f$0:Lcom/ebay/mobile/activities/CoreActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;->f$0:Lcom/ebay/mobile/activities/CoreActivity;

    iget-object v1, p0, Lcom/ebay/mobile/activities/-$$Lambda$CoreActivity$NGalkvLS-S-IuptB27rouqYRvDI;->f$1:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Lcom/ebay/mobile/activities/CoreActivity;->lambda$addNavigationView$1(Lcom/ebay/mobile/activities/CoreActivity;Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
