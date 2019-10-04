.class public final Lcab/snapp/passenger/a/m$b;
.super Lcab/snapp/passenger/a/m$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic d:Lcab/snapp/passenger/a/m;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcab/snapp/passenger/a/m$b;->d:Lcab/snapp/passenger/a/m;

    .line 440
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/m$f;-><init>(Lcab/snapp/passenger/a/m;Landroid/view/View;)V

    const p1, 0x7f0a02ae

    .line 441
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$b;->a:Landroid/widget/ImageView;

    const p1, 0x7f0a02b0

    .line 442
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$b;->b:Landroid/widget/ImageView;

    const p1, 0x7f0a02b1

    .line 443
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/m$b;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
