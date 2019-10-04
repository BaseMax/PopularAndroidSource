.class public final Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/Button;

.field private c:Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    sget p2, Lcom/adyen/threeds2/R$layout;->a3ds2_widget_toolbar:I

    invoke-static {p1, p2, p0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 57
    sget p2, Lcom/adyen/threeds2/R$id;->textView_title:I

    invoke-virtual {p0, p2}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->a:Landroid/widget/TextView;

    .line 58
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    sget p1, Lcom/adyen/threeds2/R$id;->button_cancel:I

    invoke-virtual {p0, p1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    .line 61
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->c:Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->c:Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;

    invoke-interface {p1}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;->a()V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setCancelButtonBackgroundColor(I)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundColor(I)V

    return-void
.end method

.method public setCancelButtonText(Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCancelButtonTextColor(I)V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public setCancelButtonTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleFontSize(Ljava/lang/Integer;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setToolbarListener(Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/widget/ToolbarView;->c:Lcom/adyen/threeds2/internal/ui/widget/ToolbarView$a;

    return-void
.end method
