.class public final Lcab/snapp/passenger/units/referral/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcab/snapp/passenger/units/referral/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcab/snapp/passenger/units/referral/a/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcab/snapp/passenger/units/referral/b/a;

.field private c:Landroid/content/Context;

.field private d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/referral/b/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/units/referral/b/a;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    iput-object p1, p0, Lcab/snapp/passenger/units/referral/a/a;->b:Lcab/snapp/passenger/units/referral/b/a;

    .line 55
    iput-object p2, p0, Lcab/snapp/passenger/units/referral/a/a;->a:Ljava/util/List;

    return-void
.end method

.method private synthetic a(Landroid/content/pm/ResolveInfo;Landroid/view/View;)V
    .locals 0

    .line 83
    iget-object p2, p0, Lcab/snapp/passenger/units/referral/a/a;->b:Lcab/snapp/passenger/units/referral/b/a;

    invoke-interface {p2, p1}, Lcab/snapp/passenger/units/referral/b/a;->shareAppsClicked(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public static synthetic lambda$lMWfhd_GE0yPUWwqyiUEuEz5NXY(Lcab/snapp/passenger/units/referral/a/a;Landroid/content/pm/ResolveInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/referral/a/a;->a(Landroid/content/pm/ResolveInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcab/snapp/passenger/units/referral/a/a$a;

    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/referral/a/a;->onBindViewHolder(Lcab/snapp/passenger/units/referral/a/a$a;I)V

    return-void
.end method

.method public final onBindViewHolder(Lcab/snapp/passenger/units/referral/a/a$a;I)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    if-nez p2, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p1, Lcab/snapp/passenger/units/referral/a/a$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcab/snapp/passenger/units/referral/a/a;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p1, Lcab/snapp/passenger/units/referral/a/a$a;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcab/snapp/passenger/units/referral/a/a;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    iget-object p1, p1, Lcab/snapp/passenger/units/referral/a/a$a;->b:Landroid/widget/ImageView;

    new-instance v0, Lcab/snapp/passenger/units/referral/a/-$$Lambda$a$lMWfhd_GE0yPUWwqyiUEuEz5NXY;

    invoke-direct {v0, p0, p2}, Lcab/snapp/passenger/units/referral/a/-$$Lambda$a$lMWfhd_GE0yPUWwqyiUEuEz5NXY;-><init>(Lcab/snapp/passenger/units/referral/a/a;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcab/snapp/passenger/units/referral/a/a;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/referral/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Lcab/snapp/passenger/units/referral/a/a$a;
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/units/referral/a/a;->c:Landroid/content/Context;

    .line 65
    iget-object p2, p0, Lcab/snapp/passenger/units/referral/a/a;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcab/snapp/passenger/units/referral/a/a;->d:Landroid/content/pm/PackageManager;

    .line 66
    iget-object p2, p0, Lcab/snapp/passenger/units/referral/a/a;->c:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0054

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcab/snapp/passenger/units/referral/a/a$a;

    invoke-direct {p2, p1}, Lcab/snapp/passenger/units/referral/a/a$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method
