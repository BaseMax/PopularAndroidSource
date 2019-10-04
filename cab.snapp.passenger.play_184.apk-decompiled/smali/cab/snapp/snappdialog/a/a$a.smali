.class public final Lcab/snapp/snappdialog/a/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/a/a;

.field private b:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Lcab/snapp/snappdialog/a/a;Landroid/view/View;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcab/snapp/snappdialog/a/a$a;->a:Lcab/snapp/snappdialog/a/a;

    .line 104
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 105
    sget p1, Lcab/snapp/snappdialog/a$e;->title_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/snappdialog/a/a$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/a/a$a;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 90
    iget-object p0, p0, Lcab/snapp/snappdialog/a/a$a;->b:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method
