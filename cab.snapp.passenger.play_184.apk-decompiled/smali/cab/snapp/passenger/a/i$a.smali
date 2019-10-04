.class public final Lcab/snapp/passenger/a/i$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroidx/appcompat/widget/AppCompatTextView;

.field c:Landroidx/appcompat/widget/AppCompatTextView;

.field final synthetic d:Lcab/snapp/passenger/a/i;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/a/i;Landroid/view/View;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcab/snapp/passenger/a/i$a;->d:Lcab/snapp/passenger/a/i;

    .line 187
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 188
    iput-object p2, p0, Lcab/snapp/passenger/a/i$a;->a:Landroid/view/View;

    const p1, 0x7f0a0285

    .line 189
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/i$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    const p1, 0x7f0a0284

    .line 190
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/passenger/a/i$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method
