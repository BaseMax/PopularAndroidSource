.class final Lcab/snapp/snappdialog/a/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappdialog/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/snappdialog/a/b;

.field private b:Landroid/view/View;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Lcab/snapp/snappdialog/a/b;Landroid/view/View;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcab/snapp/snappdialog/a/b$a;->a:Lcab/snapp/snappdialog/a/b;

    .line 252
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 253
    iput-object p2, p0, Lcab/snapp/snappdialog/a/b$a;->b:Landroid/view/View;

    .line 254
    sget p1, Lcab/snapp/snappdialog/a$e;->title_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lcab/snapp/snappdialog/a/b$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 255
    sget p1, Lcab/snapp/snappdialog/a$e;->checkbox_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcab/snapp/snappdialog/a/b$a;->d:Landroid/widget/CheckBox;

    return-void
.end method

.method synthetic constructor <init>(Lcab/snapp/snappdialog/a/b;Landroid/view/View;B)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappdialog/a/b$a;-><init>(Lcab/snapp/snappdialog/a/b;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcab/snapp/snappdialog/a/b$a;)Landroidx/appcompat/widget/AppCompatTextView;
    .locals 0

    .line 228
    iget-object p0, p0, Lcab/snapp/snappdialog/a/b$a;->c:Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/snappdialog/a/b$a;)Landroid/widget/CheckBox;
    .locals 0

    .line 228
    iget-object p0, p0, Lcab/snapp/snappdialog/a/b$a;->d:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/snappdialog/a/b$a;)Landroid/view/View;
    .locals 0

    .line 228
    iget-object p0, p0, Lcab/snapp/snappdialog/a/b$a;->b:Landroid/view/View;

    return-object p0
.end method
