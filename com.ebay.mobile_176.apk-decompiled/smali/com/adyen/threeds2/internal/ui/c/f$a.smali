.class final Lcom/adyen/threeds2/internal/ui/c/f$a;
.super Lcom/adyen/threeds2/internal/ui/c/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/ui/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/ui/c/f;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/ui/c/f;Landroid/view/View;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$a;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/c/f$e;-><init>(Lcom/adyen/threeds2/internal/ui/c/f;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 322
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/p;

    if-eqz p2, :cond_0

    .line 325
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$a;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$a;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->b(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 317
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$a;->d:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f$a;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
