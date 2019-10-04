.class public final Lcab/snapp/passenger/a/n$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/appcompat/widget/AppCompatTextView;

.field b:Landroid/widget/ImageView;

.field final synthetic c:Lcab/snapp/passenger/a/n;

.field private d:Landroid/view/View;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/a/n;Landroid/view/View;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcab/snapp/passenger/a/n$c;->c:Lcab/snapp/passenger/a/n;

    .line 263
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 264
    iput-object p2, p0, Lcab/snapp/passenger/a/n$c;->d:Landroid/view/View;

    const p1, 0x7f0a02dc

    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/n$c;->a:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a02db

    .line 266
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcab/snapp/passenger/a/n$c;->b:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/a/n$c;)Landroid/view/View;
    .locals 0

    .line 241
    iget-object p0, p0, Lcab/snapp/passenger/a/n$c;->d:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method final a(I)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcab/snapp/passenger/a/n$c;->a:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setText(I)V

    .line 303
    iget-object p1, p0, Lcab/snapp/passenger/a/n$c;->b:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
