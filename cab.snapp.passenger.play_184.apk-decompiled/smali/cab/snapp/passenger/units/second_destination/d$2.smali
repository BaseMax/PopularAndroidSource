.class final Lcab/snapp/passenger/units/second_destination/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/second_destination/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/second_destination/d;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/second_destination/d;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$2;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d$2;->a:Lcab/snapp/passenger/units/second_destination/d;

    invoke-static {p1}, Lcab/snapp/passenger/units/second_destination/d;->b(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/b;->reportPopUpLocationNegativeButtonClickedToAppMetrica()V

    return-void
.end method
