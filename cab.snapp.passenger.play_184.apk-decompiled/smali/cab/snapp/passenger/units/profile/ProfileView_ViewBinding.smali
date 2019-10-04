.class public Lcab/snapp/passenger/units/profile/ProfileView_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcab/snapp/passenger/units/profile/ProfileView;


# direct methods
.method public constructor <init>(Lcab/snapp/passenger/units/profile/ProfileView;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p1}, Lcab/snapp/passenger/units/profile/ProfileView_ViewBinding;-><init>(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcab/snapp/passenger/units/profile/ProfileView;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/ProfileView_ViewBinding;->target:Lcab/snapp/passenger/units/profile/ProfileView;

    .line 26
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0240

    const-string v2, "field \'nameEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 27
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a023e

    const-string v2, "field \'emailEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 28
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a023c

    const-string v2, "field \'addressEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/profile/ProfileView;->addressEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 29
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a023d

    const-string v2, "field \'birthdayEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/profile/ProfileView;->birthdayEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 30
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a023f

    const-string v2, "field \'genderEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/snappuikit/SnappEditText;

    iput-object v0, p1, Lcab/snapp/passenger/units/profile/ProfileView;->genderEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 31
    const-class v0, Lcab/snapp/snappuikit/SnappEditText;

    const v1, 0x7f0a0241

    const-string v2, "field \'phoneEditText\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcab/snapp/snappuikit/SnappEditText;

    iput-object p2, p1, Lcab/snapp/passenger/units/profile/ProfileView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/ProfileView_ViewBinding;->target:Lcab/snapp/passenger/units/profile/ProfileView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcab/snapp/passenger/units/profile/ProfileView_ViewBinding;->target:Lcab/snapp/passenger/units/profile/ProfileView;

    .line 41
    iput-object v1, v0, Lcab/snapp/passenger/units/profile/ProfileView;->nameEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 42
    iput-object v1, v0, Lcab/snapp/passenger/units/profile/ProfileView;->emailEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 43
    iput-object v1, v0, Lcab/snapp/passenger/units/profile/ProfileView;->addressEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 44
    iput-object v1, v0, Lcab/snapp/passenger/units/profile/ProfileView;->birthdayEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 45
    iput-object v1, v0, Lcab/snapp/passenger/units/profile/ProfileView;->genderEditText:Lcab/snapp/snappuikit/SnappEditText;

    .line 46
    iput-object v1, v0, Lcab/snapp/passenger/units/profile/ProfileView;->phoneEditText:Lcab/snapp/snappuikit/SnappEditText;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
