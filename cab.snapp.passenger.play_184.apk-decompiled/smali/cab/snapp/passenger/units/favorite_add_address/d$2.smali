.class final Lcab/snapp/passenger/units/favorite_add_address/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/favorite_add_address/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/favorite_add_address/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/favorite_add_address/d;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/d$2;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/d$2;->a:Lcab/snapp/passenger/units/favorite_add_address/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/favorite_add_address/d;->b(Lcab/snapp/passenger/units/favorite_add_address/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->reportPopUpLocationNegativeButtonClickedToAppMetrica()V

    return-void
.end method
