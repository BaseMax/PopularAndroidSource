.class final Lcom/adyen/threeds2/internal/ui/c/f$d;
.super Lcom/adyen/threeds2/internal/ui/c/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/ui/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/adyen/threeds2/internal/ui/c/f;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/ui/c/f;Landroid/view/View;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/adyen/threeds2/internal/ui/c/f$e;-><init>(Lcom/adyen/threeds2/internal/ui/c/f;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 297
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adyen/threeds2/internal/a/a/b/p;

    .line 298
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/ui/c/f;->b()V

    .line 299
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->a(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    .line 300
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {p2}, Lcom/adyen/threeds2/internal/ui/c/f;->c()V

    .line 301
    iget-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->a:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {p2, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->d(Lcom/adyen/threeds2/internal/a/a/b/p;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 289
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->d:Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$d;->d:Landroid/widget/CompoundButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method
