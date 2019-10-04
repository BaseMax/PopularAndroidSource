.class final Lcom/ebay/mobile/activities/CoreLayoutInflater;
.super Ljava/lang/Object;
.source "CoreLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field private final delegate:Landroidx/appcompat/app/AppCompatDelegate;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegate;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/ebay/mobile/activities/CoreLayoutInflater;->delegate:Landroidx/appcompat/app/AppCompatDelegate;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    const-string v0, "android.webkit.WebView"

    .line 50
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "WebView"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "androidx.viewpager.widget.ViewPager"

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance p1, Lcom/ebay/nautilus/shell/widget/EbayViewPager;

    invoke-direct {p1, p3, p4}, Lcom/ebay/nautilus/shell/widget/EbayViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    :cond_1
    const-string v0, "com.google.android.material.textfield.TextInputEditText"

    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 55
    new-instance p1, Lcom/ebay/android/widget/EbayTextInputEditText;

    invoke-direct {p1, p3, p4}, Lcom/ebay/android/widget/EbayTextInputEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    :cond_2
    const-string v0, "com.ebay.android.widget.SingleLineEditText"

    .line 56
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    new-instance p1, Lcom/ebay/android/widget/SingleLineEditText;

    invoke-direct {p1, p3, p4}, Lcom/ebay/android/widget/SingleLineEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    :cond_3
    const-string v0, "TextView"

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "androidx.appcompat.widget.AppCompatTextView"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, "Button"

    .line 60
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "androidx.appcompat.widget.AppCompatButton"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/ebay/mobile/activities/CoreLayoutInflater;->delegate:Landroidx/appcompat/app/AppCompatDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegate;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    .line 61
    :cond_6
    :goto_0
    new-instance p1, Lcom/ebay/android/widget/EbayButton;

    invoke-direct {p1, p3, p4}, Lcom/ebay/android/widget/EbayButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 59
    :cond_7
    :goto_1
    new-instance p1, Lcom/ebay/android/widget/EbayTextView;

    invoke-direct {p1, p3, p4}, Lcom/ebay/android/widget/EbayTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_3

    .line 51
    :cond_8
    :goto_2
    new-instance p1, Lcom/ebay/android/widget/AplsTrackingWebView;

    invoke-direct {p1, p3, p4}, Lcom/ebay/android/widget/AplsTrackingWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_3
    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ebay/mobile/activities/CoreLayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
