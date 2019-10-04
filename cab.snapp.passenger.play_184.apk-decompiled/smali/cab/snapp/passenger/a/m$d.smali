.class public final Lcab/snapp/passenger/a/m$d;
.super Lcab/snapp/passenger/a/m$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field d:Landroid/widget/LinearLayout;

.field final synthetic e:Lcab/snapp/passenger/a/m;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcab/snapp/passenger/a/m$d;->e:Lcab/snapp/passenger/a/m;

    .line 407
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/m$f;-><init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V

    const p1, 0x7f0a02ae

    .line 408
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$d;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a02b0

    .line 409
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$d;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a02b1

    .line 410
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$d;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a02ad

    .line 411
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$d;->d:Landroid/widget/LinearLayout;

    return-void
.end method
