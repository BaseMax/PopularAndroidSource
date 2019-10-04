.class public final Lcab/snapp/passenger/a/g$b;
.super Lcab/snapp/passenger/a/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroidx/appcompat/widget/AppCompatTextView;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field d:Landroid/widget/ImageView;

.field e:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic f:Lcab/snapp/passenger/a/g;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcab/snapp/passenger/a/g$b;->f:Lcab/snapp/passenger/a/g;

    .line 454
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/g$e;-><init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V

    .line 455
    iput-object p2, p0, Lcab/snapp/passenger/a/g$b;->a:Landroid/view/View;

    const p1, 0x7f0a0166

    .line 456
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/g$b;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a0163

    .line 457
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/g$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a0167

    .line 458
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/g$b;->d:Landroid/widget/ImageView;

    const p1, 0x7f0a0164

    .line 459
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/g$b;->e:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
