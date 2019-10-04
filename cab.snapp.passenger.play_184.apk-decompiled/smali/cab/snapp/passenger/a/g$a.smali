.class public final Lcab/snapp/passenger/a/g$a;
.super Lcab/snapp/passenger/a/g$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroidx/appcompat/widget/AppCompatTextView;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic d:Lcab/snapp/passenger/a/g;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcab/snapp/passenger/a/g$a;->d:Lcab/snapp/passenger/a/g;

    .line 521
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/a/g$e;-><init>(Lcab/snapp/passenger/a/g;Landroid/view/View;)V

    .line 522
    iput-object p2, p0, Lcab/snapp/passenger/a/g$a;->a:Landroid/view/View;

    const p1, 0x7f0a0162

    .line 523
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/g$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a015f

    .line 524
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/g$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
