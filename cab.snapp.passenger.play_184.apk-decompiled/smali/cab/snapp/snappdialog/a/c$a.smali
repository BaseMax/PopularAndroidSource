.class final Lcab/snapp/snappdialog/a/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/a/c;

.field private b:Landroid/view/View;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Lcab/snapp/snappdialog/a/c;Landroid/view/View;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcab/snapp/snappdialog/a/c$a;->a:Lcab/snapp/snappdialog/a/c;

    .line 225
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 226
    iput-object p2, p0, Lcab/snapp/snappdialog/a/c$a;->b:Landroid/view/View;

    .line 227
    sget p1, Lcab/snapp/snappdialog/a$e;->title_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/snappdialog/a/c$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    sget p1, Lcab/snapp/snappdialog/a$e;->radio_button_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcab/snapp/snappdialog/a/c$a;->d:Landroid/widget/RadioButton;

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/a/c$a;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 201
    iget-object p0, p0, Lcab/snapp/snappdialog/a/c$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/snappdialog/a/c$a;)Landroid/widget/RadioButton;
    .locals 0

    .line 201
    iget-object p0, p0, Lcab/snapp/snappdialog/a/c$a;->d:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/snappdialog/a/c$a;)Landroid/view/View;
    .locals 0

    .line 201
    iget-object p0, p0, Lcab/snapp/snappdialog/a/c$a;->b:Landroid/view/View;

    return-object p0
.end method
