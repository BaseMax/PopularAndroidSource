.class public final Lcab/snapp/passenger/a/b$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field protected a:Landroid/view/View;

.field protected b:Landroidx/appcompat/widget/AppCompatTextView;

.field protected c:Landroidx/appcompat/widget/AppCompatTextView;

.field protected d:Landroidx/appcompat/widget/AppCompatImageView;

.field protected e:Landroidx/appcompat/widget/AppCompatTextView;

.field protected f:Landroidx/appcompat/widget/AppCompatTextView;

.field protected g:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 236
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00d0

    .line 237
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/a/b$c;->a:Landroid/view/View;

    const v0, 0x7f0a00d1

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lcab/snapp/passenger/a/b$c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    const v0, 0x7f0a00cd

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/passenger/a/b$c;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a00ce

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/passenger/a/b$c;->e:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a00cf

    .line 241
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/passenger/a/b$c;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a00d3

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object v0, p0, Lcab/snapp/passenger/a/b$c;->f:Landroidx/appcompat/widget/AppCompatTextView;

    const v0, 0x7f0a00d2

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/b$c;->g:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
