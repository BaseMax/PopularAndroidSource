.class public final Lcab/snapp/passenger/units/snapp_services/a;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 29
    iput-object p2, p0, Lcab/snapp/passenger/units/snapp_services/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/units/snapp_services/a;->a:Ljava/util/List;

    .line 38
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;

    .line 37
    invoke-static {p1}, Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;->newInstance(Lcab/snapp/passenger/units/snapp_services/SnappJekDialogData;)Lcab/snapp/passenger/units/snapp_services/SnappJekChildFragment;

    move-result-object p1

    return-object p1
.end method
