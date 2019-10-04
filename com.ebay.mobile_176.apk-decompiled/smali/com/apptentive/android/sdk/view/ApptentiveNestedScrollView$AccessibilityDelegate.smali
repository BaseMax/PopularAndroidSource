.class Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView$AccessibilityDelegate;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "ApptentiveNestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1877
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1934
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1935
    check-cast p1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;

    .line 1936
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1937
    invoke-static {p2}, Landroidx/core/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    move-result-object p2

    .line 1938
    invoke-static {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->access$000(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1939
    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 1940
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setScrollX(I)V

    .line 1941
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setScrollY(I)V

    .line 1942
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(I)V

    .line 1943
    invoke-static {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->access$000(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    .line 1915
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1916
    check-cast p1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;

    .line 1917
    const-class v0, Landroid/widget/ScrollView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1918
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1919
    invoke-static {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->access$000(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    .line 1921
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1922
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x2000

    .line 1923
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1925
    :cond_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p1

    if-ge p1, v0, :cond_1

    const/16 p1, 0x1000

    .line 1926
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    .line 1880
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 1883
    :cond_0
    check-cast p1, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;

    .line 1884
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->isEnabled()Z

    move-result p3

    const/4 v1, 0x0

    if-nez p3, :cond_1

    return v1

    :cond_1
    const/16 p3, 0x1000

    if-eq p2, p3, :cond_4

    const/16 p3, 0x2000

    if-eq p2, p3, :cond_2

    return v1

    .line 1900
    :cond_2
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1901
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1902
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p3

    sub-int/2addr p3, p2

    invoke-static {p3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1903
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p3

    if-eq p2, p3, :cond_3

    .line 1904
    invoke-virtual {p1, v1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->smoothScrollTo(II)V

    return v0

    :cond_3
    return v1

    .line 1889
    :cond_4
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1890
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    .line 1891
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p3

    add-int/2addr p3, p2

    .line 1892
    invoke-static {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->access$000(Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;)I

    move-result p2

    .line 1891
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1893
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->getScrollY()I

    move-result p3

    if-eq p2, p3, :cond_5

    .line 1894
    invoke-virtual {p1, v1, p2}, Lcom/apptentive/android/sdk/view/ApptentiveNestedScrollView;->smoothScrollTo(II)V

    return v0

    :cond_5
    return v1
.end method
