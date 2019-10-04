.class abstract Lcom/adyen/threeds2/internal/ui/c/f$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adyen/threeds2/internal/ui/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "e"
.end annotation


# instance fields
.field final b:Landroid/view/View;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/widget/CompoundButton;

.field final synthetic e:Lcom/adyen/threeds2/internal/ui/c/f;


# direct methods
.method constructor <init>(Lcom/adyen/threeds2/internal/ui/c/f;Landroid/view/View;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->e:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->b:Landroid/view/View;

    .line 263
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    sget p1, Lcom/adyen/threeds2/R$id;->textView_value:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->c:Landroid/widget/TextView;

    .line 267
    sget p1, Lcom/adyen/threeds2/R$id;->checkBox_selected:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CompoundButton;

    iput-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->d:Landroid/widget/CompoundButton;

    .line 268
    iget-object p1, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->d:Landroid/widget/CompoundButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method a(Lcom/adyen/threeds2/internal/a/a/b/p;)V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/adyen/threeds2/internal/a/a/b/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->d:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->d:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/adyen/threeds2/internal/ui/c/f$e;->e:Lcom/adyen/threeds2/internal/ui/c/f;

    invoke-virtual {v1, p1}, Lcom/adyen/threeds2/internal/ui/c/f;->c(Lcom/adyen/threeds2/internal/a/a/b/p;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
