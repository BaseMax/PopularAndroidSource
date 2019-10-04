.class Lcom/ebay/mobile/activities/UserDetailActivity$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/UserDetailActivity;->setRating(Lcom/ebay/nautilus/domain/data/UserProfile$AverageRatingDetails;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/UserDetailActivity;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/ebay/mobile/activities/UserDetailActivity$3;->this$0:Lcom/ebay/mobile/activities/UserDetailActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1097
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p1, ""

    .line 1099
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
