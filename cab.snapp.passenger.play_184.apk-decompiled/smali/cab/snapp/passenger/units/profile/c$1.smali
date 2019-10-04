.class final Lcab/snapp/passenger/units/profile/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/snappdialog/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/units/profile/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/passenger/units/profile/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/profile/c;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/c$1;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSingleItemSelected(ILjava/lang/String;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/c$1;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-static {p1}, Lcab/snapp/passenger/units/profile/c;->a(Lcab/snapp/passenger/units/profile/c;)Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/ProfileView;

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 71
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/c$1;->a:Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/ProfileView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcab/snapp/passenger/f/c;->getCodeFromString(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcab/snapp/passenger/units/profile/c;->f:I

    :cond_1
    return-void
.end method
